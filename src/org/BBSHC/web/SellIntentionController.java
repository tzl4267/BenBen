package org.BBSHC.web;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.CarBrand;
import org.BBSHC.pojo.CarDesign;
import org.BBSHC.pojo.CarSeries;
import org.BBSHC.pojo.City;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.pojo.User;
import org.BBSHC.service.CarBrandService;
import org.BBSHC.service.CarDesignService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CarSeriesSercice;
import org.BBSHC.service.CityService;
import org.BBSHC.service.EmpService;
import org.BBSHC.service.SellIntentionService;
import org.BBSHC.service.UserService;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.xml.internal.bind.v2.runtime.Location;

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
	 @Resource
	  private CarDetailService cds1;

	  @Resource
	 private CarBrandService cbs;
	  
	  @Resource
	  private CarSeriesSercice css;
	

	@RequestMapping("/SellIntentionadd")
	public String SellIntentionadd(ModelMap map,HttpServletRequest re){
		//查询城市
		List<City> ct = cs.find();
		//查询汽车款式
		List<CarDesign> cdd = cds.find();
					
		map.put("cdd", cdd);
		map.put("ct",ct);
		return "SellIntention";
	}
	
	@RequestMapping("/SellIntentionadd1")
	public String SellIntentionadd1(SellIntention t){
		ss.add(t);
		return "SellIntentionDui";
	}

	  @RequestMapping("/list")
	  public String find(ModelMap map,@RequestParam(value="msg",required=false)String msg){
		 List<SecondCar> sc = cds1.querySecondCar();
		 List<CarSeries> cs = css.find();//车系
		 List<CarBrand> cb = cbs.find();//汽车品牌
		 Calendar calendar = Calendar.getInstance();
		 calendar.setTime(new Date());
		 calendar.add(Calendar.DATE, -3);
		 Date dat = calendar.getTime();
		 long dateCheck = dat.getTime();
		 map.put("datecheck", dateCheck);
		 map.put("cs", cs);
		 map.put("cb", cb);
		  map.put("sc", sc);
		  System.out.println(sc);
		  System.out.println(cs);
		  System.out.println(cb);
		  if (msg!=null) {
				map.put("msg", msg);
			}	
		  return "home_page";
	  }
	
	@RequestMapping("/login1")
	public String login1(User u,HttpServletRequest rq){
		User user = us.selectone(u.getUname(),u.getUpass());
		HttpSession session = rq.getSession();
		String msg = "";
		if (user!=null) {
			session.setAttribute("user", user);
			return "redirect:/abc/list?msg='"+msg+"&uid="+user.getUid();
		}else{
			msg="fail";
		}
		return "error";
	}
	
}
