<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<style type="text/css">

</style>

</head>
<body>
<jsp:include page="daohang.jsp"></jsp:include>
      <div style="width: 1200px;margin: 0px auto;">
		<div style="width: 1200px;height: 165px;background-color: #F8F8F8;margin:0px auto" >
		<table >
			<tr>
				<td >品&nbsp;牌:</td>
				<td><a href="${pageContext.request.contextPath}/home/list" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a></td>
				<f:forEach items="${cb}" var="carbrand">
				<td><a href="${pageContext.request.contextPath}/home/list2?id=${carbrand.cbid}" style="text-decoration: none;color: black">&nbsp;${carbrand.cbname}&nbsp;</a></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>
		<table >
			<tr>
				<td>车&nbsp;系:</td>
				<td><a href="${pageContext.request.contextPath}/home/list" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a></td>
				<f:forEach items="${cs}" var="carseries">
				<td><a href="" style="text-decoration: none;color: black">&nbsp;${carseries.csname}&nbsp;</a></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>

		<table  >
			<tr>
				<td>价&nbsp;格:</td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=0" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=1" style="text-decoration: none;color: black">&nbsp;三万以下&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=2" style="text-decoration: none;color: black">&nbsp;3-5万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=3" style="text-decoration: none;color: black">&nbsp;5-10万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=4" style="text-decoration: none;color: black">&nbsp;10-15万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=5" style="text-decoration: none;color: black">&nbsp;15-20万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=6" style="text-decoration: none;color: black">&nbsp;20-30万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=7" style="text-decoration: none;color: black">&nbsp;30-60万&nbsp;</a></td>
				<td><a href="${pageContext.request.contextPath}/home/list3?id=8" style="text-decoration: none;color: black">&nbsp;60万以上&nbsp;</a></td>
				
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>

		<table >
			<tr>
				<td>更&nbsp;多:</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;车型&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.cs.ct.ctname}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;车龄&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="" var="secondcar">
						<option>&nbsp;--&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
			
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;变速箱&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.bs}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;里程&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.lc}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;排量&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.pl}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;排量标准&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.pf}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;国别&nbsp;&nbsp;&nbsp;</option>
				<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.cs.cb.cbgb}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;驱动&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.dr}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;燃烧类型&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.ft}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;颜色&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.ys}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;亮点配置&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.os.yx}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;座位&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.zw}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
			</tr>
		</table> 
	</div>
	
		<div>
		<table border="1" width="300" height="30">
			<tr align="center">
				<td><a href="">价格最高</a></td>
				<td><a href="">价格最低</a></td>
				<td><a href="">最新发布</a></td>
				<td><a href="">里程最短</a></td>
			</tr>
			
		</table>
		</div><br>
		<div class="row">
		<f:forEach items="${sc}" var="secondcar">
			<div class="col-lg-3 col-sm-3"><a href="#" style="text-decoration: none;color: black"><div style="float: left; ">
			<span style="color: red;position: relative;top:22px;left:93%;">新</span>
					<div ><img  src="${pageContext.request.contextPath}/${secondcar.purl}" width="288px" height="192px"></div>
					<div><h5>${secondcar.cd.cdname}</h5></div>
					<div><span style="color:darkgray;font-size: 13px">
						<fmt:formatDate value="${secondcar.spsj}" pattern="yyyy-MM-dd"/>
						<em>/</em>
						${secondcar.lc}万公里
					</span>
					<span  style="color:#fff;background-color:#ff7815;border-color:#ff7815;width: 50px;height: 19px;">优选</span>
					</div>
					
					<div><div style="font-size:25px;color: red;float: right;">
						
						${secondcar.jg}<span style="font-size:15px;color: red;">万</span>
					</div></div>
			</div></a></div>
		</f:forEach></div>
		</div>
		
</body>
</html>