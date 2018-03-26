package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.SecondCar;
//二手车service接口
public interface CarDetailService {
	List<SecondCar> querySecondCar();
	List<SecondCar> find(Integer id);
	//修改之前的查询
	SecondCar update_selectSecondCar(Integer cid);
	String add(SecondCar sc);
}
