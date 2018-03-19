/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//图片类型表
@Entity
public class PictureType {

	       private Integer ptid;// 类别id
	       private String ptname;//类别名称  车辆外观   车辆内饰  发动机底盘 
	       @Id
	 	  @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getPtid() {
			return ptid;
		}
		public void setPtid(Integer ptid) {
			this.ptid = ptid;
		}
		public String getPtname() {
			return ptname;
		}
		public void setPtname(String ptname) {
			this.ptname = ptname;
		}
		@Override
		public String toString() {
			return "PictureType [ptid=" + ptid + ", ptname=" + ptname + "]";
		}
		public PictureType(Integer ptid, String ptname) {
			super();
			this.ptid = ptid;
			this.ptname = ptname;
		}
		public PictureType() {
			super();
			// TODO Auto-generated constructor stub
		}
	
	
	       
	
	
	
	
	
	
	
	
}
