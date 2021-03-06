/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.OutstandingDao;
import org.BBSHC.pojo.Outstanding;
import org.BBSHC.pojo.Page;
import org.BBSHC.service.OutstandingService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//亮点配置service接口实现
@Service
@Transactional
public class OutstandingServiceImpl implements OutstandingService{
	//亮点配置dao接口
	@Resource
	private OutstandingDao od;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<Outstanding> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<Outstanding> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public Outstanding getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(Outstanding t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Integer)
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
	public String add(Outstanding t) {
		od.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(Outstanding t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.OutstandingService#getOneBySid(java.lang.Integer)
	 */
	@Override
	public Outstanding getOneBySid(Integer sid) {
		String sql = "select * from Outstanding where sid="+sid;
		Outstanding os = od.getOne(sql);
		return os;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = od.selectCount(sql);
		return count;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer, org.BBSHC.pojo.Page)
	 */
	@Override
	public List<Outstanding> find(Integer id, Page page) {
		// TODO Auto-generated method stub
		return null;
	}

}
