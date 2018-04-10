/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CarSeriesDao;
import org.BBSHC.pojo.CarSeries;
import org.BBSHC.pojo.Page;
import org.BBSHC.service.CarSeriesSercice;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//车系service接口实现
@Service
@Transactional
public class CarSeriesSerciceImpl implements CarSeriesSercice{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	//车系dao接口
	@Resource
	private CarSeriesDao csd;
	@Override
	public List<CarSeries> find() {
		String sql=" select * from CarSeries";
		System.out.println(sql);
		return csd.select(sql); 
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<CarSeries> find(Integer id) {
		String sql="select * from carseries s,carbrand b where  s.cbid=b.cbid and b.cbid="+id;
		return csd.select(sql);
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public CarSeries getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(CarSeries t) {
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
	public String add(CarSeries t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(CarSeries t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = csd.selectCount(sql);
		return count;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer, org.BBSHC.pojo.Page)
	 */
	@Override
	public List<CarSeries> find(Integer id, Page page) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.CarSeriesSercice#selectone(java.lang.String)
	 */
	@Override
	public CarSeries selectone(String sql) {
		CarSeries carseries = csd.selectone(sql);
		return carseries;
	}

}
