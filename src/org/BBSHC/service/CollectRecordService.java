/**
 * 
 */
package org.BBSHC.service;

import org.BBSHC.pojo.CollectRecord;
//收藏记录service接口
public interface CollectRecordService extends ServiceBase<CollectRecord>{
	void insertCollectRecord(CollectRecord cr);
}
