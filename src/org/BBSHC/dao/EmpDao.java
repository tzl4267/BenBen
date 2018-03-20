package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.Emp;

public interface EmpDao extends BaseDao<Emp>{
	List<Emp> queryell(String sql);
}
