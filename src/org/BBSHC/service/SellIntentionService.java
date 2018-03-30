/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.SellIntention;
//卖车意向信息表service接口
public interface SellIntentionService extends ServiceBase<SellIntention>{
	List<SellIntention> querySellIntention();  
	
}
