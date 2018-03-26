package org.BBSHC.service.impl;


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
		return null;
	}

<<<<<<< HEAD
=======
	@Override
	public void insertEmp(Emp emp) {
		ed.saveOrupdate(emp);	
	}
>>>>>>> branch 'master' of https://github.com/tzl4267/BenBen.git
}
