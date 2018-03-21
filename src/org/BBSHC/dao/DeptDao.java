package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.Dept;
//部门dao接口
public interface DeptDao extends BaseDao<Dept>{
	List<Dept> querydll(String sql);
}
