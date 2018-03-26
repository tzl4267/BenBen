/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.CarBrand;
//汽车品牌service接口
public interface CarBrandService extends ServiceBase<CarBrand>{
     List<CarBrand> find();
}
