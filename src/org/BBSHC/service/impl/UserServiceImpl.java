package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.UserDao;
import org.BBSHC.service.UserService;
import org.apache.catalina.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao ud;
	
	@Override
	public List<User> queryull() {
		String sql="select * from user";
		List ul = ud.select(sql);
		return ul;
	}

}
