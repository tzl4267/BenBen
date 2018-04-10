package org.BBSHC.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.Dept;
import org.BBSHC.pojo.Emp;
import org.BBSHC.pojo.User;
import org.BBSHC.service.DeptService;
import org.BBSHC.service.EmpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/abc")
public class EmpController {
	@Resource
	private EmpService es;
	@Resource
	private DeptService ds;
	//员工表按id查询
	@RequestMapping("/update_selectEmp")
	public String update_selectEmp(ModelMap map,HttpServletRequest request){
		HttpSession session = request.getSession();
		Emp emp =  (Emp) session.getAttribute("emp");
		map.put("emp", emp);
		return "selectEmp";
	}
	@RequestMapping("/update_Emp")
	public String update_Emp(Emp emp,HttpServletRequest request,MultipartFile mFile,ModelMap map)throws IOException{
		if (!mFile.isEmpty()) {
			String fileName = mFile.getOriginalFilename();
			int starIndex = fileName.lastIndexOf(".");
			String fileSuffix = fileName.substring(starIndex);
			String filePath = request.getServletContext().getRealPath("image");
			File file = new File(filePath,fileName);
			/*String eurl = filePath+"img/" + System.currentTimeMillis() + fileSuffix;*/
			String eurl = "image/" + fileName;
			emp.setEurl(eurl);
			/*FileUtils.copyInputStreamToFile(mFile.getInputStream(), new File(eurl));*/
		}	
		es.modify(emp, emp.getEid());
		Emp emps = es.update_selectEmp(emp.getEid());
		map.put("emp", emps);
		return "selectEmp";
	}
	@RequestMapping("/backstageLogin")
	public String login(){
		return "backstage";
	}
	@RequestMapping("/LoginCheck")
	public String loginCheck(String ename,String pass,HttpServletRequest request){
		String sql = "select * from emp where ename='"+ename+"' and pass='"+pass+"'";
		Emp emp = es.Login(sql);
		if(emp!=null){
			HttpSession session = request.getSession();
			session.setAttribute("emp", emp);
			return "redirect:/app/search_ar";
		}
		
		return "backstage";
	}
	
}
