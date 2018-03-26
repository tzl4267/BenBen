/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Picture;
//汽车图片service接口
public interface PictureService extends ServiceBase<Picture>{
	List<Picture> queryPicture();
}
