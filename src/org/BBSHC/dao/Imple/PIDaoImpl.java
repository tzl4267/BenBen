/**
 * 
 */
package org.BBSHC.dao.Imple;

import org.BBSHC.dao.PIDao;
import org.BBSHC.pojo.CheckReport;
import org.BBSHC.pojo.ProcedureInfo;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

//手续信息dao接口实现

@Repository
public class PIDaoImpl extends BaseDaoImpl<ProcedureInfo> implements PIDao{

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.PIDao#getOne(java.lang.String)
	 */
	@Override
	public ProcedureInfo getOne(String sql) {
		SessionFactory sf = getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(ProcedureInfo.class);
		ProcedureInfo pi = (ProcedureInfo) query.uniqueResult();
		return pi;
	}

}
