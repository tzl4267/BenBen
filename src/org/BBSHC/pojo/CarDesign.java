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

//汽车款式
@Entity
public class CarDesign {

	
	    private Integer cdid;// 款式id
	    private String cdname;//款式名称
	    private Character bs;// 变速箱 0：不限 1：自动 2：手动
	    private Character dr;// 驱动形式 0：不限 1：两驱 2：四驱
	   // private Character lc;//车辆行驶里程 0：不限 
	    private Character pl;//排量 0：不限 1：1-1.6 2：1.6-2.0 3：2.0-3.0 4：3.0-4.0 5：4.0以上
	    private Character pf;//排放标准  0：不限 1：国二 2：国三 3：国四
	    private Character ft;//燃料类型 0：不限 1：汽油 2：柴油 3：混动 4：电动
	    private Character zw;//座位数量 0：不限 1：两座  
	    private CarSeries cs;//款式所属车系
	    
	    @Id
	     @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getCdid() {
			return cdid;
		}
		public void setCdid(Integer cdid) {
			this.cdid = cdid;
		}
		public String getCdname() {
			return cdname;
		}
		public void setCdname(String cdname) {
			this.cdname = cdname;
		}
		public Character getBs() {
			return bs;
		}
		public void setBs(Character bs) {
			this.bs = bs;
		}
		public Character getDr() {
			return dr;
		}
		public void setDr(Character dr) {
			this.dr = dr;
		}
		/*public Character getLc() {
			return lc;
		}
		public void setLc(Character lc) {
			this.lc = lc;
		}*/
		public Character getPl() {
			return pl;
		}
		public void setPl(Character pl) {
			this.pl = pl;
		}
		public Character getPf() {
			return pf;
		}
		public void setPf(Character pf) {
			this.pf = pf;
		}
		public Character getFt() {
			return ft;
		}
		public void setFt(Character ft) {
			this.ft = ft;
		}
		public Character getZw() {
			return zw;
		}
		public void setZw(Character zw) {
			this.zw = zw;
		}
		//多个款式对应一个车系
		@ManyToOne
		@JoinColumn(name="csid")
		public CarSeries getCs() {
			return cs;
		}
		public void setCs(CarSeries cs) {
			this.cs = cs;
		}
		public CarDesign(Integer cdid, String cdname, Character bs, Character dr, Character pl,
				Character pf, Character ft, Character zw, CarSeries cs) {
			super();
			this.cdid = cdid;
			this.cdname = cdname;
			this.bs = bs;
			this.dr = dr;
			//this.lc = lc;
			this.pl = pl;
			this.pf = pf;
			this.ft = ft;
			this.zw = zw;
			this.cs = cs;
		}
		public CarDesign() {
			super();
			// TODO Auto-generated constructor stub
		}
	   
        
}