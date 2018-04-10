package org.BBSHC.web;

import java.lang.ProcessBuilder.Redirect;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.pojo.BargainRecord;
import org.BBSHC.pojo.CarBrand;
import org.BBSHC.pojo.CarDesign;
import org.BBSHC.pojo.CarSeries;
import org.BBSHC.pojo.Outstanding;
import org.BBSHC.pojo.SY;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.BargainRecordService;
import org.BBSHC.service.CarBrandService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CarSeriesSercice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class CarBrandController {
    
	  @Resource
	 private CarBrandService cbs;
	  
	  @Resource
	  private CarSeriesSercice css;
	  
	  @Resource
	  private CarDetailService cds;
	  
	  @Resource
	  private BargainRecordService brs;
	  

	
	  @RequestMapping("/list")
	  public String find(ModelMap map){
		 List<SecondCar> sc = cds.querySecondCar();
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
		  return "home_page";
	  }
	  @RequestMapping("/list2")
	  public String find2(ModelMap map,Integer id){
		  List<CarSeries> cs = css.find(id);//品牌id查询车系
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
	 @RequestMapping("/list5")
	  public String find5(ModelMap map,Integer eid){
		  	List<BargainRecord> br = brs.find(eid);
		    map.put("br", br);
		    System.out.println(br);
		  return "BargainEmp";
	  }

	 @RequestMapping(value="/list6")
	  public String find8(BargainRecord br){
	
		brs.insertBargainRecord(br);
	
		  return "redirect:list5";
	  }
	 @RequestMapping(value="/list7")
	 public String searchByTJ(SY sy,CarDesign cd,Outstanding ot,ModelMap mm){
		 Calendar calendar = Calendar.getInstance();
		 calendar.setTime(new Date());
		 calendar.add(Calendar.DATE, -3);
		 Date dat = calendar.getTime();
		 long dateCheck = dat.getTime();
		 mm.put("datecheck", dateCheck);
		 String sql ="select * from secondcar where czt = '1' ";
		 double lc1=0,lc2=100;
		 if(sy!=null&&sy.getLc()!=null){
			 switch(sy.getLc()){
			 case 0:lc1= 0;lc2=100;break;
			 case 1:lc1= 0;lc2=1;break;
			 case 2:lc1= 0;lc2=3;break;
			 case 3:lc1= 0;lc2=5;break;
			 case 4:lc1= 0;lc2=8;break;
			 case 5:lc1= 0;lc2=10;break;
			 case 6:lc1= 10;lc2=100;break;
			 }
			 sql = sql +" and lc between "+lc1+" and "+lc2;
		 }
		 Integer jg1=0,jg2=0;
		 if(sy!=null&&sy.getJg()!=null){
			 switch(sy.getJg()){
			 case 0:jg1= 0;jg2=10000;break;
			 case 1:jg1= 0;jg2=3;break;
			 case 2:jg1= 3;jg2=5;break;
			 case 3:jg1= 5;jg2=10;break;
			 case 4:jg1= 10;jg2=15;break;
			 case 5:jg1= 15;jg2=20;break;
			 case 6:jg1= 20;jg2=30;break;
			 case 7:jg1= 30;jg2=60;break;
			 case 8:jg1= 60;jg2=null;break;
			 }
			 sql = sql + " and jg between "+jg1+" and "+jg2;
		 }
		
		 Calendar cl1=Calendar.getInstance(),cl2=Calendar.getInstance();
		 cl1.setTime(new Date());
		 cl2.setTime(new Date());
		 if(sy!=null&&sy.getCl()!=null){
			 switch(sy.getCl()){
			 case 0:cl2.add(Calendar.YEAR,-10);break;
			 case 1:cl2.add(Calendar.YEAR,-1);break;
			 case 2:cl2.add(Calendar.YEAR,-3);break;
			 case 3:cl2.add(Calendar.YEAR,-5);break;
			 case 4:cl2.add(Calendar.YEAR,-8);break;
			 case 5:cl1.add(Calendar.YEAR,-8);cl2.add(Calendar.YEAR,-10);break;
			 }
			 Date dat1 = cl1.getTime();Date dat2 = cl2.getTime();
			 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			 String date1 = df.format(dat1);
			 String date2 = df.format(dat2);
			 sql = sql + " and spsj between '"+date2+"' and '"+date1+"'";
		 }
		 
		 
		 String sql1 = " select csid from carseries where  1=1 ";
		 if(sy!=null){
			 if(sy.getCbgb()==null){
				 if(sy.getCbid()!=null){
					 sql1= sql1+" and cbid ="+sy.getCbid();
					 }
			 }else{
				 sy.setCsid(null);
				 sy.setCbid(null);
				 sql1= sql1+" and cbid in (select cbid from CarBrand where cbgb="+sy.getCbgb()+")";
			 }
			}
		 if(sy!=null&&sy.getCtid()!=null){
			 sql1= sql1+" and ctid ="+sy.getCtid();
		 }
		 
		 String sql2 = " select cdid from cardesign where 1=1 ";
		 if(sy!=null&&sy.getCsid()!=null&&(sy.getCtid()!=null||sy.getCbid()!=null||sy.getCbgb()!=null)){
			 sql2 = sql2+" and (csid = "+sy.getCsid()+" or csid in ("+sql1+"))";
		 }else if(sy!=null&&sy.getCsid()!=null){
			 sql2=sql2+" and csid="+sy.getCsid();
		 }else if(sy.getCtid()!=null||sy.getCbid()!=null||sy.getCbgb()!=null){
			 sql2 = sql2 +" and csid in ("+sql1+")";
		 }
		 if(cd!=null&&cd.getBs()!=null){
			 sql2 = sql2 + " and bs = "+cd.getBs();
		 }
		 if(cd!=null&&cd.getDr()!=null){
			 sql2 = sql2 + " and dr = "+cd.getDr();
		 }
		 if(sy!=null&&sy.getPl()!=null){
			 double pl1=0,pl2=0;
				 switch(sy.getPl()){
				 case 0:pl1= 0;pl2=10;break;
				 case 1:pl1= 0;pl2=1.0;break;
				 case 2:pl1= 1.0;pl2=1.6;break;
				 case 3:pl1= 1.6;pl2=2.0;break;
				 case 4:pl1= 2.0;pl2=3.0;break;
				 case 5:pl1= 3.0;pl2=4.0;break;
				 case 6:pl1= 4.0;pl2=10;break;
				
			 }
			 sql2 = sql2 + " and pl between "+pl1+" and "+pl2;
		 }
		 if(cd!=null&&cd.getPf()!=null){
			 sql2 = sql2 + " and pf = "+cd.getPf();
		 }
		 if(cd!=null&&cd.getFt()!=null){
			 sql2 = sql2 + " and ft = "+cd.getFt();
		 }
		 if(cd!=null&&cd.getZw()!=null){
			 sql2 = sql2 + " and zw = "+cd.getZw();
		 }
		 
		 if(cd!=null&&cd.getCdid()!=null&&(sy.getCsid()!=null||sy.getCtid()!=null||sy.getCbid()!=null||sy.getCbgb()!=null)){
			sql = sql + " and (cdid ='"+cd.getCdid()+"' or cdid in("+sql2+"))";
			 
		 }else if(cd!=null&&cd.getCdid()!=null){
			 sql = sql + " and cdid = "+cd.getCdid();
		 }else if(sy.getCsid()!=null||sy.getCtid()!=null||sy.getCbid()!=null||sy.getCbgb()!=null){
			 sql = sql + " and cdid in ("+sql2+")";
		 }
		 String sql3 = "select oid from outstanding where 1=1 ";
		if(ot!=null&&ot.getYx()!=null){
			sql3 = sql3+ " and yx = "+ot.getYx();
		}
		if(ot!=null&&ot.getQd()!=null){
			sql3 = sql3+ " and qd = "+ot.getQd();
		}
		if(ot!=null&&ot.getTy()!=null){
			sql3 = sql3+ " and ty = "+ot.getTy();
		}
		if(ot!=null&&ot.getWd()!=null){
			sql3 = sql3+ " and wd = "+ot.getWd();
		}
		if(ot!=null&&ot.getJr()!=null){
			sql3 = sql3+ " and jr = "+ot.getJr();
		}
		if(ot!=null&&ot.getXh()!=null){
			sql3 = sql3+ " and xh = "+ot.getXh();
		}
		if(ot!=null&&ot.getGps()!=null){
			sql3 = sql3+ " and gps = "+ot.getGps();
		}
		if(ot!=null&&ot.getLd()!=null){
			sql3 = sql3+ " and ld = "+ot.getLd();
		}
		if(ot!=null&&(ot.getLd()!=null||ot.getGps()!=null||ot.getXh()!=null||ot.getJr()!=null||ot.getWd()!=null||ot.getTy()!=null||ot.getQd()!=null||ot.getYx()!=null)){
			sql = sql +" and oid in ("+ sql3+" )";
		}
		sql = sql +" order by sjsj desc";
		List<SecondCar> clist = cds.find(sql);
		 if(sy!=null){
			 if(sy.getCbid()!=null){
				 List<CarSeries> cs = css.find(sy.getCbid());//品牌id查询车系
				 mm.put("cs", cs);
			 }else{
				 List<CarSeries> cs = css.find();//查询车系
				 mm.put("cs", cs);
			 }
			
		 }
		 List<CarBrand> cb = cbs.find();//汽车品牌
		 mm.put("cb", cb);
		 mm.put("cd", cd);
		 mm.put("ot", ot);
		 mm.put("sc",clist);
		 mm.put("sy",sy);
		 return "home_page";
	 }
	 
	 

}
