package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.CarBrand;
import org.BBSHC.pojo.CarSeries;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.CarBrandService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CarSeriesSercice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/home")
public class CarBrandController {
    
	  @Resource
	 private CarBrandService cbs;
	  
	  @Resource
	  private CarSeriesSercice css;
	  
	  @Resource
	  private CarDetailService cds;
	  

	  @RequestMapping("/list")
	  public String find(ModelMap map){
		 List<SecondCar> sc = cds.querySecondCar();
		 List<CarSeries> cs = css.find();
		 List<CarBrand> cb = cbs.find();
		 map.put("cs", cs);
		 map.put("cb", cb);
		  map.put("sc", sc);
		  System.out.println(sc);
		  System.out.println(cs);
		  System.out.println(cb);
		  return "home_page";
	  }
	  @RequestMapping("/list2")
	  public String find2(ModelMap map,Integer id){
		  List<CarSeries> cs = css.find(id);
		  List<CarBrand> cb = cbs.find();
		  List<SecondCar> sc = cds.querySecondCar();
		  map.put("sc", sc);
		  map.put("cs", cs);
		  map.put("cb", cb);
		  return "home_page";
	  }
	  @RequestMapping("/list3")
	  public String find3(ModelMap map){
		  
		  return "home_page";
	  }
	  @RequestMapping("/list4")
	  public String find4(ModelMap map){
		  
		  return "home_page";
	  }
}
