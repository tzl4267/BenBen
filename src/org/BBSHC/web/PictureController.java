/**
 * 
 */
package org.BBSHC.web;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.BBSHC.pojo.Picture;
import org.BBSHC.pojo.PictureType;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.TypeInfo;
import org.BBSHC.service.PictureService;
import org.BBSHC.service.PictureTypeService;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

//图片处理
@Controller
@RequestMapping("pict")
public class PictureController {

	//图片类别
	@Resource
	private PictureTypeService pts;
	
	//图片
	@Resource
	private PictureService ps;
	
	//根据二手车id查询图片
	public String searchPicture(Integer id,ModelMap mm){
		List<Picture> plist = ps.find(id);
		mm.put("plist", plist);
		return "";
	}

	//添加图片
	@RequestMapping("/createPictures")
	public String createPictures(HttpServletRequest request,String[] pinfo,Picture pe,
			@RequestParam("mfile") MultipartFile[] mfile,
			ModelMap mm ) throws Exception {
		String msg = null;
		int i=0;
		TypeInfo ti = new TypeInfo();
		for (MultipartFile file : mfile) {
			i++;
			Picture p = new Picture();
			//如果文件不为空，写入上传路径
			if(!file.isEmpty()) {
				//上传文件路径
				String path = request.getServletContext().getRealPath("img");
				//上传文件名
				String filename = file.getOriginalFilename();
				if(filename.endsWith("jpg")||filename.endsWith("png")){
					int start = filename.lastIndexOf(".");
					String suffix = filename.substring(start);
					String purl = path+"\\" + System.currentTimeMillis() + suffix;
					p.setPinfo(pinfo[i-1]);
					ti.setTid(i);
					p.setTinfo(ti);
					p.setPurl(purl);
					ps.add(p);
					FileUtils.copyInputStreamToFile(file.getInputStream(), new File(purl));
				}else{
					msg="文件格式不正确，只能上传图片！";
					mm.put("msg", msg);
					return "error";
				}
				
			}
		}
		return "redirect:/app/search_SI";
		
	}
}
