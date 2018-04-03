/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.CollectRecordDao;
import org.BBSHC.pojo.CollectRecord;
import org.BBSHC.service.CollectRecordService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//收藏记录service接口实现
@Service
@Transactional
public class CollectRecordServiceImpl implements CollectRecordService{
	//收藏记录dao接口
	@Resource
	private CollectRecordDao crd;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<CollectRecord> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<CollectRecord> find(Integer id) {
		String hql="select cr from CollectRecord cr where cr.user.uid="+id;
		List<CollectRecord> cr = crd.selectHQL(hql);
		return cr;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public CollectRecord getOne(Integer id) {
		return crd.getOne(id);		
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(CollectRecord t) {
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
	public String add(CollectRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(CollectRecord t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertCollectRecord(CollectRecord cr) {
		crd.saveOrupdate(cr);		
	}

	@Override
	public List<CollectRecord> getCollectRecord(Integer cid, Integer uid) {
		String sql = "select * from collectrecord where cid='"+cid+"'and uid ='"+uid+"'";
		return crd.select(sql);		
	}

	@Override
	public void deleteCollectRecord(CollectRecord cr) {
		crd.delete(cr);		
	}
}
