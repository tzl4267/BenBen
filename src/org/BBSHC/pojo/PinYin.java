/**
 * 
 */
package org.BBSHC.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//拼音首字母
@Entity
public class PinYin {

	      private Integer pyid;// 拼音首字母id
          private String py;//首字母
          @Id
	 	  @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getPyid() {
			return pyid;
		}
		public void setPyid(Integer pyid) {
			this.pyid = pyid;
		}
		public String getPy() {
			return py;
		}
		public void setPy(String py) {
			this.py = py;
		}
		public PinYin() {
			super();
			// TODO Auto-generated constructor stub
		}
		public PinYin(Integer pyid, String py) {
			super();
			this.pyid = pyid;
			this.py = py;
		}
          
          
}