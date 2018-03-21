<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.0.min.js"> </script>
   <script type ="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet"  href="${pageContext.request.contextPath}/js/bootstrap/bootstrap-table.min.css">
   <script type ="text/javascript" src = "${pageContext.request.contextPath}/js/bootstrap/bootstrap-table.min.js"></script>
   <script type = "text/javascript" src= "${pageContext.request.contextPath}/js/bootstrap/bootstrap-table-zh-CN.min.js"></script>
<body>
<center>
<c:forEach items="${sList}" var="s">
	<table border="1" width="1200">		
		<tr align="center">
			<td width="800"><font color="black" size="4">${s.cd.cdname}</font>			
			</td>			
			<td align="right" height="30"><input type="text" value = "请输入关键词"></td>
		</tr>
		
		<tr align="center">
			<td rowspan="7" width="500"><img src="img/7.jpg"></td>
			<td width="700"><font color="black" size="5">${s.cd.cdname}</font></td>
		</tr>
		
		<tr align="center">			
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		</tr>
		
		<tr>			
			<td><font size="5" color="#000000">买家报价</font>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red" size="6">￥${s.jg}</font></td>
		</tr>
		
		<tr>			
			<td>服务费:&nbsp;&nbsp;&nbsp;<font color="red" size="5">3000</font><br/>
				服务项目:<label><input name="Service" type="checkbox" value="" />整车质保</label> 
                        <label><input name="Service" type="checkbox" value="" />14天可退 </label> 
                        <label><input name="Service" type="checkbox" value="" />249项车况检测 </label> 
			</td>
		</tr>
		
		<tr>			
			<td><font color="black" size="4">${s.spsj}</font>|<font color="black" size="4">${s.lc}</font>|
				<font color="black" size="4">国四</font>|<font color="black" size="4">${s.cd.pl}L</font>|
				<font color="black" size="4">${s.spcs}</font>|
			<br/>上牌时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公里数|&nbsp;&nbsp;&nbsp;外迁查询 |&nbsp;&nbsp;&nbsp;排量|
			&nbsp;&nbsp;&nbsp;上牌城市|</td>
		</tr>
		
		<tr>			
			<td><button class="btn btn-danger "><span class='glyphicon glyphicon-earphone'></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预约看车</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-primary "><span class='glyphicon glyphicon-usd'></span>&nbsp;&nbsp;&nbsp;&nbsp;砍价</button></td>
		</tr>
		
		<tr>
			<td>车源号:<font color="#000000" size="4">${s.cy}</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收藏</button></td>
		</tr>
	</table>
</c:forEach>
</center>
</body>
</html>
