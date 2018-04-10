/**
 * 
 */
package org.BBSHC.service;

import java.util.List;

import org.BBSHC.pojo.AppointRecord;
import org.BBSHC.pojo.Page;

//买车约看记录service接口
public interface ARService extends ServiceBase<AppointRecord>{
List<AppointRecord> jfind(Integer id,Page page);
List<AppointRecord> find1(Integer id);
void insertAppointRecord(AppointRecord ar);
}
