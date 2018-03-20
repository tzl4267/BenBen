package org.BBSHC.dao;

import java.util.List;

//
public interface BaseDao<T> {
	//查询，返回集合
	List<T> select(Class cl,String sql);
	//查询，返回单个对象
	T getOne(Class cl,Integer id);
	//查询，返回集合
	List<T> select(String sql);
	//查询，返回单个对象
	T getOne(Integer id);
	//删除 对象
	void delete(T t);
	//id
	void delete(Integer id);
	//添加 与修改
	void saveOrupdate(T t);
	//查询，返回集合
	List<T> selectHQL(String hql);
	//查询，返回单个对象
	T getOneHql(Class cl,Integer id);
}
