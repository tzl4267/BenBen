package org.BBSHC.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.EmpDao;
import org.BBSHC.pojo.Emp;
import org.BBSHC.service.EmpService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//员工service接口
@Service
@Transactional
public class EmpServiceImpl implements EmpService{
	@Resource
	private EmpDao ed;
	
	@Override
	public Emp update_selectEmp(Integer eid) {
		Emp emp = ed.getOne(Emp.class, eid);
		return emp;
	}

	@Override
	public String modify(Emp emp, Integer eid) {
		ed.saveOrupdate(emp);
		return "ok";
	}

	@Override
	public void insertEmp(Emp emp) {
		ed.saveOrupdate(emp);	
	}

	@Override
	public List<Emp> queryel() {
		return null;
	}

	@Override
	public Emp update_select(String eid) {
		// TODO Auto-generated method stub
		return null;
	}
}
