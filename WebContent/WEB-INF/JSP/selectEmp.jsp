<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="600">
<tr>
<td>eid</td>
<td>ename</td>
<td>age</td>
<td>sex</td>
<td>eurl</td>
<td>ph</td>
<td>esta</td>
<td>dname</td>
<td>操作</td>
</tr>
<c:forEach items="${el}" var="e">
<tr>
<td>${e.eid}</td>
<td>${e.ename}</td>
<td>${e.age}</td>
<td>${e.sex}</td>
<td>${e.eurl}</td>
<td>${e.ph}</td>
<td>${e.esta}</td>
<td>${e.dept.dname}</td>
<td><a href="${pageContext.request.contextPath}/abc/update_select?eid=${e.eid}"><button>修改</button></a></td>
</tr>
</c:forEach>
</table>
</body>
</html>