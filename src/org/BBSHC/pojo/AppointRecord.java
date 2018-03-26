/**
 * 
 */
package org.BBSHC.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

//约看记录
@Entity
public class AppointRecord {
	
	private Integer arid;//约看记录
    private SecondCar sc;// 二手车id
    private User user;// 用户id
    private Character asta;//信息状态0:未处理 1:已处理
    private Date ardate;//看车时间
    @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getArid() {
		return arid;
	}
	public void setArid(Integer arid) {
		this.arid = arid;
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
	//多个记录对应同一个人
	@ManyToOne
	@JoinColumn(name="uid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Character getAsta() {
		return asta;
	}
	public void setAsta(Character asta) {
		this.asta = asta;
	}
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	public Date getArdate() {
		return ardate;
	}
	public void setArdate(Date ardate) {
		this.ardate = ardate;
	}
	public AppointRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
