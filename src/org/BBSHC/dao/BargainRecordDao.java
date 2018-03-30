/**
 * 
 */
package org.BBSHC.dao;

import java.util.List;

import org.BBSHC.pojo.BargainRecord;

//砍价记录dao接口
public interface BargainRecordDao extends BaseDao<BargainRecord>{
	List<BargainRecord> selectHQL(String hql);
}
