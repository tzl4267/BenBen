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

//收藏记录
@Entity
public class CollectRecord {


	private Integer crid;//收藏记录
    private SecondCar sc;// 二手车id
    private User user;// 用户id
    @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCrid() {
		return crid;
	}
	public void setCrid(Integer crid) {
		this.crid = crid;
	}
	//多记录对应一辆车
	@ManyToOne
	@JoinColumn(name="cid")
	public SecondCar getSc() {
		return sc;
	}
	public void setSc(SecondCar sc) {
		this.sc = sc;
	}
	//一个记录对应同一个人
	@OneToOne
	@JoinColumn(name="uid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public CollectRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	
	
}
