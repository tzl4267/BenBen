package org.BBSHC.dao.Imple;

import java.util.List;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.springframework.stereotype.Repository;

@Repository
public class CarDetailImpl<T> extends BaseDaoImpl<SecondCar> implements CarDetailDao {	  
	@Override
	public void delete(SecondCar t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrupdate(SecondCar t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public SecondCar getOne(Class cl, Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SecondCar getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SecondCar getOneHql(Class cl, Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SecondCar> querySecondCar(String hql) {
		return null;
				
	}

}
