<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!--描述：container开始  --><div class = "container" id="all">
			<!--描述：面板row开始  -->
			<div class = "row">
				<div class = "col-lg-12">
					<div class="panel panel-info"> 
                      <div class="panel-body">
             <form class="form" role="form">
             	
    <div class="control-label col-lg-8 col-sm-8"></div>
    <div class="col-lg-2 col-sm-2"><input type="text" style="position: relative;top:0px;height: 35px;"  id="select_classname" placeholder="品牌  车系 款式 国别"></div>
      <div class="col-lg-2 col-sm-2"><button type="button" class="btn btn-info"  onclick="query();"><i class="glyphicon glyphicon-search"></i>&nbsp;查询</button></div>
                          
             </form>
                    </div>
                   </div>
				</div>				
			</div><!--描述：面板row结束 -->
			
			<!--描述：表格row开始  -->
			<div class = "row">
				<div class = "col-lg-12">
					<table border="1" style="text-align: center;width:100%;">
					<tr><td>车主</td><td>款式</td><td>颜色</td><td>联系方式</td><td>看车地点</td><td>降价信息</td><td>上牌城市</td></tr>
					<c:forEach items="${clist}" var="record">
					<tr><td>${record.user.uname}</td><td>${record.cd.cdname }</td><td>${record.ys}</td><td>${record.user.up}</td><td>${record.kcd}</td><td>${record.jj}</td><td>${record.spcs }</td><td id="sc"></td><td class="hidden">${record.cid}</td></tr>
					</c:forEach>
					</table>
				</div>
			</div><!--描述：表格row结束  -->
		</div><!--描述：container结束  --> 
</body>
</html>