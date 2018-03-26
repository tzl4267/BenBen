package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.pojo.User;
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
		String hql = "select from SecondCar";
		return cdd.querySecondCar(hql);
	}
	//待卖车辆
	@Override
	public List<SecondCar> find(Integer id) {
		String sql = "select * from secondcar sc,user u where sc.uid=u.uid and czt=1";
		List<SecondCar> sc = cdd.select(sql);
		return sc;
	}
	//待买车修改之前的查询
	@Override
	public SecondCar update_selectSecondCar(Integer cid) {
		SecondCar sec = cdd.getOne(SecondCar.class,cid);
		return sec;
	}
}
