/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.TypeInfoDao;
import org.BBSHC.pojo.Page;
import org.BBSHC.pojo.TypeInfo;
import org.BBSHC.service.TypeInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//图片类别备注service接口实现
@Service
@Transactional
public class TypeInfoServiceImpl implements TypeInfoService{

	//图片类别备注dao接口
	@Resource
	private TypeInfoDao td;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<TypeInfo> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<TypeInfo> find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public TypeInfo getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(TypeInfo t) {
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
	public String add(TypeInfo t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(TypeInfo t) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#findCount(java.lang.String)
	 */
	@Override
	public int findCount(String sql) {
		int count = td.selectCount(sql);
		return count;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer, org.BBSHC.pojo.Page)
	 */
	@Override
	public List<TypeInfo> find(Integer id, Page page) {
		// TODO Auto-generated method stub
		return null;
	}

}
