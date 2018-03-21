package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.service.CarBrandService;
import org.BBSHC.service.UserService;
import org.apache.catalina.User;
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
}
