
package org.BBSHC.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.CheckReport;
import org.BBSHC.pojo.Emp;
import org.BBSHC.pojo.ProcedureInfo;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.service.ARService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CheckRService;
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
	
	
	//卖车意向信息查询指定员工的工单
	@RequestMapping("/search_SI")
	public String searchSellIntention(Integer id,ModelMap mm,@RequestParam(value="msg",required =false) String msg){
		List<SellIntention> slist = sis.find(id);
		Emp emp = es.update_selectEmp(id);
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
			Emp emp = es.update_selectEmp(eid);
			mm.put("si", si);
			mm.put("emp", emp);
			mm.put("pi", pi);
			mm.put("cr", cr);
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
	public String editSellIntention(Integer id,Integer eid,ModelMap mm,Character zt){
		SellIntention si = sis.getOne(id);
		si.setZt(zt);
		String msg = sis.modify(si);
		List<SellIntention> slist = sis.find(eid);
		Emp emp = es.update_selectEmp(eid);
		mm.put("sell", "ok");
		mm.put("slist", slist);
		mm.put("emp", emp);
		mm.put("msg", msg);
		return "appoint";
	}
	//买车约看查询指定员工的工单
	@RequestMapping("/search_ar")
	public String searchAppointRecord(Integer id,ModelMap mm){
		Emp emp = es.update_selectEmp(id);
		List<AppointRecord> alist = new ArrayList<>();
		if(emp.getDept().getDid()==1){
			alist = ars.find(id); 
		}else if(emp.getDept().getDid()==2){
			alist = ars.jfind(id); 
		}
		mm.put("buy", "ok");
		mm.put("alist", alist);
		mm.put("emp", emp);
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
	public String searchSecondCar(HttpServletRequest rq,ModelMap mm){
		HttpSession session = rq.getSession();
		Emp emp = (Emp) session.getAttribute("emp");
		String sql = "select * from secondcar where czt=1 and seid="+emp.getEid();
		List<SecondCar> clist = cds.find(sql);
		mm.put("clist", clist);
		return "unsold";
	}
	
	
}
