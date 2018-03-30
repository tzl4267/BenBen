/**
 * 
 */
package org.BBSHC.service;

import org.BBSHC.pojo.CheckReport;
//检测报告service接口
public interface CheckRService extends ServiceBase<CheckReport>{
 CheckReport getOneBySid(Integer id);
}
