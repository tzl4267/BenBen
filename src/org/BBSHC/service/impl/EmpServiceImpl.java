package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.EmpDao;
import org.BBSHC.pojo.Emp;
import org.BBSHC.service.EmpService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EmpServiceImpl implements EmpService{
	@Resource
	private EmpDao ed;

	@Override
	public List<Emp> queryel() {
		String sql="select * from emp";
		List<Emp> el = ed.select(sql);
		return el;
	}


}
