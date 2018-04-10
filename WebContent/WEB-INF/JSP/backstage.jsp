<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-inverse">
 	<div class="navbar-header">
  <img src="${pageContext.request.contextPath}/img/daohang/1.jpg" style="position: relative;left:250px;">
  <font color="" style="position: relative;left:300px;">犇犇二手车</font>
  </div>
           </div>
           <form action="${pageContext.request.contextPath}/abc/LoginCheck" method="post">
<div class="container" style="position: relative;top:300px;">
 <div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-1">账号:</div>
  <div class="col-md-3"><input type="text" name="ename"/></div>
  <div class="col-md-4"></div>
</div>
 <div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-1"></div>
  <div class="col-md-3"></div>
  <div class="col-md-4"></div>
</div>

 <div class="row">
   <div class="col-md-4"></div>
  <div class="col-md-1">密码:</div>
  <div class="col-md-3"><input type="password" name="pass"/></div>
  <div class="col-md-4"></div>
</div>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-1"></div>
  <div class="col-md-3"></div>
  <div class="col-md-4"></div>
</div>
 <div class="row">
   <div class="col-md-4"></div>
  <div class="col-md-1"></div>
  <div class="col-md-3"></div>
  <div class="col-md-4"></div>
</div>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-1"></div>
  <div class="col-md-3"></div>
  <div class="col-md-4"></div>
</div>
 <div class="row">
   <div class="col-md-4"></div>
  <div class="col-md-4"><button class="btn">登陆</button></div>
  <div class="col-md-2"><a href="#"><font color="red">忘记密码？</font></a></div>
  <div class="col-md-2"></div>
</div>
</div></form>


</body>
</html>