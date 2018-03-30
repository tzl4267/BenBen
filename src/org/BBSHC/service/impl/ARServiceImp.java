/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.ARDao;
import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.service.ARService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//买车约看记录service接口实现
@Service
@Transactional
public class ARServiceImp implements ServiceBase<AppointRecord>,ARService{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	//买车约看记录dao接口
	@Resource
	private ARDao ard;
	@Override
	public List<AppointRecord> find() {
		
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.String)
	 */
	//根据销售员id查询该员工的约看记录
	
	
	
	
	
	
	
	@Override
	public List<AppointRecord> find(Integer id) {
		String sql = "select * from appointrecord ar where ar.cid in (select cid from secondcar sc where sc.czt='1' and sc.seid= '"+id+"') and ar.asta='0';";
		List<AppointRecord> alist = ard.select(sql);
				return alist;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.String)
	 */
	@Override
	public AppointRecord getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(AppointRecord t) {
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
	//添加记录
	@Override
	public String add(AppointRecord t) {
		ard.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	//修改约看记录 信息状态
	@Override
	public String modify(AppointRecord t) {
		ard.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ARService#jfind(java.lang.String)
	 */
	//根据检测员id查询约看记录
	@Override
	public List<AppointRecord> jfind(Integer id) {
		String sql = "select * from appointrecord ar where ar.cid in (select cid from secondcar sc where czt='1' and crid in(select crid from checkreport  cr where cr.jeid ='"+id+"' and cr.hg='1'));";
		List<AppointRecord> alist = ard.select(sql);
		return alist;
	}

	@Override
	public List<AppointRecord> find1(Integer id) {
		String hql="select ar from AppointRecord ar where ar.user.uid="+id;
		List<AppointRecord> ar = ard.selectHQL(hql);
		return ar;
	}

}
