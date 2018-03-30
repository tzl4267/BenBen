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

//亮点配置
@Entity
public class Outstanding {

		//0：没有 1：有
	    private Integer oid;//亮点配置id
	    private Character yx;//倒车影像    
	    private Character qd;//无钥匙启动
	    private Character ty;//胎压检测
	    private Character xh;//定速巡航
	    private Character wd;//车身稳定
	    private Character jr;//无钥匙进入
	    private Character gps;//GPS导航
	    private Character ld;//倒车雷达
	    private SellIntention se;//
	    @Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getOid() {
			return oid;
		}
		public void setOid(Integer oid) {
			this.oid = oid;
		}
		public Character getYx() {
			return yx;
		}
		public void setYx(Character yx) {
			this.yx = yx;
		}
		public Character getQd() {
			return qd;
		}
		public void setQd(Character qd) {
			this.qd = qd;
		}
		public Character getTy() {
			return ty;
		}
		public void setTy(Character ty) {
			this.ty = ty;
		}
		public Character getXh() {
			return xh;
		}
		public void setXh(Character xh) {
			this.xh = xh;
		}
		public Character getWd() {
			return wd;
		}
		public void setWd(Character wd) {
			this.wd = wd;
		}
		public Character getJr() {
			return jr;
		}
		public void setJr(Character jr) {
			this.jr = jr;
		}
		public Character getGps() {
			return gps;
		}
		public void setGps(Character gps) {
			this.gps = gps;
		}
		public Character getLd() {
			return ld;
		}
		public void setLd(Character ld) {
			this.ld = ld;
		}
		@OneToOne
		@JoinColumn(name="sid")
		public SellIntention getSe() {
			return se;
		}
		public void setSe(SellIntention se) {
			this.se = se;
		}
		public Outstanding() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "Outstanding [oid=" + oid + ", yx=" + yx + ", qd=" + qd + ", ty=" + ty + ", xh=" + xh + ", wd=" + wd
					+ ", jr=" + jr + ", gps=" + gps + ", ld=" + ld + "]";
		}
	
	
	
	
	
	
	
	
}