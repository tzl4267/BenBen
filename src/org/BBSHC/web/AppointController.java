
package org.BBSHC.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.CheckReport;
import org.BBSHC.pojo.City;
import org.BBSHC.pojo.Emp;
import org.BBSHC.pojo.Page;
import org.BBSHC.pojo.ProcedureInfo;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.service.ARService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CheckRService;
import org.BBSHC.service.CityService;
import org.BBSHC.service.EmpService;
import org.BBSHC.service.PIService;
import org.BBSHC.service.SIService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//预约管理
@Controller
@RequestMapping("/app")
public class AppointController {

	//卖车意向信息表service接口
	@Resource
	private SIService sis;
	
	//检测报告service接口
	@Resource
	private CheckRService crs;
	
	//手续信息service接口
	@Resource
	private PIService pis;
	
	//买车约看记录service接口
	@Resource
	private ARService ars;
	
	//员工
	@Resource
	private EmpService es;
	//员工
	@Resource
	private CarDetailService cds;
	
	//城市
	@Resource
	private CityService cs;
	
	
	
	//卖车意向信息查询指定员工的工单
	@RequestMapping("/search_SI")
	public String searchSellIntention(HttpServletRequest rq,ModelMap mm,@RequestParam(value="msg",required =false) String msg,@RequestParam(value="p",required=false) Page p){
		HttpSession session = rq.getSession();
		Emp emp = (Emp) session.getAttribute("emp");
		Page page = new Page();
		if(p!=null){
			int nowpage = p.getNowPage();
			page.setNumber(p.getNumber());
			if(p!=null&&nowpage>1){
				page.setNowPage(nowpage);
			}else{
				page.setNowPage(1);
			}
		}
		int eid = emp.getEid();
		String sql ="select * from SellIntention sr where sr.zt='0' and (sr.seid='"+eid+"' or sr.jeid='"+eid+"')";;
		int count = sis.findCount(sql);
		page.setCount(count);
		List<SellIntention> slist = sis.find(eid,page);
		mm.put("sell", "ok");
		mm.put("slist", slist);
		mm.put("emp", emp);
		return "appoint";
	}
	//卖车意向信息查询
	@RequestMapping("/searchSI")
	public String searchSI(Integer id,Integer eid,ModelMap mm){
		CheckReport cr = crs.getOneBySid(id);
		ProcedureInfo pi = pis.getOneBySid(id);
		SellIntention si = sis.getOne(id);
		City city = cs.getOne(si.getCity().getCsid());
		String selectCY = "select * from secondcar s ,(select max(cy) mc from secondcar where cy like '%"+city.getCqp()+"%') e where e.mc=s.cy;";
		SecondCar secondcar = cds.getone(selectCY);
		String[] bianhao = secondcar.getCy().split("-");
		String cy = bianhao[0]+"-"+(bianhao[1]+1);
			Emp emp = es.update_selectEmp(eid);
			mm.put("si", si);
			mm.put("emp", emp);
			mm.put("pi", pi);
			mm.put("cr", cr);
			mm.put("cy", cy);
		//mm.put("msg", msg);
		return "appoint";
	}
	//添加卖车意向信息
	@RequestMapping("/create_SI")
	public String createSellIntention(SellIntention si,ModelMap mm){
		String msg = sis.add(si);
		mm.put("msg", msg);
		return "";
	}
	//修改卖车意向信息（信息处理状态）
	@RequestMapping("/edit_SI")
	public String editSellIntention(Integer id,ModelMap mm,Character zt,HttpServletRequest rq){
		HttpSession session = rq.getSession();
		Emp emp = (Emp) session.getAttribute("emp");
		SellIntention si = sis.getOne(id);
		si.setZt(zt);
		String msg = sis.modify(si);
		List<SellIntention> slist = sis.find(emp.getEid());
		mm.put("sell", "ok");
		mm.put("slist", slist);
		mm.put("emp", emp);
		mm.put("msg", msg);
		return "appoint";
	}
	//买车约看查询指定员工的工单
	@RequestMapping("/search_ar")
	public String searchAppointRecord(HttpServletRequest request,ModelMap mm,@RequestParam(value="p",required=false) Page p){
		HttpSession session = request.getSession();
		Emp emp =  (Emp) session.getAttribute("emp");
		Page page = new Page();
		if(p!=null){
			int nowpage = p.getNowPage();
			page.setNumber(p.getNumber());
			if(p!=null&&nowpage>1){
				page.setNowPage(nowpage);
			}else{
				page.setNowPage(1);
			}
		}
		String sql = "";
		Integer eid = emp.getEid();
		Integer did = emp.getDept().getDid();
		List<AppointRecord> alist = new ArrayList<>();
		if(did==1){
			sql = "select * from appointrecord ar where ar.cid in (select cid from secondcar sc where sc.czt='1' and sc.seid= '"+eid+"') and ar.asta='0';";
			alist = ars.find(eid,page); 
			page.setCount(ars.findCount(sql));
		}else if(did==2){
			sql ="select * from appointrecord ar where ar.cid in (select cid from secondcar sc where czt='1' and crid in(select crid from checkreport  cr where cr.jeid ='"+eid+"' and cr.hg='1'));";
			alist = ars.jfind(eid,page); 
			page.setCount(ars.findCount(sql));
		}
		mm.put("buy", "ok");
		mm.put("alist", alist);
		mm.put("emp", emp);
		mm.put("page", page);
		return "appoint";
	}
	//添加买车约看记录
	@RequestMapping("/create_ar")
	public String createAppointRecord(AppointRecord ar,ModelMap mm){
		String msg = ars.add(ar);
		mm.put("msg", msg);
		return "";
	}
	//修改买车约看（信息处理状态）
	@RequestMapping("/edit_ar")
	public String editAppointRecord(AppointRecord ar,ModelMap mm){
		String msg = ars.modify(ar);
		mm.put("msg", msg);
		return "";
	}
	//修改检测报告
	@RequestMapping("/edit_cr")
	public String editCheckReport(CheckReport cr,ModelMap mm){
		String msg = crs.modify(cr);
		mm.put("msg", msg);
		return "";
	}
	//添加检测报告
	@RequestMapping("/create_cr")
	public String createCheckReport(CheckReport cr,Integer id,ProcedureInfo pi,ModelMap mm){
		pis.add(pi);
		cr.setHg('1');
		String msg = crs.add(cr);
		SellIntention si = sis.getOne(cr.getSe().getSid());
		si.setZt('1');
		sis.modify(si);
		mm.put("msg", msg);
		return "redirect:search_SI?id="+id;
	}
	//查询检测报告
	@RequestMapping("/search_cr")
	public String searchCheckReport(Integer id,ModelMap mm){
		List<CheckReport> clist = crs.find(id);
		mm.put("clist", clist);
		return "";
	}
	//查询手续信息
	@RequestMapping("/search_pi")
	public String searchProcedureInfo(Integer id,ModelMap mm){
		List<ProcedureInfo> plist = pis.find(id);
		mm.put("plist", plist);
		return "";
	}
	//修改手续信息
	@RequestMapping("/edit_pi")
	public String editProcedureInfo(ProcedureInfo pi,ModelMap mm){
		 String msg = pis.modify(pi);
		mm.put("msg", msg);
		return "";
	}
	//查询未卖汽车信息
	@RequestMapping("/searchSecondCar")
	public String searchSecondCar(HttpServletRequest rq,ModelMap mm,@RequestParam(value="p",required=false) Page p){
		HttpSession session = rq.getSession();
		Page page = new Page();
		if(p!=null){
			int nowpage = p.getNowPage();
			page.setNumber(p.getNumber());
			if(p!=null&&nowpage>1){
				page.setNowPage(nowpage);
			}else{
				page.setNowPage(1);
			}
		}
		Emp emp = (Emp) session.getAttribute("emp");
		String s = "select * from secondcar where czt=1 and seid="+emp.getEid();
		int count = cds.findCount(s);
		page.setCount(count);
		String sql = "select * from secondcar where czt=1 and seid="+emp.getEid();
		List<SecondCar> clist = cds.find(sql);
		mm.put("clist", clist);
		mm.put("page", page);
		return "unsold";
	}
	//查询未卖汽车信息
	@RequestMapping("/searchSecondCarByCondition")
	public String searchSecondCarByCondition(HttpServletRequest rq,ModelMap mm,String str){
		HttpSession session = rq.getSession();
		Page page = new Page(20);
		Emp emp = (Emp) session.getAttribute("emp");
		String sql = "select * from secondcar where czt=1 and seid="+emp.getEid();
		if(str!=null&&!str.equals("")){
			sql = sql +" and cdid in (select cdid from cardesign where cdname like '%"+str+"%' or csid in (select csid from carseries where csname like '%"+str+"%' or cbid in (select cbid from carbrand where cbname like '%"+str+"%')))";
		}
		List<SecondCar> clist = cds.find(sql);
		
		mm.put("clist", clist);
		
		return "unsold";
	}
	
	
}
