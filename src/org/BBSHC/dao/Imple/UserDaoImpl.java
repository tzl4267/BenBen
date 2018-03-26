package org.BBSHC.dao.Imple;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.UserDao;
import org.BBSHC.pojo.User;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
	@Resource
	private SessionFactory sf;
	@Override
	public List<User> queryull(String sql) {
		
		return null;
	}
	@Override
	public User selectone(String sql) {
		SessionFactory sf=getSessionFactory();
		Session session = sf.getCurrentSession();
		SQLQuery query =session.createSQLQuery(sql).addEntity(User.class);
		User user = (User) query.uniqueResult();
		return user;
	}

}
