/**
 * 
 */
package org.BBSHC.dao.Imple;

import org.BBSHC.dao.CarSeriesDao;
import org.BBSHC.pojo.CarSeries;
import org.BBSHC.pojo.User;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
//车系dao接口实现
@Repository
public class CarSeriesDaoImpl extends BaseDaoImpl<CarSeries> implements CarSeriesDao{

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.CarSeriesDao#selectone(java.lang.String)
	 */
	@Override
	public CarSeries selectone(String sql) {
			SessionFactory sf=getSessionFactory();
			Session session = sf.getCurrentSession();
			SQLQuery query =session.createSQLQuery(sql).addEntity(CarSeries.class);
			CarSeries carseries = (CarSeries) query.uniqueResult();
		return carseries;
	}

}
