package org.BBSHC.web;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.Dept;
import org.BBSHC.pojo.Emp;
import org.BBSHC.service.DeptService;
import org.BBSHC.service.EmpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/abc")
public class EmpController {
	@Resource
	private EmpService es;
	@Resource
	private DeptService ds;
	
	@RequestMapping("/selectEmp")
	public String queryell(ModelMap map){
		List<Emp> el = es.queryel();
		List<Dept> dl = ds.querydl();
		map.put("el", el);
		map.put("dl", dl);
		return "selectEmp";
	}

}
