package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.CarDetailService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CarDetailServiceImpl implements CarDetailService {
	@Resource
	private CarDetailDao cdd;

	@Override
	public List<SecondCar> querySecondCar() {
		String hql = "select from SecondCar";
		return cdd.querySecondCar(hql);
	}
}
