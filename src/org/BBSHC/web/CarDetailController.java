package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.CarDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CarDetailController {
	@Resource
	private CarDetailService cds;
	
	@RequestMapping(value="/abcd")
	@ResponseBody
	public List<SecondCar> querySecondCar(){
		 List<SecondCar> list = cds.querySecondCar();
		 System.out.println(list);
		 return list;
		}
}
