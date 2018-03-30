package org.BBSHC.web;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.BrowseHistory;
import org.BBSHC.pojo.BuyRecord;
import org.BBSHC.pojo.CollectRecord;
import org.BBSHC.pojo.Picture;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.SellRecord;
import org.BBSHC.pojo.User;
import org.BBSHC.pojo.Vocation;
import org.BBSHC.service.ARService;
import org.BBSHC.service.BrowseHistoryService;
import org.BBSHC.service.BuyRecordService;
import org.BBSHC.service.CarDetailService;
import org.BBSHC.service.CollectRecordService;
import org.BBSHC.service.PictureService;
import org.BBSHC.service.SellRecordService;

import org.BBSHC.service.CarBrandService;


import org.BBSHC.service.UserService;
import org.BBSHC.service.VocationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/abc")
public class UserController {
	@Resource
	private UserService us;
	@Resource
	private VocationService vs;
	@Resource
	private BrowseHistoryService bhs;
	@Resource
	private PictureService ps;
	@Resource
	private BuyRecordService brs;
	@Resource
	private SellRecordService srs;
	@Resource
	private CollectRecordService crs;
	@Resource
	private ARService ars;
	@Resource
	private CarDetailService cds;
	//用户表 按id查询  返回单个对象
	@RequestMapping("/update_select")
	public String update_select(Integer cid,Integer uid,ModelMap map){
		User user2 = us.update_select(uid);
		List<Vocation> vl = vs.find();
		//历史浏览记录
		 List<BrowseHistory> bh = bhs.find(uid);
		 //买车记录
		 List<BuyRecord> brd = brs.find(uid);
		 //卖车记录
		 List<SellRecord> sr = srs.find(uid);
		 //收藏记录
		 List<CollectRecord> cr = crs.find(uid);
		 //约看记录
		List<AppointRecord> ar = ars.find1(uid);
		//待卖车辆
		List<SecondCar> cd = cds.find(uid);
		//待买车辆修改之前的查询
		SecondCar sec = cds.update_selectSecondCar(cid);
		 map.put("sec", sec);
		 map.put("cd", cd);
		 map.put("ar", ar);
		 map.put("cr", cr);
		 map.put("sr", sr);
		 map.put("brd",brd);
		map.put("bh", bh);
		map.put("vl", vl);
		map.put("user2", user2);
		return "update_selectUser";
	}
	//用户表的修改方法
	@RequestMapping("/updatea")
	public String updatea(User user,Integer uid){
		us.modify(user, uid);
		return "redirect:update_select?uid="+uid;
	}
	
	//上传
	@RequestMapping(value="/upload1",method=RequestMethod.POST)
	 public String upload(HttpServletRequest request,
	            @RequestParam("description") String description,
	            @RequestParam("file") MultipartFile file) throws Exception {
	        System.out.println(description);
	        //如果文件不为空，写入上传路径
	        if(!file.isEmpty()) {
	            //上传文件路径
	            String path = request.getServletContext().getRealPath("/image/");
	            //上传文件名
	            String filename = file.getOriginalFilename();
	            File filepath = new File(path,filename);
	            //判断路径是否存在，如果不存在就创建一个
	            if (!filepath.getParentFile().exists()) { 
	                filepath.getParentFile().mkdirs();
	            }
	            //将上传文件保存到一个目标文件当中
	            file.transferTo(new File(path + File.separator + filename));
	            
	            return "success";
	        } else {
	            return "error";
	        }

	 }
	@RequestMapping("/login")
	public String login(String uname,String upass,HttpServletRequest rq,ModelMap mm){
		User user = us.selectone(uname,upass);
		HttpSession session = rq.getSession();
		String msg = "";
		if (user !=null&&uname !=null&&upass !=null) {
			session.setAttribute("user", user);
		}else {
			msg="账号或密码错误！";
			mm.put("msg", msg);
		}
		return "home_page";
	}
}
