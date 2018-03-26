package org.BBSHC.dao.Imple;

import java.util.List;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.springframework.stereotype.Repository;
//二手车dao接口实现
@Repository
public class CarDetailImpl<T> extends BaseDaoImpl<SecondCar> implements CarDetailDao {

	@Override
	public List<SecondCar> querySecondCar(String hql) {
		// TODO Auto-generated method stub
		return null;
	}	  
	
}
