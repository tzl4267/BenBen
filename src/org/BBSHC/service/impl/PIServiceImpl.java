/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.PIDao;
import org.BBSHC.pojo.ProcedureInfo;
import org.BBSHC.service.PIService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//手续信息service接口实现
@Service
@Transactional
public class PIServiceImpl implements ServiceBase<ProcedureInfo>,PIService{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Resource
	private PIDao pid;
	@Override
	public List<ProcedureInfo> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.String)
	 */
	@Override
	public List<ProcedureInfo> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.String)
	 */
	@Override
	public ProcedureInfo getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(ProcedureInfo t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.String)
	 */
	@Override
	public String remove(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#add(java.lang.Object)
	 */
	@Override
	public String add(ProcedureInfo t) {
		pid.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(ProcedureInfo t) {
		pid.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.PIService#getOneBySid(java.lang.Integer)
	 */
	@Override
	public ProcedureInfo getOneBySid(Integer sid) {
		String sql = "select * from procedureinfo where sid="+sid;
		ProcedureInfo pi = pid.getOne(sql);
		return pi;
	}

}
