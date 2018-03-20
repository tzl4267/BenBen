package org.BBSHC.dao;

import java.util.List;

import org.apache.catalina.User;

public interface UserDao extends BaseDao{
	List<User> queryull();
	
}
