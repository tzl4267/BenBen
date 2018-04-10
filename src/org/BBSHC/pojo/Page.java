/**
 * 
 */
package org.BBSHC.pojo;

public class Page {
private int count;//所有信息总数
private int number;//每页显示信息数量
private int allPage;//页面总数
private int nowPage;//当前页数

public Page(){
	this.setNumber(10);;
}
public Page(int number){
	this.setNumber(number);
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
public int getAllPage() {
	int b = this.getNumber();
	int a = this.getCount();
	//总页数
	this.allPage = a%b==0?a/b:a/b+1;
	return allPage;
}
public void setAllPage(int allPage) {
	this.allPage = allPage;
}
public int getNowPage() {
	return nowPage;
}
public void setNowPage(int nowPage) {
	this.nowPage = nowPage;
}

}
