package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.User;


public interface UserDao extends BaseDao<User>{
	List<User> queryull(String sql);
	User selectone(String sql);
	
}
