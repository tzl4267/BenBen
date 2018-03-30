package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.SecondCar;
//二手车dao接口
public interface CarDetailDao extends BaseDao<SecondCar>{

	List<SecondCar> querySecondCar(String hql);
	List<SecondCar>selectHQL(String hql);
	SecondCar getone(String sql);
}
