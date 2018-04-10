package org.BBSHC.dao;


import org.BBSHC.pojo.Emp;
//员工dao接口
public interface EmpDao extends BaseDao<Emp>{
		Emp selectEmp(String sql);
}
