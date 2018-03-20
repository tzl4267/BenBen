/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

public interface ServiceBase<T>{

	//查询，返回集合
		List<T> find();
		//根据id查询
		List<T> find(Integer id);
		//查询，返回单个对象
		T getOne(Integer id);
		//删除 对象
		String remove(T t);
		//id
		String remove(Integer id);
		//添加 
		String add(T t);
		//修改
		String modify(T t);
}
