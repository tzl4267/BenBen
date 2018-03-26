package org.BBSHC.web;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.CarDetailService;
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
	
	@RequestMapping(value="/abcd")
	@ResponseBody
	public List<SecondCar> querySecondCar(){
		 List<SecondCar> list = cds.querySecondCar();
		 System.out.println(list);
		 return list;
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
