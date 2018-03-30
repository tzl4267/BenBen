package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.UserDao;
import org.BBSHC.pojo.User;
import org.BBSHC.service.UserService;

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

	@Override
	public User selectone(String uname,String upass) {
		String sql="select * from user where uname='"+uname+"' and upass='"+upass+"'";
		User user=ud.selectone(sql);
		return user;
	}

	@Override
	public User update_select(Integer uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String modify(User user, Integer uid) {
		// TODO Auto-generated method stub
		return null;
	}

}
