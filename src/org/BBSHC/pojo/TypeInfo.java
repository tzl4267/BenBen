/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

//图片类别备注
@Entity
public class TypeInfo {
	
			//1-13 车辆外观 /14-28 车辆内饰  /29-32 发动机底盘
	       private Integer tid;//备注id 
	       private String tinfo;//备注信息
	       private PictureType pt;// 图片类别  车辆外观   车辆内饰  发动机底盘
	       
	       @Id
	       @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getTid() {
			return tid;
		}
		public void setTid(Integer tid) {
			this.tid = tid;
		}
		public String getTinfo() {
			return tinfo;
		}
		public void setTinfo(String tinfo) {
			this.tinfo = tinfo;
		}
		//多个备注对应一个类型
		@ManyToOne
		@JoinColumn(name="ptid")
		public PictureType getPt() {
			return pt;
		}
		public void setPt(PictureType pt) {
			this.pt = pt;
		}
		public TypeInfo(Integer tid, String tinfo, PictureType pt) {
			super();
			this.tid = tid;
			this.tinfo = tinfo;
			this.pt = pt;
		}
		public TypeInfo() {
			super();
			// TODO Auto-generated constructor stub
		}
	
	       
	       
}
