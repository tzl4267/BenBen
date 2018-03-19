/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//ALTER TABLE tablename AUTO_INCREMENT=10000  修改
//员工部门
@Entity
public class Dept {

	    private Integer did; //部门id
	    private String dname;//部门名称
	    private String dinfo;//部门简介
	    
	    
	    @Id
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getDid() {
			return did;
		}
		public void setDid(Integer did) {
			this.did = did;
		}
		public String getDname() {
			return dname;
		}
		public void setDname(String dname) {
			this.dname = dname;
		}
		public String getDinfo() {
			return dinfo;
		}
		public void setDinfo(String dinfo) {
			this.dinfo = dinfo;
		}
		public Dept() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Dept(Integer did, String dname, String dinfo) {
			super();
			this.did = did;
			this.dname = dname;
			this.dinfo = dinfo;
		}
		@Override
		public String toString() {
			return "Dept [did=" + did + ", dname=" + dname + ", dinfo=" + dinfo + "]";
		}
	    
	    
	    
}
