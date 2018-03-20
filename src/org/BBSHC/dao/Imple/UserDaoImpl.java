package org.BBSHC.dao.Imple;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.UserDao;
import org.apache.catalina.User;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
@Repository
public class UserDaoImpl extends BaseDaoImpl implements UserDao{
	@Resource
	private SessionFactory sf;
	
	@Override
	public List<User> queryull() {
		Session session = sf.getCurrentSession();
		SQLQuery sqlQuery = session.createSQLQuery("select * from user").addEntity(User.class);
		List ul = sqlQuery.list();
		return ul;
	}

}
