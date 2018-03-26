package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Emp;
import org.BBSHC.pojo.User;
//员工service接口
public interface EmpService {
	Emp update_selectEmp(Integer eid);
	String modify(Emp emp,Integer eid);
}
