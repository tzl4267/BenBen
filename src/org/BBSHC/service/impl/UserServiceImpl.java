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
	public User update_select(Integer uid) {
		User user2 = ud.getOne(User.class, uid);
		return user2;
	}
	@Override
	public String modify(User user,Integer uid) {
		ud.saveOrupdate(user);
		return "ok";
	}


	@Override
	public User selectone(String uname,String upass) {
		String sql="select * from user where uname='"+uname+"' and upass='"+upass+"'";
		User user=ud.selectone(sql);
		return user;
	}
	@Override
	public List<User> queryull() {
		String hql="from User";
		List<User> ull = ud.selectHQL(hql);
		return ull;
	}

}
