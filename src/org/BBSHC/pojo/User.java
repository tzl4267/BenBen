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

//用户表
@Entity
public class User {

	       private Integer uid;// 用户id
	       private String uname;//用户名称
	       private String upass;//密码
	       private Date uLogin;//注册时间
	       private Date uLast;//上次登陆时间
	       private Vocation voc;// 职业id
	       private String uq;//密保问题
	       private String ua;//密保答案
	       private String up;//用户联系方式
	       @Id
		   @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getUid() {
			return uid;
		}
		public void setUid(Integer uid) {
			this.uid = uid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getUpass() {
			return upass;
		}
		public void setUpass(String upass) {
			this.upass = upass;
		}
		@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
		@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
		public Date getuLogin() {
			return uLogin;
		}
		public void setuLogin(Date uLogin) {
			this.uLogin = uLogin;
		}
		@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
		@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
		public Date getuLast() {
			return uLast;
		}
		public void setuLast(Date uLast) {
			this.uLast = uLast;
		}
		@ManyToOne
		@JoinColumn(name="vid")
		public Vocation getVoc() {
			return voc;
		}
		public void setVoc(Vocation voc) {
			this.voc = voc;
		}
		public String getUq() {
			return uq;
		}
		public void setUq(String uq) {
			this.uq = uq;
		}
		public String getUa() {
			return ua;
		}
		public void setUa(String ua) {
			this.ua = ua;
		}
		public String getUp() {
			return up;
		}
		public void setUp(String up) {
			this.up = up;
		}
		public User(Integer uid, String uname, String upass, Date uLogin, Date uLast, Vocation voc, String uq,
				String ua, String up) {
			super();
			this.uid = uid;
			this.uname = uname;
			this.upass = upass;
			this.uLogin = uLogin;
			this.uLast = uLast;
			this.voc = voc;
			this.uq = uq;
			this.ua = ua;
			this.up = up;
		}
		public User() {
			super();
			// TODO Auto-generated constructor stub
		}
	
	       
	       
}
