package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.service.UserService;
import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/abc")
public class UserController {
	@Resource
	private UserService us;
	
	public String queryull(){
		List<User> ul = us.queryull();
		System.out.println(ul);
		return null;
	}
}
