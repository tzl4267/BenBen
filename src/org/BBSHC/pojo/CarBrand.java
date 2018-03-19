/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//汽车品牌
@Entity
public class CarBrand {

	        private Integer cbid;// 品牌id
	        private String cbname;//品牌名称
	        private String cbgb;//品牌国别
	        
	        @Id
	  	  @GeneratedValue(strategy=GenerationType.IDENTITY)
			public Integer getCbid() {
				return cbid;
			}
			public void setCbid(Integer cbid) {
				this.cbid = cbid;
			}
			public String getCbname() {
				return cbname;
			}
			public void setCbname(String cbname) {
				this.cbname = cbname;
			}
			public String getCbgb() {
				return cbgb;
			}
			public void setCbgb(String cbgb) {
				this.cbgb = cbgb;
			}
			public CarBrand(Integer cbid, String cbname, String cbgb) {
				super();
				this.cbid = cbid;
				this.cbname = cbname;
				this.cbgb = cbgb;
			}
			public CarBrand() {
				super();
				// TODO Auto-generated constructor stub
			}
			@Override
			public String toString() {
				return "CarBrand [cbid=" + cbid + ", cbname=" + cbname + ", cbgb=" + cbgb + "]";
			}
	
	
	
	
	
	
}
