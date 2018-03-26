package org.BBSHC.web;

import java.io.File;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	public String update_Emp(ModelMap map,Emp emp){
		es.modify(emp, emp.getEid());
		Emp emps = es.update_selectEmp(emp.getEid());
		map.put("emp", emps);
		return "selectEmp";
	}
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	 public String upload(HttpServletRequest request,
	            @RequestParam("description") String description,
	            @RequestParam("file") MultipartFile file) throws Exception {
	        System.out.println(description);
	        //如果文件不为空，写入上传路径
	        if(!file.isEmpty()) {
	            //上传文件路径
	            String path = request.getServletContext().getRealPath("/images/");
	            //上传文件名
	            String filename = file.getOriginalFilename();
	            File filepath = new File(path,filename);
	            //判断路径是否存在，如果不存在就创建一个
	            if (!filepath.getParentFile().exists()) { 
	                filepath.getParentFile().mkdirs();
	            }
	            //将上传文件保存到一个目标文件当中
	            file.transferTo(new File(path + File.separator + filename));
	            
	            return "success";
	        } else {
	            return "error";
	        }

	 }

}
