package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.Dept;

public interface DeptDao extends BaseDao<Dept>{
	List<Dept> querydll(String sql);
}
