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
//砍价记录
@Entity
public class BargainRecord {

	private Integer bid;//买车记录
    private SecondCar sc;// 二手车id
    private User user;// 用户id
    private Double lxjg;//卖家理想价格
    private Character brsta;//记录状态 处理/未处理
    private String rf;//卖家回复
    @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
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
	
	
	public Double getLxjg() {
		return lxjg;
	}
	public void setLxjg(Double lxjg) {
		this.lxjg = lxjg;
	}
	public Character getBrsta() {
		return brsta;
	}
	public void setBrsta(Character brsta) {
		this.brsta = brsta;
	}
	public String getRf() {
		return rf;
	}
	public void setRf(String rf) {
		this.rf = rf;
	}
	public BargainRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	
}
