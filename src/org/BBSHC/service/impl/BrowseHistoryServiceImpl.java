/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.BrowseHistoryDao;
import org.BBSHC.pojo.BrowseHistory;
import org.BBSHC.service.BrowseHistoryService;
import org.BBSHC.service.ServiceBase;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//历史浏览记录service接口实现
@Service
@Transactional
public class BrowseHistoryServiceImpl implements ServiceBase<BrowseHistory>,BrowseHistoryService{

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	//历史浏览记录dao接口
	@Resource
	private BrowseHistoryDao bhd;
	@Override
	//浏览记录
	public List<BrowseHistory> find() {
		
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<BrowseHistory> find(Integer id) {
		String hql="select bh from BrowseHistory bh where bh.user.uid="+id;
		List<BrowseHistory> bl = bhd.selectHQL(hql);
		return bl;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public BrowseHistory getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(BrowseHistory t) {
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
	public String add(BrowseHistory t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(BrowseHistory t) {
		// TODO Auto-generated method stub
		return null;
	}

}
