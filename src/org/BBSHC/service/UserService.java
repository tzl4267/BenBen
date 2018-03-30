package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.User;


public interface UserService {
	User update_select(Integer uid);
	String modify(User user,Integer uid);
	List<User> queryull();
	User selectone(String uname,String upass);

}
