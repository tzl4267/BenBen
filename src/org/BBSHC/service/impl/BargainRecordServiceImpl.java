/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.BargainRecordDao;
import org.BBSHC.pojo.BargainRecord;
import org.BBSHC.service.BargainRecordService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//砍价记录service接口实现
@Service
@Transactional
public class BargainRecordServiceImpl implements ServiceBase<BargainRecord>,BargainRecordService {

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	//砍价记录dao接口
	@Resource
	private BargainRecordDao brd;
	@Override
	public List<BargainRecord> find() {
		// TODO Auto-generated method stub
				return null;
		
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<BargainRecord> find(Integer eid) {
		String hql="from BargainRecord br where br.brsta=0 and br.sc.emp.eid="+eid;
		System.out.println(hql);
		return brd.selectHQL(hql);
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public BargainRecord getOne(Integer id) {
		
		return brd.getOne(BargainRecord.class, id);
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(BargainRecord t) {
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
	public String add(BargainRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(BargainRecord t) {
		// TODO Auto-generated method stub
				return null;
	}

	@Override
	public void insertBargainRecord(BargainRecord bd) {
		BargainRecord bbb = brd.getOne(bd.getBid());
		bbb.setRf(bd.getRf());
		bbb.setBrsta('1');
	    brd.saveOrupdate(bbb);	
	}

	@Override
	public void updateBargainRecord(BargainRecord br) {
		// TODO Auto-generated method stub
		
	}

	


}
