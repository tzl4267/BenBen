/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.AppointRecord;

//买车约看记录service接口
public interface ARService extends ServiceBase<AppointRecord>{
List<AppointRecord> jfind(Integer id);
List<AppointRecord> find1(Integer id);
}
