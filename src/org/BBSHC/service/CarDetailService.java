package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.SecondCar;
//二手车service接口
public interface CarDetailService {
	List<SecondCar> querySecondCar();

	List<SecondCar> selectHQL();
	String add(SecondCar sc);
}
