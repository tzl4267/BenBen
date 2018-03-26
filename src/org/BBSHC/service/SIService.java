/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.SellIntention;

//卖车约看记录Service接口
public interface SIService extends ServiceBase<SellIntention>{

	List<SellIntention> findHQL(Integer id);
}
