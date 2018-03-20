/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;


import javax.annotation.Resource;

import org.BBSHC.dao.SCDao;
import org.BBSHC.pojo.SecondCar;
import org.BBSHC.service.SCService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//二手车Service接口实现
@Service
@Transactional
public class SCServicesImpl implements ServiceBase<SecondCar>,SCService{

	@Resource
	private SCDao scd;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Class)
	 */
	@Override
	public List<SecondCar> find() {
		String sql = "select * from secondcar;";
		List<SecondCar> slist = scd.select(SecondCar.class, sql);
		return slist;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Class, java.lang.String)
	 */
	@Override
	public SecondCar getOne(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public void remove(SecondCar t) {
		// TODO Auto-generated method stub
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.String)
	 */
	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#add(java.lang.Object)
	 */
	@Override
	public void add(SecondCar t) {
		// TODO Auto-generated method stub
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public void modify(SecondCar t) {
		// TODO Auto-generated method stub
	}

}
