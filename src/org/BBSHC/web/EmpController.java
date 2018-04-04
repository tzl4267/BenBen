package org.BBSHC.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.BBSHC.pojo.Dept;
import org.BBSHC.pojo.Emp;
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
	public String update_selectEmp(ModelMap map,Integer eid){
		Emp emp = es.update_selectEmp(eid);
		map.put("emp", emp);
		return "selectEmp";
	}
	@RequestMapping("/update_Emp")
	public String update_Emp(Emp emp,HttpServletRequest request,MultipartFile mFile,ModelMap map)throws IOException{
		if (!mFile.isEmpty()) {
			String fileName = mFile.getOriginalFilename();
			int starIndex = fileName.lastIndexOf(".");
			String fileSuffix = fileName.substring(starIndex);
			String filePath = request.getServletContext().getRealPath("images");
			File file = new File(filePath,fileName);
			/*String eurl = filePath+"img/" + System.currentTimeMillis() + fileSuffix;*/
			String eurl = "images/" + fileName;
			emp.setEurl(eurl);
			/*FileUtils.copyInputStreamToFile(mFile.getInputStream(), new File(eurl));*/
		}	
		es.modify(emp, emp.getEid());
		Emp emps = es.update_selectEmp(emp.getEid());
		map.put("emp", emps);
		return "selectEmp";
	}
}
