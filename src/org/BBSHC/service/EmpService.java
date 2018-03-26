package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Emp;
//员工service接口
public interface EmpService {
	Emp update_selectEmp(Integer eid);
	String modify(Emp emp,Integer eid);
	List<Emp> queryel();
	Emp update_select(String eid);
	void insertEmp(Emp emp);
	
}
