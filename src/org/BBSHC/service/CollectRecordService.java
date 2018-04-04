/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.CollectRecord;
//收藏记录service接口
public interface CollectRecordService extends ServiceBase<CollectRecord>{
	void insertCollectRecord(CollectRecord cr);
	List<CollectRecord> getCollectRecord(Integer cid,Integer uid);
	void deleteCollectRecord(CollectRecord cr);
}
