package org.BBSHC.dao.Imple;

import java.util.List;

import org.BBSHC.dao.DeptDao;
import org.BBSHC.pojo.Dept;
import org.springframework.stereotype.Repository;
//部门dao接口实现
@Repository
public class DeptDaoImpl extends BaseDaoImpl<Dept> implements DeptDao{

	@Override
	public List<Dept> querydll(String sql) {
		return null;
	}

}
