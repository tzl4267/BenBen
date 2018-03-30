/**
 * 
 */
package org.BBSHC.service;

import org.BBSHC.pojo.ProcedureInfo;

//手续信息service接口
public interface PIService extends ServiceBase<ProcedureInfo>{
	ProcedureInfo getOneBySid(Integer sid);
}
