/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.BargainRecord;
//砍价记录service接口
public interface BargainRecordService extends ServiceBase<BargainRecord>{
	void insertBargainRecord(BargainRecord bd);
	List<BargainRecord> find();
	void updateBargainRecord(BargainRecord br);
}
