package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Emp;
//员工service接口
public interface EmpService {
	List<Emp> queryel();
	Emp update_select(String eid);
	void insertEmp(Emp emp);
	
}
