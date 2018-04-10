package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Page;
import org.BBSHC.pojo.SecondCar;
//二手车service接口
public interface CarDetailService {
	List<SecondCar> querySecondCar();
	List<SecondCar> find(Integer uid);
	List<SecondCar> find(Integer uid,Integer cid);
	List<SecondCar> find(String sql);
	List<SecondCar> find(String sql,Page page);
	//修改之前的查询
	SecondCar update_selectSecondCar(Integer id);
	//修改待买车
	String update_SecondCar(SecondCar sc);

	List<SecondCar> selectHQL();
	String add(SecondCar sc);
	SecondCar getone(String sql);
	
	int findCount(String sql);
}
