<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel = "stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"> </script>
   <script type ="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet"  href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css">
   <script type ="text/javascript" src = "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
   <script type = "text/javascript" src= "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
   
   <style>
   #img {
	   position: relative;
	   left: 5px;
	   top: 100px;
	 }
   #div1 {
	   position: relative;
	   left: 580px;
	   top: 80px;
	 }
   #div2 {
	   position: relative;
	   left: 600px;
	   top: 90px;
	 }
   #ff {
	   position: relative;
	   left: 115px;
	   top: 150px;
	 }
   #div3 {
	   position: relative;
	   left: 135px;
	   top: 125px;
	 }
   #div4 {
	   position: relative;
	   left: 0px;
	   top: 140px;
	 }
   #hh {
	   position: relative;
	   left: 116px;
	   top: 150px;
	 }
   </style>
<body>
<jsp:include page="daohang.jsp"></jsp:include>
		<center>
		<img id="img" src="${pageContext.request.contextPath}/img/dui.png">
		</center>
	<div id="div1">
	<h2>恭喜,您已预约成功！</h2>
	</div>
	<div id="div2">
	<font color="gray">稍后我们的评估师会与您联系</font>
	</div>
	<font id="ff" color="red" size="5"><span class="glyphicon glyphicon-flag"></span></font>
	<div id="div3">
	<h4>&nbsp;证件准备&nbsp;<font color="gray" size="3">验车师、评估师要检查证件哦，您需要准备如下证件(证件信息仅用于确认，不会对外展示)</font></h4>
	</div>
	<div class="container" id="div4">
	<table class="table table-bordered">
	<tr class="active">
	<td><span class="badge">1</span>&nbsp;身份证</td>
	<td><span class="badge">2</span>&nbsp;保单</td>
	</tr>
	<tr class="success">
	<td><span class="badge">3</span>&nbsp;行驶证</td>
	<td><span class="badge">4</span>&nbsp;购置税本及购置税票</td>
	</tr>
	<tr class="warning">
	<td><span class="badge">5</span>&nbsp;车辆登记证</td>
	<td><span class="badge">6</span>&nbsp;新车购车发票或二手车过户发票</td>
	</tr>
	<tr class="danger">
	<td><span class="badge">7</span>&nbsp;车钥匙</td>
	<td></td>
	</tr>
	</table>
	</div>
	<h5 id="hh">洗车建议：评估师会用专业的单反为您的爱车拍摄写真集，所以验车前建议您给爱车洗个澡，整理下后备箱。好卖相才有好的价格</h5>
	
</body>
</html>