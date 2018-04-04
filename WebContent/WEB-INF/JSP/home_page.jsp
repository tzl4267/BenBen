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
<script type="text/javascript">

$(function(){
	
		
		$("span:contains('亮点配置')").mouseover(function(e){
			$("#outs").css("display","block");
			$("#czw").css("display","block");
		});
		$("#czw").mouseover(function(e){
			$("#outs").css("display","none");
			$("#czw").css("display","none");
		})
			$("#outs").mouseout(function(e){
				$("#outs").css("display","none");
				
			})
			
			
		
		
			
		
	
});
</script>

</head>
<body style="position:relative;"><span style="position:absolute;width:60px;background-color:#F8F8F8;top:129px;left:1376px;z-index:1000;" id="czw"><select style="width:85px;height:27px"  ><option>&nbsp;座位&nbsp;&nbsp;&nbsp;</option></select></span>
	<span style="position:absolute;width:200px;height:200px;display:none; z-index:99; top:129px;left:1310px;" id="outs" >
	<span style="position:absolute;width:60px;background-color:#F8F8F8;top:3px;left:6px;">亮点配置</span>
	<span style="position:absolute;border:black 1px solid;width:100%;height:200px;background-color:white;top:30px;left:-20px;"></span>
	</span>
<body>
<jsp:include page="daohang.jsp"></jsp:include>
      <div style="width: 1200px;margin: 0px auto;">
      <form action="">
		<div style="width: 1200px;height: 165px;background-color: #F8F8F8;margin:0px auto" >
		<table >
			<tr>
				<td >品&nbsp;牌:<input type="hidden" name="cbid" value="${cbid}"></td>
				<td><a href="${pageContext.request.contextPath}/home/list" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a></td>
				<f:forEach items="${cb}" var="carbrand">
				<td><a href="${pageContext.request.contextPath}/home/list2?id=${carbrand.cbid}" style="text-decoration: none;color: black">&nbsp;<font color="${carbrand.cbid==cbid?'red':''}">${carbrand.cbname}</font>&nbsp;</a></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>
		<table >
			<tr>
				<td>车&nbsp;系:<input type="hidden" name="csid" value="${csid}"></td>
				<td><a href="${pageContext.request.contextPath}/home/list" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a></td>
				<f:forEach items="${cs}" var="carseries">
				<td><a href="" style="text-decoration: none;color: black" >&nbsp;<font color="${carseries.csid==csid?'red':''}">${carseries.csname}</font>&nbsp;</a></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>

		<table  >
			<tr>
				<td>价&nbsp;格:<input type="hidden" name="" value=""/></td>
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
				<select style="width:85px;height:27px" name="ctid">
		<option value="">&nbsp;车型&nbsp;&nbsp;&nbsp;</option>
						<option value="1">&nbsp;SUV&nbsp;&nbsp;&nbsp;</option>	
						<option value="2">&nbsp;MPV&nbsp;&nbsp;&nbsp;</option>	
						<option value="3">&nbsp;跑车&nbsp;&nbsp;&nbsp;</option>	
						<option value="4">&nbsp;皮卡&nbsp;&nbsp;&nbsp;</option>	
						<option value="5">&nbsp;面包&nbsp;&nbsp;&nbsp;</option>	
						<option value="6">&nbsp;两厢轿车&nbsp;&nbsp;&nbsp;</option>	
						<option value="7">&nbsp;三厢轿车&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px" name="cl">
					<option value="">&nbsp;车龄&nbsp;&nbsp;&nbsp;</option>
						<option value="1">&nbsp;1年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="2">&nbsp;3年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="3">&nbsp;5年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="4">&nbsp;8年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="5">&nbsp;8年以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
			
				<td>
				<select style="width:85px;height:27px" name="bs">
					<option>&nbsp;变速箱&nbsp;&nbsp;&nbsp;</option>
						<option value="1">&nbsp;自动&nbsp;&nbsp;&nbsp;</option>	
						<option value="2">&nbsp;手动&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px">
					<option>&nbsp;里程&nbsp;&nbsp;&nbsp;</option>
						<option value="1">&nbsp;1万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="2">&nbsp;3万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="3">&nbsp;5万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="4">&nbsp;8万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="5">&nbsp;10万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="6">&nbsp;10万公里以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="pl">
					<option>&nbsp;排量&nbsp;&nbsp;&nbsp;</option>
						<option value="1">&nbsp;1.0以下&nbsp;&nbsp;&nbsp;</option>	
						<option value="2">&nbsp;1.0-1.6&nbsp;&nbsp;&nbsp;</option>	
						<option value="3">&nbsp;1.6-2.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="4">&nbsp;2.0-3.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="5">&nbsp;3.0-4.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="6">&nbsp;4.0以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="pf">
					<option>&nbsp;排量标准&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.pf}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="cbgb">
					<option>&nbsp;国别&nbsp;&nbsp;&nbsp;</option>
				<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.cs.cb.cbgb}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="dr">
					<option>&nbsp;驱动&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.dr}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="ft">
					<option>&nbsp;燃烧类型&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.cd.ft}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="ys">
					<option>&nbsp;颜色&nbsp;&nbsp;&nbsp;</option>
					<f:forEach items="${sc}" var="secondcar">
						<option>&nbsp;${secondcar.ys}&nbsp;&nbsp;&nbsp;</option>	
					</f:forEach>
				</select>&nbsp;&nbsp;
				</td>
				<td>
					<span style="border:1px;">亮点配置&nbsp;
					</span>
				</td>
				<td>
				<select style="width:85px;height:27px">
					<option >&nbsp;座位&nbsp;&nbsp;&nbsp;</option>
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
				<td><a href="" style="text-decoration: none;color: black">价格最高</a></td>
				<td><a href="" style="text-decoration: none;color: black">价格最低</a></td>
				<td><a href="" style="text-decoration: none;color: black">最新发布</a></td>
				<td><a href="" style="text-decoration: none;color: black">里程最短</a></td>
			</tr>
			
		</table>
	
		</div>
						
		</form>
			
		<br>
	
		<div class="row">
		<f:forEach items="${sc}" var="secondcar">
			<div class="col-lg-3 col-sm-3"><a href="#" style="text-decoration: none;color: black"><div style="float: left; ">
				
			<div style="color: red;position: relative;top:22px;left:93%;" id="sb">新</div>
			<script type="text/javascript">
					var d = "${secondcar.spsj}";
					var de = new Date(d);
					var e = "${date}";
					var f = new Date(e);
					var g = de.getTime()-f.getTime();
					if(g>0){
						$("#sb").text("新");
					}															
					</script>
					<div ><img  src="${pageContext.request.contextPath}/${secondcar.purl}" width="288px" height="192px"></div>
					<div><h5>${secondcar.cd.cdname}</h5></div>
					<div><span style="color:darkgray;font-size: 13px">
						<fmt:formatDate value="${secondcar.spsj}" pattern="yyyy-MM-dd"/>
						<em>/</em>
						${secondcar.lc}万公里
					</span>
					<span  style="color:#fff;background-color:#ff7815;border-color:#ff7815;width: 50px;height: 19px;">${secondcar.bq eq '48' ? "急售":""}</span>
					<span  style="color:#fff;background-color:#00A0E9;border-color:#00A0E9;width: 50px;height: 19px;">${secondcar.pi.gh eq '48' ? "0过户":""}</span>
					</div>
					
					<div><div style="font-size:25px;color: red;float: right;">
						
						${secondcar.jg}<span style="font-size:15px;color: red;">万</span>
					</div></div>
			</div></a></div>
		</f:forEach></div>
		</div>
		
</body>
</html>