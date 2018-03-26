package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.CarDetailService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//二手车service接口实现
@Service
@Transactional
public class CarDetailServiceImpl implements CarDetailService {
	@Resource
	private CarDetailDao cdd;

	@Override
	public List<SecondCar> querySecondCar() {
		String hql = "from SecondCar";
		System.out.println(hql);
		return cdd.selectHQL(hql);
	}
	@Override
	public List<SecondCar> selectHQL() {
		String hql = "from SecondCar ";
		System.out.println(hql);
		return cdd.selectHQL(hql);
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarDetailService#add(org.BBSHC.pojo.SecondCar)
	 */
	@Override
	public String add(SecondCar sc) {
		cdd.saveOrupdate(sc);
		return "ok";
	}
}
