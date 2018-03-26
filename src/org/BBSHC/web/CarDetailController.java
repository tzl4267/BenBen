package org.BBSHC.web;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.BBSHC.pojo.BargainRecord;
import org.BBSHC.pojo.Emp;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.BargainRecordService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.EmpService;
import org.BBSHC.service.PictureService;
import org.BBSHC.service.PictureTypeService;
import org.BBSHC.service.SellIntentionService;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


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

	//添加二手车信息
		@RequestMapping("/createPicture")
	    public String createPicture(HttpServletRequest request,SecondCar sc,
	             MultipartFile mfile,
	           ModelMap mm ) throws Exception {
			 String msg = null;
	       //如果文件不为空，写入上传路径
	       if(!mfile.isEmpty()) {
	           //上传文件路径
	           String path = request.getServletContext().getRealPath("img");
	           //上传文件名
	           String filename = mfile.getOriginalFilename();
	           if(filename.endsWith("jpg")||filename.endsWith("png")){
	           int start = filename.lastIndexOf(".");
	   		String suffix = filename.substring(start);
	   		String purl = path+"img/" + System.currentTimeMillis() + suffix;
	   		sc.setPurl(purl);
	   		FileUtils.copyInputStreamToFile(mfile.getInputStream(), new File(purl));
	   		msg = cds.add(sc);
	           mm.put("msg", msg);
	           return "";
	           }else{
	        	    msg="文件格式不正确，只能上传图片！";
	        	   return "error";
	           }
	           
	       } else {
	           return "error";
	       }
	   }

}
