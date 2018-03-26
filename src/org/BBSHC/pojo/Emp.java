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

//员工表
@Entity
public class Emp {

	    private Integer eid;//员工id
	    private String epass;
	    public String getEpass() {
			return epass;
		}
		public void setEpass(String epass) {
			this.epass = epass;
		}
		private String ename;//姓名
	    private String age;//年龄
	    private Character sex;//性别
	    private String eurl;//图片路径
	    private String ph;//联系方式
	    private Character esta;//员工状态 0:工作中 1:待分配
	    private Dept dept;//部门
	    @Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		public Integer getEid() {
			return eid;
		}
		public void setEid(Integer eid) {
			this.eid = eid;
		}
		public String getEname() {
			return ename;
		}
		public void setEname(String ename) {
			this.ename = ename;
		}
		public String getAge() {
			return age;
		}
		public void setAge(String age) {
			this.age = age;
		}
		public Character getSex() {
			return sex;
		}
		public void setSex(Character sex) {
			this.sex = sex;
		}
		public String getEurl() {
			return eurl;
		}
		public void setEurl(String eurl) {
			this.eurl = eurl;
		}
		public String getPh() {
			return ph;
		}
		public void setPh(String ph) {
			this.ph = ph;
		}
		public Character getEsta() {
			return esta;
		}
		public void setEsta(Character esta) {
			this.esta = esta;
		}
		@ManyToOne
		@JoinColumn(name="did")
		public Dept getDept() {
			return dept;
		}
		public void setDept(Dept dept) {
			this.dept = dept;
		}
		public Emp(Integer eid,String epass, String ename, String age, Character sex, String eurl, String ph, Character esta, Dept dept) {
			super();
			this.eid = eid;
			this.epass = epass;
			this.ename = ename;
			this.age = age;
			this.sex = sex;
			this.eurl = eurl;
			this.ph = ph;
			this.esta = esta;
			this.dept = dept;
		}
		public Emp() {
			super();
			// TODO Auto-generated constructor stub
		}
	    
	
	
	
	
}
