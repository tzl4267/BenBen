<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.js"></script>
</head>
<body>
<script type="text/javascript" language="javascript">
function denglubtn() {
	$("#denglu").modal("show");
}

</script>
<div>
<a href=""><img src="img/daohang/1.jpg"></a>
<button type="button" class="btn btn-success"><a href="">地点</a></button>
<button type="button" class="btn btn-success"><a href="">卖车</a></button>
<button type="button" class="btn btn-success"><a href="">买车</a></button>
<button type="button" class="btn btn-success" onclick="denglubtn();"><a href="">登陆</a></button>
<button type="button" class="btn btn-success"><a href="">注册</a></button>
<font style="font-weight:bold;font-style:italic;" size="2" color="black">热线电话：110</font>
</div>
<!-- 登陆modal -->
	<div class="modal fade" id="denglu" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">登陆</h4>
				</div>
				<div class="modal-body">
					<form id="form1" action="" class="form-horizontal">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">用户名</span> <input id="i" type="text"
									class="form-control" name="eid" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密码</span> <input type="text"
									class="form-control" name="ename" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		</div>
</body>
</html>