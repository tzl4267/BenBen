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

//汽车图片
@Entity
public class Picture {	
	         private Integer pid;//图片id
	         private SecondCar sc;//二手车id
	         private String purl;//路径
	         private TypeInfo ti;;
	         @Id
		 	  @GeneratedValue(strategy=GenerationType.IDENTITY)
			public Integer getPid() {
				return pid;
			}
			public void setPid(Integer pid) {
				this.pid = pid;
			}
			//多张图片对应一辆车
			@ManyToOne
			@JoinColumn(name="cid")
			public SecondCar getSc() {
				return sc;
			}
			public void setSc(SecondCar sc) {
				this.sc = sc;
			}
			public String getPurl() {
				return purl;
			}
			public void setPurl(String purl) {
				this.purl = purl;
			}
			
			//多张图片对应一个备注
			@ManyToOne
			@JoinColumn(name="tid")
			public TypeInfo getTi() {
				return ti;
			}
			public void setTi(TypeInfo ti) {
				this.ti = ti;
			}				
			
			public Picture() {
				super();
				// TODO Auto-generated constructor stub
			}
			
}
