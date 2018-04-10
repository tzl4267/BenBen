<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f"%>
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

</head>
<script type="text/javascript">
	$(function(){
		$("button:contains('点击添加')").click(function(){
			$("input[name='bid']").val($(this).next().text());
			
		});
		$("#a2").removeClass("active");
		$("#a3").removeClass("active");
		$("#a1").removeClass("active");
		$("#a4").addClass("active");
	});
</script>
<body>
<jsp:include page="HTDH.jsp"></jsp:include>
  <table class="table table-striped" style="position: relative;top:60px;">
  
    <tr >
		<th style="text-align: center;">员工名称</th>
		<th style="text-align: center;">用户名称</th>
		<th style="text-align: center;">用户联系方式</th>
		<th style="text-align: center;">车主联系方式</th>
		<th style="text-align: center;">款式名称</th>
		<th style="text-align: center;">信息状态</th>
		<th style="text-align: center;">车主回复</th>
	</tr>
<f:forEach items="${br}" var="bargainrecord">
	<tr align="center">
		<td>${bargainrecord.sc.emp.ename}</td>
		<td>${bargainrecord.user.uname}</td>
		<td>${bargainrecord.user.up}</td>
		<td>${bargainrecord.sc.user.up}</td>
		<td>${bargainrecord.sc.cd.cdname}</td>
		<td>${bargainrecord.brsta eq '48' ? "未处理":"处理"}</td>
		<td><button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
						点击添加
				</button><font class="hidden">${bargainrecord.bid}</font>
		</td>
	</tr>
	</f:forEach>  
  </table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					车主回复
				</h4>
			</div>
			<div  >
				<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/home/list6">			
    				<input type="text" class="form-control" placeholder="请输入回复" value="${bargainrecord.rf}" name="rf">
    				<input type="hidden" name="bid"/>
    				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">
					提交更改
				</button>
			</div>
					</form>		
							
			</div>
			
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

</body>
</html>