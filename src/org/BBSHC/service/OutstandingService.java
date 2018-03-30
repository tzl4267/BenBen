/**
 * 
 */
package org.BBSHC.service;

import org.BBSHC.pojo.Outstanding;

//亮点配置service接口
public interface OutstandingService extends ServiceBase<Outstanding>{
	Outstanding getOneBySid(Integer sid);
}
