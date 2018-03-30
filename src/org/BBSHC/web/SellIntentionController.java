package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.CarDesign;
import org.BBSHC.pojo.City;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.pojo.User;
import org.BBSHC.service.CarDesignService;
import org.BBSHC.service.CityService;
import org.BBSHC.service.EmpService;
import org.BBSHC.service.SellIntentionService;
import org.BBSHC.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/abc")
//卖车意向
public class SellIntentionController {
	@Resource
	private SellIntentionService ss;
	@Resource
	private UserService us;
	@Resource
	private CityService cs;
	@Resource
	private CarDesignService  cds;
	
	@RequestMapping("/SellIntentionadd")
	public String SellIntentionadd(ModelMap map){
		List<User> ull = us.queryull();
		//查询城市
		List<City> ct = cs.find();
		//查询汽车款式
		List<CarDesign> cdd = cds.find();
		map.put("ull", ull);
		map.put("cdd", cdd);
		map.put("ct",ct);
		return "SellIntention";
	}
	
	@RequestMapping("/SellIntentionadd1")
	public String SellIntentionadd1(SellIntention t){
		ss.add(t);
		return "SellIntentionDui";
	}
	
}
