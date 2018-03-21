<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"  src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.js"></script>
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
</head>
<body>
 
 
	<table border="1" width="600">
		<tr>
			<td>uid</td>
			<td>uname</td>
			<td>upass</td>
			<td>注册时间</td>
			<td>上次登录时间</td>
			<td>职业id</td>
			<td>密保问题</td>
			<td>密保答案</td>
			<td>用户联系方式</td>
		</tr>
		<c:forEach items="${ul}" var="u">
			<tr>
				<td>${u.uid}</td>
				<td>${u.uname}</td>
				<td>${u.upass}</td>
				<td>${u.uLogin}</td>
				<td>${u.uLast}</td>
				<td>${u.voc}</td>
				<td>${u.uq}</td>
				<td>${u.ua}</td>
				<td>${u.up}</td>
			</tr>
		</c:forEach>
	</table>
 
</body>
</html>