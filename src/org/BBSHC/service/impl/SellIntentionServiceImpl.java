/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.criteria.From;

import org.BBSHC.dao.SellIntentionDao;
import org.BBSHC.pojo.Page;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.service.SellIntentionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//卖车意向信息表service接口实现
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class SellIntentionServiceImpl implements SellIntentionService{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	//卖车意向信息表dao接口
	@Resource
	private SellIntentionDao sd;
	@Override
	public List<SellIntention> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<SellIntention> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public SellIntention getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(SellIntention t) {
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
	public String add(SellIntention t) {
		sd.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(SellIntention t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SellIntention> querySellIntention() {
		String hql = "from SellIntention";
		return sd.selectHQL(hql);		
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = sd.selectCount(sql);
		return count;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer, org.BBSHC.pojo.Page)
	 */
	@Override
	public List<SellIntention> find(Integer id, Page page) {
		// TODO Auto-generated method stub
		return null;
	}
		
}
