package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;


import org.BBSHC.service.CarBrandService;

import org.BBSHC.pojo.User;

import org.BBSHC.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/abc")
public class UserController {
	@Resource
	private UserService us;
	
	@RequestMapping("/query")
	public String queryull(ModelMap map){
		List<User> ul = us.queryull();
		map.put("ul", ul);
		return "query";
	}
	@RequestMapping("/login")
	public String login(String uname,String upass){
		String a="";
		User user = us.selectone(uname,upass);
		if (user !=null&&uname !=null&&upass !=null) {
			a="aa";
		}else {
			a="cc";
		}
		return "a";
	}
}
