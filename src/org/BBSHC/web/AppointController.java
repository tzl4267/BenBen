/**
 * 
 */
package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.CheckReport;
import org.BBSHC.pojo.ProcedureInfo;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.service.ARService;
import org.BBSHC.service.CheckRService;
import org.BBSHC.service.PIService;
import org.BBSHC.service.SIService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	//卖车意向信息查询指定员工的工单
	@RequestMapping("/search_SI")
	public String searchSellIntention(Integer id,ModelMap mm){
		List<SellIntention> slist = sis.find(id);
		mm.put("slist", slist);
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
	public String editSellIntention(SellIntention si,ModelMap mm){
		String msg = sis.modify(si);
		mm.put("msg", msg);
		return "";
	}
	//买车约看查询指定员工的工单
	@RequestMapping("/search_ar")
	public String searchAppointRecord(Integer id,ModelMap mm){
		List<AppointRecord> alist = ars.find(id); 
		mm.put("alist", alist);
		return "appoint";
	}
	//添加买车约看记录
	@RequestMapping("/create_ar")
	public String createAppointRecord(AppointRecord ar,ModelMap mm){
		String msg = ars.add(ar);
		mm.put("msg", msg);
		return "";
	}
	//修改卖车意向信息（信息处理状态）
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
	public String createCheckReport(CheckReport cr,ModelMap mm){
		String msg = crs.add(cr);
		mm.put("msg", msg);
		return "";
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
	//查询手续信息
	@RequestMapping("/edit_pi")
	public String editProcedureInfo(ProcedureInfo pi,ModelMap mm){
		 String msg = pis.modify(pi);
		mm.put("msg", msg);
		return "";
	}
	
	
}
