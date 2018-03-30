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
	//待卖车辆
	@Override
	public List<SecondCar> find(Integer uid,Integer cid) {
		String hql="select sc from SecondCar sc where sc.czt=1 and sc.cid= '"+cid+"' and sc.user.uid='"+uid+"'";
		List<SecondCar> sc = cdd.selectHQL(hql);
		return sc;
	}
	//待买车修改之前的查询
	@Override
	public SecondCar update_selectSecondCar(Integer cid) {
		SecondCar sec = cdd.getOne(SecondCar.class,cid);
		return sec;
	}
	//修改待买车
	@Override
	public String update_SecondCar(SecondCar sc, Integer cid) {
		cdd.saveOrupdate(sc);
		return "ok";
	}
	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarDetailService#getone(java.lang.String)
	 */
	@Override
	public SecondCar getone(String sql) {
		SecondCar scar = cdd.getone(sql);
		return scar;
	}
}
