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

//车系
@Entity
public class CarSeries {

	     private Integer csid;//车系id
	     private String csname;//车系名称
	     private CarBrand cb;//所属品牌
	     private CarType ct;// 所属类型
	     
	     
	     @Id
	     @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getCsid() {
			return csid;
		}
		public void setCsid(Integer csid) {
			this.csid = csid;
		}
		public String getCsname() {
			return csname;
		}
		public void setCsname(String csname) {
			this.csname = csname;
		}
		//多个车系对应一个品牌
		@ManyToOne
		@JoinColumn(name="cbid")
		public CarBrand getCb() {
			return cb;
		}
		public void setCb(CarBrand cb) {
			this.cb = cb;
		}
		//多个车系对应一个类型
		@ManyToOne
		@JoinColumn(name="ctid")
		public CarType getCt() {
			return ct;
		}
		public void setCt(CarType ct) {
			this.ct = ct;
		}
		public CarSeries(Integer csid, String csname, CarBrand cb, CarType ct) {
			super();
			this.csid = csid;
			this.csname = csname;
			this.cb = cb;
			this.ct = ct;
		}
		public CarSeries() {
			super();
			// TODO Auto-generated constructor stub
		}
	     
	     
	
}
