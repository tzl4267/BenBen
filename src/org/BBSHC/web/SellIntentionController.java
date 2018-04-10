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
import org.BBSHC.pojo.Emp;
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
	private EmpService es;
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
		String ssql = "select e.* from sellintention s , (select e.* from emp e where eid not in (select seid from sellintention where zt='0' and e.eid = seid) and did=1) e where s.seid= e.eid  group by s.seid order by max(kcsj) desc"; 
		List<Emp> selist = es.find(ssql);
		if(selist==null||selist.size()==0){
			 ssql = "select e.*,s.c from emp e,(select seid ,count(*) c from sellintention where zt='0' group by seid ) s where e.eid=s.seid order by s.c asc";
			selist = es.find(ssql);
		}
		Integer seid = selist.get(0).getEid();
		String jsql = "select e.* from sellintention s , (select e.* from emp e where eid not in (select jeid from sellintention where zt='0' and e.eid = jeid) and did=2) e where s.jeid= e.eid  group by s.jeid order by max(kcsj) desc "; 
		List<Emp> jelist = es.find(jsql);
		if(jelist==null||jelist.size()==0){
			 jsql = "select e.*,s.c from emp e,(select jeid ,count(*) c from sellintention where zt='0' group by jeid ) s where e.eid=s.jeid order by s.c asc";
			jelist = es.find(jsql);
		}
		Integer jeid = jelist.get(0).getEid();
		Emp semp = new Emp();
		Emp jemp = new Emp();
		semp.setEid(seid);
			t.setSe(semp);
			jemp.setEid(jeid);
			t.setJe(jemp);
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
