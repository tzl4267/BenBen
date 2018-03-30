/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CheckRDao;
import org.BBSHC.pojo.CheckReport;
import org.BBSHC.service.CheckRService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//检测报告service接口实现
@Service
@Transactional
public class CheckRServiceImpl implements CheckRService,ServiceBase<CheckReport>{
	//检测报告dao接口
	@Resource
	private CheckRDao crd;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<CheckReport> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.String)
	 */
	@Override
	public List<CheckReport> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.String)
	 */
	@Override
	public CheckReport getOne(Integer id) {
		CheckReport cr = crd.getOne(id);
		return cr;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(CheckReport t) {
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
	public String add(CheckReport t) {
		crd.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(CheckReport t) {
		crd.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.CheckRService#getOneBySid(java.lang.Integer)
	 */
	@Override
	public CheckReport getOneBySid(Integer id) {
		String sql = "select * from checkreport where sid="+id;
		CheckReport cr = crd.getOne(sql);
		return cr;
	}

}
