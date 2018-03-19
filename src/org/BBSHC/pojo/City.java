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

//城市
@Entity
public class City {

	        private Integer csid;//城市id 
	        private String cqp;//城市拼音
	        private String cname;//城市名称(汉字)
	        private PinYin py;// 拼音首字母id
	        @Id
	        @GeneratedValue(strategy=GenerationType.IDENTITY)
			public Integer getCsid() {
				return csid;
			}
			public void setCsid(Integer csid) {
				this.csid = csid;
			}
			public String getCqp() {
				return cqp;
			}
			public void setCqp(String cqp) {
				this.cqp = cqp;
			}
			public String getCname() {
				return cname;
			}
			public void setCname(String cname) {
				this.cname = cname;
			}
			@ManyToOne
			@JoinColumn(name="pyid")
			public PinYin getPy() {
				return py;
			}
			public void setPy(PinYin py) {
				this.py = py;
			}
			public City() {
				super();
				// TODO Auto-generated constructor stub
			}
			public City(Integer csid, String cqp, String cname, PinYin py) {
				super();
				this.csid = csid;
				this.cqp = cqp;
				this.cname = cname;
				this.py = py;
			}
			
	      
}
