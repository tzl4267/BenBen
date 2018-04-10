/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.BuyRecordDao;
import org.BBSHC.pojo.BuyRecord;
import org.BBSHC.pojo.Page;
import org.BBSHC.service.BuyRecordService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BuyRecordServiceImpl implements ServiceBase<BuyRecord>,BuyRecordService{
	@Resource
	private BuyRecordDao brd;
	
	@Override
	public List<BuyRecord> find() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BuyRecord> find(Integer id,Page page) {
		String hql="select br from BuyRecord br where br.user.uid="+id;
		List<BuyRecord> brl = brd.select(hql,page);
		return brl;
	}

	@Override
	public BuyRecord getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String remove(BuyRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String remove(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String add(BuyRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String modify(BuyRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = brd.selectCount(sql);
		return count;
	}
	@Override
	public List<BuyRecord> find(Integer id) {
		String hql="select br from BuyRecord br where br.user.uid="+id;
		List<BuyRecord> brl = brd.selectHQL(hql);
		return brl;
	}
}
