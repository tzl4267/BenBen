/**
 * 
 */
package org.BBSHC.dao.Imple;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.BBSHC.dao.BaseDao;
import org.BBSHC.pojo.Page;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.BB_Second_hand_Car.dao.BaseDao#select(java.lang.Class)
	 */
	@Resource
	public void set(SessionFactory sF) {
		super.setSessionFactory(sF);
	}

	@Resource
	private SessionFactory sf;
	// 实体类
	private Class<T> cls;

	@SuppressWarnings("unchecked")
	public BaseDaoImpl() {
		Type type = getClass().getGenericSuperclass();
		cls = (Class<T>) ((ParameterizedType) type).getActualTypeArguments()[0];
	}

	@Override
	public List<T> select(Class cl, String sql) {
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(cl);
		List<T> tlist = query.list();
		return tlist;
	}

	@Override
	public T getOne(Class cl, Integer id) {
		Session session = sf.getCurrentSession();
		T t = (T) session.get(cl, id);
		return t;
	}

	@Override
	public void delete(T t) {
		Session session = sf.getCurrentSession();
		session.delete(t);
	}

	@Override
	public void delete(Integer id) {
		Session session = sf.getCurrentSession();
		T t = (T) session.get(cls, id);
		session.delete(t);
	}

	@Override
	public void saveOrupdate(T t) {
		Session session = sf.getCurrentSession();
		session.saveOrUpdate(t);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.BBSHC.dao.BaseDao#selectHQL(java.lang.Class, java.lang.String)
	 */
	@Override
	public List<T> selectHQL(String hql) {
		HibernateTemplate jdbc = getHibernateTemplate();
		List<T> tlist = (List<T>) jdbc.find(hql);
		return tlist;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.BBSHC.dao.BaseDao#getOneHql(java.lang.Class, java.lang.String)
	 */
	@Override
	public T getOneHql(Class cl, Integer id) {
		HibernateTemplate jdbc = getHibernateTemplate();
		T t = (T) jdbc.get(cl, id);
		return t;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.BaseDao#select(java.lang.String)
	 */
	@Override
	public List<T> select(String sql,Page page) {
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(cls);
		int nowpage = page.getNowPage();
		int number = page.getNumber();
		if(page!=null&&nowpage>1){
			query.setFirstResult((nowpage-1)*number);
		}
		query.setMaxResults(nowpage*number);
		List<T> tlist = query.list();
		return tlist;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.BaseDao#getOne(java.lang.String)
	 */
	@Override
	public T getOne(Integer id) {
		Session session = sf.getCurrentSession();
		T t = (T) session.get(cls, id);
		return t;
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.BaseDao#selectCount(java.lang.String)
	 */
	@Override
	public int selectCount(String sql) {
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql).addEntity(cls);
		List count = query.list();
		return count.size();
	}

	/* (non-Javadoc)
	 * @see org.BBSHC.dao.BaseDao#select(java.lang.String)
	 */
	@Override
	public List<T> select(String sql) {
		Session session = sf.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(cls);
		List<T> tlist = query.list();
		return tlist;
	}

}
