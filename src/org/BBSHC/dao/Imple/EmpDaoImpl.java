package org.BBSHC.dao.Imple;

import java.util.List;

import org.BBSHC.dao.EmpDao;
import org.BBSHC.pojo.Emp;
import org.springframework.stereotype.Repository;
@Repository
public class EmpDaoImpl extends BaseDaoImpl<Emp> implements EmpDao{

	@Override
	public List<Emp> queryell(String sql) {
		return null;
	}



	
}
