package org.BBSHC.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YM {

	@RequestMapping(value = "list")
	public String fn1(){
		
		return "daohang";
		
	}
	

}
