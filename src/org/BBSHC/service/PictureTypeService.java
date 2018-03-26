/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.PictureType;
//图片类型表service接口
public interface PictureTypeService extends ServiceBase<PictureType>{
	List<PictureType>queryPictureType();
}
