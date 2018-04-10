package org.BBSHC.dao.Imple;


import org.BBSHC.dao.EmpDao;
import org.BBSHC.pojo.Emp;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


//员工dao接口实现
@Repository
public class EmpDaoImpl extends BaseDaoImpl<Emp> implements EmpDao{

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.EmpDao#selectEmp(java.lang.String)
	 */
	@Override
	public Emp selectEmp(String sql) {
		SessionFactory sf=getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(Emp.class);
		Emp emp = (Emp) query.uniqueResult();
		return emp;
	}
}
