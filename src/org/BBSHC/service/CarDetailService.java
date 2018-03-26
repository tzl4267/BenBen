package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.User;
//二手车service接口
public interface CarDetailService {
	List<SecondCar> querySecondCar();
	List<SecondCar> find(Integer id);
	//修改之前的查询
	SecondCar update_selectSecondCar(Integer cid);
}
