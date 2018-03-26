/**
 * 
 */
package org.BBSHC.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.PictureDao;
import org.BBSHC.pojo.Picture;
import org.BBSHC.service.PictureService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//汽车图片service接口实现
@Service
@Transactional
public class PictureServiceImpl implements PictureService{
	//汽车图片dao接口
	@Resource
	private PictureDao pd;
	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find()
	 */
	@Override
	public List<Picture> find() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#find(java.lang.Integer)
	 */
	@Override
	public List<Picture> find(Integer id) {
<<<<<<< HEAD
		
		return null;
=======
		String sql = "select * from picture where sc.cid='"+id+"';";
		List<Picture> plist = pd.select(sql);
		return plist;
>>>>>>> branch 'master' of https://github.com/tzl4267/BenBen.git
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#getOne(java.lang.Integer)
	 */
	@Override
	public Picture getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#remove(java.lang.Object)
	 */
	@Override
	public String remove(Picture t) {
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
	public String add(Picture t) {
		pd.saveOrupdate(t);
		return "ok";
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.service.ServiceBase#modify(java.lang.Object)
	 */
	@Override
	public String modify(Picture t) {
		
		return null;
	}

	@Override
	public List<Picture> queryPicture() {
		String hql = "from Picture";
		return pd.selectHQL(hql);
		
	}

}
