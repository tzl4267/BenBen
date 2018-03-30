/**
 * 
 */
package org.BBSHC.dao.Imple;

import org.BBSHC.dao.CheckRDao;
import org.BBSHC.pojo.CheckReport;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
//检测报告dao接口实现
@Repository
public class CheckRDaoImpl extends BaseDaoImpl<CheckReport> implements CheckRDao{

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.CheckRDao#getOne(java.lang.String)
	 */
	@Override
	public CheckReport getOne(String sql) {
		SessionFactory sf = getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(CheckReport.class);
		CheckReport cr = (CheckReport) query.uniqueResult();
		return cr;
	}

}
