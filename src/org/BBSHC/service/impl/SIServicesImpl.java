/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.SIDao;
import org.BBSHC.pojo.SellIntention;
import org.BBSHC.service.SIService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//卖车约看记录service接口实现
@Service
@Transactional
public class SIServicesImpl implements ServiceBase<SellIntention>,SIService{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Resource
	private SIDao sid;
	@Override
	public List<SellIntention> find() {
		
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.String)
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
	public String add(SellIntention t) {
		sid.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	//根据实体修改卖车约看记录信息
	@Override
	public String modify(SellIntention t) {
		sid.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.String)
	 */
	//根据员工id查找该员工接手的车辆,未处理
	@Override
	public List<SellIntention> find(Integer id) {
	String sql = "select * from SellIntention sr where sr.zt='0' and (sr.seid='"+id+"' or sr.jeid='"+id+"')";
	List<SellIntention> srlist = sid.select(sql);
		return srlist;
	}
	//根据员工id查找该员工接手的车辆,未处理
	@Override
	public List<SellIntention> findHQL(Integer id) {
		String hql = "select sr from SellIntention sr where sr.zt='0' and (sr.seid='"+id+"' or sr.jeid='"+id+"')";
		List<SellIntention> srlist = sid.selectHQL(hql);
		return srlist;
	}

}
