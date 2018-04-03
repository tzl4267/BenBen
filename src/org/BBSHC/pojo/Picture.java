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
import javax.persistence.OneToOne;

//汽车图片
@Entity
public class Picture {	
	         private Integer pid;//图片id
	         private SecondCar sc;//二手车id
	         private String purl;//路径
	         private TypeInfo tinfo;//备注
	         private String pinfo;//图片信息
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
			
			//一个图片对应一个备注
			@OneToOne
			@JoinColumn(name="tid")
			public TypeInfo getTinfo() {
				return tinfo;
			}
			public void setTinfo(TypeInfo tinfo) {
				this.tinfo = tinfo;
			}
			
			public String getPinfo() {
				return pinfo;
			}
			public void setPinfo(String pinfo) {
				this.pinfo = pinfo;
			}
			public Picture() {
				super();
				// TODO Auto-generated constructor stub
			}
			
	
}
	

