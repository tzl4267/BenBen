package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.Page;
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
	//待卖车辆
	@Override
	public List<SecondCar> find(Integer uid) {
		String hql="select sc from SecondCar sc where sc.czt=1  and sc.user.uid='"+uid+"'";
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
	public String update_SecondCar(SecondCar sc) {
		SecondCar one = cdd.getOne(sc.getCid());
		one.setJg(sc.getJg());
		cdd.saveOrupdate(one);
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
	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarDetailService#find(java.lang.String)
	 */
	//首页条件查询
	@Override
	public List<SecondCar> find(String sql) {
		List<SecondCar> clist = cdd.select(sql);
		return clist;
	}
	@Override
	public List<SecondCar> find(Integer uid, Integer cid) {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarDetailService#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = cdd.selectCount(sql);
		return count;
	}
	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarDetailService#find(java.lang.String, org.BBSHC.service.Page)
	 */
	@Override
	public List<SecondCar> find(String sql, Page page) {
		List<SecondCar> clist = cdd.select(sql, page);
		return clist;
	}
}
