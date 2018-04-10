package org.BBSHC.web;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.CarDesign;
import org.BBSHC.pojo.City;
import org.BBSHC.pojo.Emp;
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
	@Resource
	private EmpService es;
	
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
	
}
