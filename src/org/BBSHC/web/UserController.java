package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String login(String uname,String upass,HttpServletRequest rq,ModelMap mm){
		User user = us.selectone(uname,upass);
		HttpSession session = rq.getSession();
		String msg = "";
		if (user !=null&&uname !=null&&upass !=null) {
			session.setAttribute("user", user);
		}else {
			msg="账号或密码错误！";
			mm.put("msg", msg);
		}
		return "home_page";
	}
}
