package org.BBSHC.web;


import javax.annotation.Resource;

import org.BBSHC.service.CarDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarDetailController {
	@Resource
	private CarDetailService cds;
	
	@RequestMapping(value="/abcd")
	public String querySecondCar(ModelMap map){		
		map.put("sList", cds.querySecondCar());
		 return "carDetail";
		}
}
