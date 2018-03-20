package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.SecondCar;

public interface CarDetailDao extends BaseDao<SecondCar>{
	List<SecondCar>querySecondCar(String hql);
}
