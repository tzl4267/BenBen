/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

public interface ServiceBase<T>{

	//查询，返回集合
		List<T> find();
		//查询，返回单个对象
		T getOne(String id);
		//删除 对象
		void remove(T t);
		//id
		void remove(String id);
		//添加 
		void add(T t);
		//修改
		void modify(T t);
}
