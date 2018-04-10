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
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

//手续信息
@Entity
public class ProcedureInfo {

	      private Integer sxid;// 信息id
	      private Date nj;//年检到期时间
	      private Date jqx;//交强险到期时间
	      private Character gh;//过户次数
	      private Character bx;//有无购车发票 0:没有 1:有
	      private Character byd;//车辆保养地点 0:非四S店 1:四S店
	      private Date syx;//商业险到期时间
	      private Character gzs;//有无车辆购置完税税证明 0:没有 1:有
	      private Character gz;//有无改装 0:没有 1:有
	      private SellIntention si;//卖车意向信息
	     
		@Id
		  @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getSxid() {
			return sxid;
		}
		public void setSxid(Integer sxid) {
			this.sxid = sxid;
		}
		@JsonFormat(pattern="yyyy-MM-dd")
		@DateTimeFormat(pattern="yyyy-MM-dd")
		public Date getNj() {
			return nj;
		}
		public void setNj(Date nj) {
			this.nj = nj;
		}
		@JsonFormat(pattern="yyyy-MM-dd")
		@DateTimeFormat(pattern="yyyy-MM-dd")
		public Date getJqx() {
			return jqx;
		}
		public void setJqx(Date jqx) {
			this.jqx = jqx;
		}
		
		public Character getGh() {
			return gh;
		}
		public void setGh(Character gh) {
			this.gh = gh;
		}
		public Character getBx() {
			return bx;
		}
		public void setBx(Character bx) {
			this.bx = bx;
		}
		public Character getbyd() {
			return byd;
		}
		public void setbyd(Character byd) {
			this.byd = byd;
		}
		@JsonFormat(pattern="yyyy-MM-dd")
		@DateTimeFormat(pattern="yyyy-MM-dd")
		public Date getSyx() {
			return syx;
		}
		public void setSyx(Date syx) {
			this.syx = syx;
		}
		public Character getGzs() {
			return gzs;
		}
		public void setGzs(Character gzs) {
			this.gzs = gzs;
		}
		public Character getGz() {
			return gz;
		}
		public void setGz(Character gz) {
			this.gz = gz;
		}
		@OneToOne
		@JoinColumn(name="sid")
		public SellIntention getSi() {
			return si;
		}
		public void setSi(SellIntention se) {
			this.si = se;
		}
		public ProcedureInfo() {
			super();
			// TODO Auto-generated constructor stub
		}
	
	
}
