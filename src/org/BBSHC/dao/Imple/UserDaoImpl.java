package org.BBSHC.dao.Imple;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.UserDao;
import org.BBSHC.pojo.User;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
	@Resource
	private SessionFactory sf;

	}

