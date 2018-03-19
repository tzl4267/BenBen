/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//车辆类型
@Entity
public class CarType {

	  private Integer ctid;//类型id
	  private String ctname;//类型名称
	  @Id
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCtid() {
		return ctid;
	}
	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}
	public String getCtname() {
		return ctname;
	}
	public void setCtname(String ctname) {
		this.ctname = ctname;
	}
	public CarType(Integer ctid, String ctname) {
		super();
		this.ctid = ctid;
		this.ctname = ctname;
	}
	public CarType() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CarType [ctid=" + ctid + ", ctname=" + ctname + "]";
	}
	
	
}
