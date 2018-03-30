/**
 * 
 */
package org.BBSHC.dao;

import org.BBSHC.pojo.CheckReport;
import org.BBSHC.pojo.ProcedureInfo;
//手续信息dao接口
public interface PIDao extends BaseDao<ProcedureInfo>{
	ProcedureInfo getOne(String sql);
}
