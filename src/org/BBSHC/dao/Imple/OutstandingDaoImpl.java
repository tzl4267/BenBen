/**
 * 
 */
package org.BBSHC.dao.Imple;

import org.BBSHC.dao.OutstandingDao;
import org.BBSHC.pojo.Outstanding;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
//亮点配置dao接口实现
@Repository
public class OutstandingDaoImpl extends BaseDaoImpl<Outstanding> implements OutstandingDao{

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.OutstandingDao#getOne(java.lang.String)
	 */
	@Override
	public Outstanding getOne(String sql) {
		SessionFactory sf = getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(Outstanding.class);
		Outstanding os = (Outstanding) query.uniqueResult();
		return os;
	}

}
