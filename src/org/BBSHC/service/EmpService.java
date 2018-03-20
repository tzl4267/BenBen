package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.Emp;

public interface EmpService {
	List<Emp> queryel();
	Emp update_select(String eid);
}
