package org.BBSHC.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.BargainRecord;
import org.BBSHC.pojo.CollectRecord;
import org.BBSHC.pojo.Outstanding;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.pojo.User;
import org.BBSHC.service.ARService;
import org.BBSHC.service.BargainRecordService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CollectRecordService;
import org.BBSHC.service.DeptService;
import org.BBSHC.service.OutstandingService;
import org.BBSHC.service.PictureService;
import org.BBSHC.service.SIService;
import org.BBSHC.service.UserService;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="carDetail")
public class CarDetailController {
	@Resource
	private CarDetailService cds;
	@Resource
	private BargainRecordService brs;
	@Resource
	private PictureService ps;
	@Resource
	private CollectRecordService crs;
	@Resource
	private DeptService ds;
	@Resource
	private OutstandingService oss;
	//卖车意向信息表service接口
	@Resource
	private SIService sis;
	@Resource
	private ARService ars;
	@Resource
	private UserService us;
	
	@RequestMapping(value="/querySecondCar")
	public String querySecondCar(ModelMap map,Integer cid,HttpServletRequest rq,@RequestParam(value="msg",required=false) String msg){	
		String sql="select * from secondcar where cid="+cid;		
		map.put("s", cds.getone(sql));
		map.put("pList", ps.queryPicture());		
		HttpSession session = rq.getSession();
		User user = (User) session.getAttribute("user");
		if(user!=null){
			List<CollectRecord> clist = crs.getCollectRecord(cid, user.getUid());
			if(clist.size()>0){
				map.put("c",clist.get(0));
			}			
		}
		if(msg!=null){
			map.put("msg", msg);
		}
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
	
	@RequestMapping(value="/insertBargainRecord")
	public String insertBargainRecord(BargainRecord bd){
		brs.insertBargainRecord(bd);
		return "redirect:querySecondCar?cid="+bd.getSc().getCid();		
	}
	
	@RequestMapping(value="/insertCollectRecord")
	public String insertCollectRecord(CollectRecord cr){
		crs.insertCollectRecord(cr);
		return "redirect:querySecondCar?cid="+cr.getSc().getCid();		
	}
	
	@RequestMapping(value="/deleteCollectRecord")
	public String deleteCollectRecord(CollectRecord cr){
		CollectRecord collectrecord = crs.getOne(cr.getCrid());
		Integer cid = collectrecord.getSc().getCid();
		crs.deleteCollectRecord(cr);
		return "redirect:querySecondCar?cid="+cid;		
	}
	
	@RequestMapping(value="/insertAppointRecord")
	public String insertAppointRecord(AppointRecord ar){
		Date ardate = new Date();
		ar.setArdate(ardate);
		ars.insertAppointRecord(ar);
		return "redirect:querySecondCar?cid="+ar.getSc().getCid();		
	}	

	//添加二手车信息
		@RequestMapping("/createPicture")
	    public String createPicture(HttpServletRequest request,  SecondCar sc,
	             MultipartFile mfile,  Outstanding os,
	           ModelMap mm ) throws Exception {
			 String msg = null;
			Integer eid = sc.getEmp().getEid();			
	       //如果文件不为空，写入上传路径
	       if(!mfile.isEmpty()) {
	           //上传文件路径
	           String path = request.getServletContext().getRealPath("img");
	           //上传文件名
	           String filename = mfile.getOriginalFilename();
	           if(filename.endsWith("jpg")||filename.endsWith("png")){
	           int start = filename.lastIndexOf(".");
	   		String suffix = filename.substring(start);
	   		String purl = path+"\\" + System.currentTimeMillis() + suffix;
	   		sc.setPurl(purl);
	   		FileUtils.copyInputStreamToFile(mfile.getInputStream(), new File(purl));	   		
	   		oss.add(os);
	   			Integer sid = os.getSe().getSid();
	   			Outstanding ose = oss.getOneBySid(sid);
	   			SellIntention si = sis.getOne(sid);
	   			si.setZt('3');
	   			sis.modify(si);
	   			sc.setOs(ose);
	   			sc.setCzt('1');
	   			msg=cds.add(sc);
	   			if(msg!=null&&!msg.equals("")){
	   			String sql = "select * from secondcar sc where sc.cp='"+sc.getCp()+"' and sc.uid="+sc.getUser().getUid();	
	   			SecondCar scar = cds.getone(sql);
	   			mm.put("cid", scar.getCid());
	   		}
	         
	           }else{
	        	    msg="文件格式不正确，只能上传图片！";	        	  
	           }	           
	       } else {
	          msg="图片上传失败！";
	       }
	       mm.put("msg", msg);
	       return "redirect:app/search_SI?id="+eid;
	   }

		@RequestMapping("/searchSC")
		public String searchSecondCar(Integer sid,ModelMap mm){
			String sql = "select * from secondcar where crid=(select crid from checkreport where sid="+sid+")";
			SecondCar scar = cds.getone(sql);
			mm.put("cid", scar.getCid());
			return "appoint";
		}
		
		@RequestMapping("/login")
		public String login(User u,HttpServletRequest rq,Integer cid){
			User user = us.selectone(u.getUname(),u.getUpass());
			HttpSession session = rq.getSession();
			String msg = "";
			if (user !=null) {
				session.setAttribute("user", user);
			}else {
				msg="fail";	 			
			}
			return "redirect:querySecondCar?msg="+msg+"&cid="+cid;
		}
} 
 