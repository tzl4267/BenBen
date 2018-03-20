package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.DeptDao;
import org.BBSHC.dao.EmpDao;
import org.BBSHC.pojo.Dept;
import org.BBSHC.service.DeptService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DeptServiceImpl implements DeptService{
	@Resource
	private DeptDao dd;

	@Override
	public List<Dept> querydl() {
		String sql="select * from dept";
		List<Dept> dl = dd.select(sql);
		return dl;
	}

}
