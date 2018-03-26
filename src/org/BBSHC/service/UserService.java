package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.User;


public interface UserService {
	List<User> queryull();
	User selectone(String uname,String upass);

}
