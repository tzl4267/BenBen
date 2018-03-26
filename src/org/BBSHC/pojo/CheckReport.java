/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

//检测报告
@Entity
public class CheckReport {
	           private Integer crid;// 检测报告id
	           private String sg;//重大事故排查
	           private String hx;//核心部件检测
	           private String ms;//磨损程度评估
	           private String jb;//常见功能检查
	           private String qd;//启动检测
	           private String jg;//检测结果
	           private Character hg;//是否合格 0:不合格 1:合格
	           private Emp emp;//检测专员id
	           private SellIntention se;//卖车意向id
	           @Id
	           @GeneratedValue(strategy=GenerationType.IDENTITY)
			public Integer getCrid() {
				return crid;
			}
			public void setCrid(Integer crid) {
				this.crid = crid;
			}
			public String getSg() {
				return sg;
			}
			public void setSg(String sg) {
				this.sg = sg;
			}
			public String getHx() {
				return hx;
			}
			public void setHx(String hx) {
				this.hx = hx;
			}
			public String getMs() {
				return ms;
			}
			public void setMs(String ms) {
				this.ms = ms;
			}
			public String getJb() {
				return jb;
			}
			public void setJb(String jb) {
				this.jb = jb;
			}
			public String getQd() {
				return qd;
			}
			public void setQd(String qd) {
				this.qd = qd;
			}
			public String getJg() {
				return jg;
			}
			public void setJg(String jg) {
				this.jg = jg;
			}
			public Character getHg() {
				return hg;
			}
			public void setHg(Character hg) {
				this.hg = hg;
			}
			@OneToOne
			@JoinColumn(name="jeid")
			public Emp getEmp() {
				return emp;
			}
			public void setEmp(Emp emp) {
				this.emp = emp;
			}
			@OneToOne
			@JoinColumn(name="sid")
			public SellIntention getSe() {
				return se;
			}
			public void setSe(SellIntention se) {
				this.se = se;
			}
			public CheckReport(Integer crid, String sg, String hx, String ms, String jb, String qd, String jg,
					Character hg, Emp emp, SellIntention se) {
				super();
				this.crid = crid;
				this.sg = sg;
				this.hx = hx;
				this.ms = ms;
				this.jb = jb;
				this.qd = qd;
				this.jg = jg;
				this.hg = hg;
				this.emp = emp;
				this.se = se;
			}
			public CheckReport() {
				super();
				// TODO Auto-generated constructor stub
			}
	
	
	
	
	
	
}
