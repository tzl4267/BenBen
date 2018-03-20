/**
 * 
 */
package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.SCService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SCContr {

	@Resource
	private SCService scs;

	@RequestMapping(name = "se")
	public String searchAll(ModelMap mm) {

		List<SecondCar> s = scs.find();
		mm.put("slistaiojianpingt", s);
		return "a";
	}
}
