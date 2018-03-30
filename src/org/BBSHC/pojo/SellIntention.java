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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

//卖车意向信息表
@Entity
public class SellIntention {

	       private Integer sid;//记录id
	       private CarDesign cd;//款式id
	       private City city;//车辆所在地
	       private Character sNative;//是否是当地车 0：不是 1：是 
	       private Character gh;//过户次数 0,1,2,3,4次以上
	       private Date sp;//初次上牌时间
	       private Character ck;//车况 
	       private Character yq;//预期售出时间 （不是时间）
	       private Date kcsj;//看车时间 
	       private String kcd;//看车地点
	       private Character zt;//处理状态 0：未处理 1：已处理
	       private Emp se;//销售专员
	       private Emp je ;//检测专员
           private User user;//车主id
           @Id
 		  @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getSid() {
			return sid;
		}
		public void setSid(Integer sid) {
			this.sid = sid;
		}
		//多个信息对应一个汽车款式
		@ManyToOne
		@JoinColumn(name="cdid")
		public CarDesign getCd() {
			return cd;
		}
		public void setCd(CarDesign cd) {
			this.cd = cd;
		}
		//多个信息对应一个城市
		@ManyToOne
		@JoinColumn(name="csid")
		public City getCity() {
			return city;
		}
		public void setCity(City city) {
			this.city = city;
		}
		public Character getsNative() {
			return sNative;
		}
		public void setsNative(Character sNative) {
			this.sNative = sNative;
		}
		public Character getGh() {
			return gh;
		}
		public void setGh(Character gh) {
			this.gh = gh;
		}
		@JsonFormat(pattern="yyyy-MM-dd")
		@DateTimeFormat(pattern="yyyy-MM-dd")
		public Date getSp() {
			return sp;
		}
		public void setSp(Date sp) {
			this.sp = sp;
		}
		public Character getCk() {
			return ck;
		}
		public void setCk(Character ck) {
			this.ck = ck;
		}
		public Character getYq() {
			return yq;
		}
		public void setYq(Character yq) {
			this.yq = yq;
		}
		@DateTimeFormat(pattern="yyyy-MM-dd")
		@JsonFormat(pattern="yyyy-MM-dd")
		public Date getKcsj() {
			return kcsj;
		}
		public void setKcsj(Date kcsj) {
			this.kcsj = kcsj;
		}
		
		public String getKcd() {
			return kcd;
		}
		public void setKcd(String kcd) {
			this.kcd = kcd;
		}
		public Character getZt() {
			return zt;
		}
		public void setZt(Character zt) {
			this.zt = zt;
		}
		//多个信息对应一个销售员
		@ManyToOne
		@JoinColumn(name="seid")
		public Emp getSe() {
			return se;
		}
		public void setSe(Emp se) {
			this.se = se;
		}
		//多个信息对应一个检测员
		@ManyToOne
		@JoinColumn(name="jeid")
		public Emp getJe() {
			return je;
		}
		public void setJe(Emp je) {
			this.je = je;
		}
		//多个信息对应一个用户
		@ManyToOne
		@JoinColumn(name="uid")
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public SellIntention(Integer sid, CarDesign cd, City city, Character sNative, Character gh, Date sp, Character ck,
				Character yq, Date kcsj, String kcd, Character zt, Emp se, Emp je, User user) {
			super();
			this.sid = sid;
			this.cd = cd;
			this.city = city;
			this.sNative = sNative;
			this.gh = gh;
			this.sp = sp;
			this.ck = ck;
			this.yq = yq;
			this.kcsj = kcsj;
			this.kcd = kcd;
			this.zt = zt;
			this.se = se;
			this.je = je;
			this.user = user;
		}
		public SellIntention() {
			super();
			// TODO Auto-generated constructor stub
		}
           
}