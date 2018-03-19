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

//二手车信息表
@Entity
public class SecondCar {

	     private Integer cid;//信息id
	     private User user;// 车主id
	     private String cp;//车牌号
	     private Date spsj;//上牌时间
	     private Double lc;//行驶里程
	     private Integer ys;// 颜色
	     private String spcs;//上牌城市
	     private String cy;//车源编号
	     private CarDesign cd;// 汽车款式
	     private String jg;//汽车标价
	     private String pc;//车主评车
	     private CheckReport cr;//检测报告
	     private Outstanding os;// 亮点配置
	     private String jj;//降价信息
	     private Emp emp;//销售员 
	     private ProcedureInfo pi;//手续信息id 
	     private String sc;//车辆售卖原因
	     private String zd;//是否置顶
	     private String czt;//信息状态
	     private Character bq;//急售
	     private String ck;//车况
	     @Id
         @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getCid() {
			return cid;
		}
		public void setCid(Integer cid) {
			this.cid = cid;
		}
		//多个二手车对应一个车主
		@ManyToOne
		@JoinColumn(name="uid")
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public String getCp() {
			return cp;
		}
		public void setCp(String cp) {
			this.cp = cp;
		}
		@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
		@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
		public Date getSpsj() {
			return spsj;
		}
		public void setSpsj(Date spsj) {
			this.spsj = spsj;
		}
		public Double getLc() {
			return lc;
		}
		public void setLc(Double lc) {
			this.lc = lc;
		}
		public Integer getYs() {
			return ys;
		}
		public void setYs(Integer ys) {
			this.ys = ys;
		}
		public String getSpcs() {
			return spcs;
		}
		public void setSpcs(String spcs) {
			this.spcs = spcs;
		}
		public String getCy() {
			return cy;
		}
		public void setCy(String cy) {
			this.cy = cy;
		}
		//多个二手车对应一个款式
		@ManyToOne
		@JoinColumn(name="cdid")
		public CarDesign getCd() {
			return cd;
		}
		public void setCd(CarDesign cd) {
			this.cd = cd;
		}
		public String getJg() {
			return jg;
		}
		public void setJg(String jg) {
			this.jg = jg;
		}
		public String getPc() {
			return pc;
		}
		public void setPc(String pc) {
			this.pc = pc;
		}
		//一个二手车对应一个检测报告
		@OneToOne
		@JoinColumn(name="crid")
		public CheckReport getCr() {
			return cr;
		}
		public void setCr(CheckReport cr) {
			this.cr = cr;
		}
		//一个二手车对应一个亮点配置信息
		@OneToOne
		@JoinColumn(name="oid")
		public Outstanding getOs() {
			return os;
		}
		public void setOs(Outstanding os) {
			this.os = os;
		}
		public String getJj() {
			return jj;
		}
		public void setJj(String jj) {
			this.jj = jj;
		}
		//多个二手车对应一个销售员
		@ManyToOne
		@JoinColumn(name="seid")
		public Emp getEmp() {
			return emp;
		}
		public void setEmp(Emp emp) {
			this.emp = emp;
		}
		//一个二手车对应一个手续信息id
		@OneToOne
		@JoinColumn(name="sxid")
		public ProcedureInfo getPi() {
			return pi;
		}
		public void setPi(ProcedureInfo pi) {
			this.pi = pi;
		}
		public String getSc() {
			return sc;
		}
		public void setSc(String sc) {
			this.sc = sc;
		}
		public String getZd() {
			return zd;
		}
		public void setZd(String zd) {
			this.zd = zd;
		}
		public String getCzt() {
			return czt;
		}
		public void setCzt(String czt) {
			this.czt = czt;
		}
		public Character getBq() {
			return bq;
		}
		public void setBq(Character bq) {
			this.bq = bq;
		}
		public String getCk() {
			return ck;
		}
		public void setCk(String ck) {
			this.ck = ck;
		}
		public SecondCar() {
			super();
			// TODO Auto-generated constructor stub
		}
	     
	     
}
