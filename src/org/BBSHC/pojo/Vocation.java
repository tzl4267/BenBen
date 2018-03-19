/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//用户职业
@Entity
public class Vocation {

	
	  private Integer vid;// 职业id
	  private String vname;//职业名称
	  
	  @Id
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getVid() {
		return vid;
	}
	public void setVid(Integer vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	@Override
	public String toString() {
		return "Vocation [vid=" + vid + ", vname=" + vname + "]";
	}
	public Vocation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Vocation(Integer vid, String vname) {
		super();
		this.vid = vid;
		this.vname = vname;
	}
	  
	  
}
