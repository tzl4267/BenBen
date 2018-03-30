/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CityDao;
import org.BBSHC.pojo.City;
import org.BBSHC.service.CityService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//城市service接口实现
@Service
@Transactional
public class CityServiceImpl implements CityService{
	//城市dao接口
	@Resource
	private CityDao cd;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<City> find() {
		String sql="select * from city";
		List<City> ct = cd.select(sql);
		return ct;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<City> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public City getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(City t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Integer)
	 */
	@Override
	public String remove(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#add(java.lang.Object)
	 */
	@Override
	public String add(City t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(City t) {
		// TODO Auto-generated method stub
		return null;
	}

}
