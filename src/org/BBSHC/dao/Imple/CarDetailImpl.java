package org.BBSHC.dao.Imple;

import java.util.List;

import org.BBSHC.dao.CarDetailDao;
import org.BBSHC.pojo.SecondCar;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
//二手车dao接口实现
@Repository
public class CarDetailImpl<T> extends BaseDaoImpl<SecondCar> implements CarDetailDao {

	@Override
	public List<SecondCar> querySecondCar(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.CarDetailDao#getone(java.lang.String)
	 */
	@Override
	public SecondCar getone(String sql) {
		SessionFactory sf = getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(SecondCar.class);
		SecondCar sc = (SecondCar) query.uniqueResult();
		return sc;
	}	  
	
}
