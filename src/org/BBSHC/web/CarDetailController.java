package org.BBSHC.web;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;

import org.BBSHC.pojo.BargainRecord;
import org.BBSHC.pojo.Emp;
import org.BBSHC.service.BargainRecordService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.EmpService;
import org.BBSHC.service.PictureService;
import org.BBSHC.service.PictureTypeService;
import org.BBSHC.service.SellIntentionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarDetailController {
	@Resource
	private CarDetailService cds;
	@Resource
	private SellIntentionService sls;
	@Resource
	private BargainRecordService brs;
	@Resource
	private PictureService ps;
	@Resource
	private PictureTypeService pts;
	@Resource
	private EmpService es;
	
	@RequestMapping(value="/abcd")
	public String querySecondCar(ModelMap map){		
		map.put("sList", cds.querySecondCar());
		map.put("seList", sls.querySellIntention());
		map.put("ptList", pts.queryPictureType());
		map.put("pList", ps.queryPicture());
		Calendar calen = Calendar.getInstance();
		calen.setTime(new Date());
		calen.add(Calendar.YEAR, -1);
		Date da = calen.getTime();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM");
		String sd = ft.format(da);
		try {
			Date ds = ft.parse(sd);
			map.put("date", ds);
		} catch (ParseException e) {			
			e.printStackTrace();
		}		
		 return "carDetail";
		}
	
	@RequestMapping(value="/insertbrs")
	public String insertBargainRecord(BargainRecord bd){
		brs.insertBargainRecord(bd);
		return "ok";		
	}
	
	@RequestMapping(value="/insertEmp")
	public String insertEmp(Emp emp){
		es.insertEmp(emp);
		return "ok";
	}
}
