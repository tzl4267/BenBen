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

//卖车记录
@Entity
public class SellRecord {

	private Integer srid;//卖车记录
    private SecondCar sc;// 二手车id
    private User user;// 用户id
    @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSrid() {
		return srid;
	}
	public void setSrid(Integer srid) {
		this.srid = srid;
	}
	//个记录对应一辆车
	@OneToOne
	@JoinColumn(name="cid")
	public SecondCar getSc() {
		return sc;
	}
	public void setSc(SecondCar sc) {
		this.sc = sc;
	}
	//多个记录对应同一个人
	@ManyToOne
	@JoinColumn(name="uid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public SellRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
