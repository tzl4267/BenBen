/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.CarSeries;
//车系service接口
public interface CarSeriesSercice extends ServiceBase<CarSeries>{
  List<CarSeries> find();
  List<CarSeries> find(Integer id);
  CarSeries selectone(String sql);
}
