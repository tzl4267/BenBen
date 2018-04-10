<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
		
<div class="container">
<div class="row">
<div class="col-lg-12 col-sm-12">

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	                <span class="sr-only">切换导航</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	          	  </button>
					<img src="${pageContext.request.contextPath}/img/daohang/1.jpg">
				</div>
				<!-- end of navbar-header -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active" id="a1">
							<a href="${pageContext.request.contextPath}/app/search_ar" style="font-size: large;">预约管理</a>
						</li>
						<li  id="a2">
							<a href="${pageContext.request.contextPath}/abc/update_selectEmp" style="font-size: large;">个人信息</a>
						</li>
						<li id="a3">
							<a href="${pageContext.request.contextPath}/app/searchSecondCar" style="font-size: large;">代卖车辆</a>
						</li>
						<c:if test="${emp.dept.did=='1'}"><li id="a4"><a href="${pageContext.request.contextPath}/home/list5" style="font-size: large;">砍价管理</a></li></c:if>
					</ul>
					
				</div>
				<!-- end of navbar-collapse -->
			</div>
		</nav>
</div>
</div>
</div>

</body>
</html>