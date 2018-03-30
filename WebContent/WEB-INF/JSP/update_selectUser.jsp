<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
   
   <script type="text/javascript">
 //点击修改用户按钮
	function updatebtn() {
	 $("#updateModal").modal("show");
	 
	}
 //点击修改待买车辆价格按钮
	function updatebtn1() {
	 $("#updateModal1").modal("show");
	 
	}
   </script>
<body>


	<form action="${pageContext.request.contextPath}/abc/update_select">
	<input type="hidden" name="uid" value="${user2.uid}">
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-10">
      <input type="text" name="uname" class="form-control" value="${user2.uname}" readonly="readonly">
    </div>
  </div>
  	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">职业:</label>
    <div class="col-sm-10">
     <input type="text" name="vname" class="form-control" value="${user2.voc.vname}" readonly="readonly">
	 </div>
	 </div>
	 
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密码:</label>
    <div class="col-sm-10">
      <input type="text" name="upass" class="form-control" value="${user2.upass}" readonly="readonly">
    </div>
  </div> 
  
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">注册时间:</label>
    <div class="col-sm-10">
      <input type="text" name="uLogin" class="form-control" value="${user2.uLogin}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">上次登录时间:</label>
    <div class="col-sm-10">
      <input type="text" name="uLast" class="form-control" value="${user2.uLast}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密保问题:</label>
    <div class="col-sm-10">
      <input type="text" name="uq" class="form-control" value="${user2.uq}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密保答案:</label>
    <div class="col-sm-10">
      <input type="text" name="ua" class="form-control" value="${user2.ua}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">联系方式:</label>
    <div class="col-sm-10">
      <input type="text" name="up" class="form-control" value="${user2.up}" readonly="readonly">
    </div>
  </div> 
   <button type="button" class="btn btn-info btn-lg btn-block" onclick="updatebtn();">修改个人信息</button>
	</form>
	
	<!-- update模态框开始 -->
	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/abc/updatea" method="post" class="form-horizontal" role="form"
						name="updateForm" id="updateForm">
						<div><input type="hidden" name="uid" value="${user2.uid}"></div>
						<div class="form-group">
							<label for="uname" class="col-sm-2 control-label">用户姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="uname"
								 value="${user2.uname}">
							</div>
						</div>


						<div class="form-group">
							<label for="vname" class="col-sm-2 control-label">职业</label>
							<div class="col-sm-10">
								<select name="voc.vid">
								<c:forEach items="${vl}" var="v">
								<option value="${v.vid}" ${v.vid==user2.voc.vid?"selected":""}>${v.vname}</option>
								</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密码:</label>
    <div class="col-sm-10">
      <input type="text" name="upass" class="form-control" value="${user2.upass}">
    </div>
  </div> 
  
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">注册时间:</label>
    <div class="col-sm-10">
      <input type="text" name="uLogin" class="form-control" value="${user2.uLogin}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">上次登录时间:</label>
    <div class="col-sm-10">
      <input type="text" name="uLast" class="form-control" value="${user2.uLast}" readonly="readonly">
    </div>
  </div> 
  
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密保问题:</label>
    <div class="col-sm-10">
      <input type="text" name="uq" class="form-control" value="${user2.uq}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">密保答案:</label>
    <div class="col-sm-10">
      <input type="text" name="ua" class="form-control" value="${user2.ua}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">联系方式:</label>
    <div class="col-sm-10">
      <input type="text" name="up" class="form-control" value="${user2.up}">
    </div>
  </div> 
  <div class="modal-footer">
				<button type="submit" value="确认修改" class="btn btn-info"  >
						<span class="glyphicon glyphicon-ok"></span>&nbsp; 确认修改
					</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span>&nbsp; 放弃添加
					</button>

				</div>
				
	</form>
				</div>
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
		</div>
		<!-- update模态框结束 -->
<div class="container">
			<div class="row">
				<div class="col-lg-2 col-sm-2 "></div>
				<div class="col-lg-8 col-sm-8">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active">
							<a href="#menu1" role="tab" data-toggle="tab">浏览记录</a>
						</li>
						<li role="presentation">
							<a href="#menu2" role="tab" data-toggle="tab">买车记录</a>
						</li>
						<li role="presentation">
							<a href="#menu3" role="tab" data-toggle="tab">卖车记录</a>
						</li>
						<li role="presentation">
							<a href="#menu4" role="tab" data-toggle="tab">收藏</a>
						</li>
						<li role="presentation">
							<a href="#menu5" role="tab" data-toggle="tab">约看记录</a>
						</li>
						<li role="presentation">
							<a href="#menu6" role="tab" data-toggle="tab">待卖车辆</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-2 col-sm-2"></div>
			</div>

		</div>

		<!-- 各个页签的内容开始 -->
		<div class="tab-content">
			<div class="tab-pane active" id="menu1">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <!-- 历史浏览记录表格 -->
  <table class="table">
  <caption>浏览记录</caption>
  <thead>
    <tr>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${bh}" var="b">
    <tr>
      <td><img  src="${pageContext.request.contextPath}/${b.sc.purl}" width="80" height="50"></td>
      <td>${b.sc.cd.cdname}</td>
      <td>${b.sc.jg}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
<div class="col-lg-2 col-sm-2"></div>
</div>
</div><!-- end of  container-->
			</div>
			<div class="tab-pane" id="menu2">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <table class="table">
  <caption>买车记录</caption>
  <thead>
    <tr>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${brd}" var="bb">
    <tr>
      <td><img  src="${pageContext.request.contextPath}/${bb.sc.purl}" width="80" height="50"></td>
      <td>${bb.sc.cd.cdname}</td>
      <td>${bb.sc.jg}</td>
    </tr>
     </c:forEach>
  </tbody>
</table>
						</div>
						<div class="col-lg-2 col-sm-2"></div>
					</div>
				</div><!-- end of  container-->
			</div>
			
			<div class="tab-pane" id="menu3">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <table class="table">
  <caption>卖车记录</caption>
  <thead>
    <tr>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${sr}" var="s">
    <tr>
      <td><img  src="${pageContext.request.contextPath}/${s.sc.purl}" width="80" height="50"></td>
      <td>${s.sc.cd.cdname}</td>
      <td>${s.sc.jg}</td>
    </tr>
     </c:forEach>
  </tbody>
</table>
						</div>
						<div class="col-lg-2 col-sm-2"></div>
					</div>
				</div><!-- end of  container-->
				</div>
				
			<div class="tab-pane" id="menu4">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <table class="table">
  <caption>收藏</caption>
  <thead>
    <tr>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${cr}" var="c">
    <tr>
      <td><img  src="${pageContext.request.contextPath}/${c.sc.purl}" width="80" height="50"></td>
      <td>${c.sc.cd.cdname}</td>
      <td>${c.sc.jg}</td>
    </tr>
     </c:forEach>
  </tbody>
</table>
						</div>
						<div class="col-lg-2 col-sm-2"></div>
					</div>
				</div><!-- end of  container-->
				</div>
			<div class="tab-pane" id="menu5">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <table class="table">
  <caption>约看记录</caption>
  <thead>
    <tr>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${ar}" var="a">
    <tr>
      <td><img  src="${pageContext.request.contextPath}/${a.sc.purl}" width="80" height="50"></td>
      <td>${a.sc.cd.cdname}</td>
      <td>${a.sc.jg}</td>
    </tr>
           </c:forEach>
  </tbody>
</table>
						</div>
						<div class="col-lg-2 col-sm-2"></div>
					</div>
				</div><!-- end of  container-->
				</div>
					<div class="tab-pane" id="menu6">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-sm-2"></div>
						<div class="col-lg-8 col-sm-8">
							 <table class="table">
  <caption>待买车辆</caption>
  <thead>
    <tr>
  	 <th>二手车id</th>
      <th>图片</th>
      <th>名称</th>
      <th>价格</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${cd}" var="cd">
    <tr>
    <td><input type="text" value="${cd.cid}"></td>
      <td><img  src="${pageContext.request.contextPath}/${cd.purl}" width="80" height="50"></td>
      <td>${cd.cd.cdname}</td>
      <td>${cd.jg}</td>
      <td><button onclick="updatebtn1();">修改待买车辆价格</button></td>
    </tr>
       </c:forEach>
  </tbody>
</table>
						</div>
						<div class="col-lg-2 col-sm-2"></div>
					</div>
				</div><!-- end of  container-->
				
				
			</div>
		</div>
		<!-- 各个页签的内容结束 -->
		
		
		<!-- update模态框开始 -->
	<div class="modal fade" id="updateModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改待买车辆信息</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/abc/update_secondcar" method="post" class="form-horizontal" role="form"
						name="updateForm" id="updateForm">
						<div><input type="hidden" name="cid" value="${sec.cid}"></div>
						
						<div class="form-group">
							<label for="jg" class="col-sm-2 control-label">您要修改的价格是:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="jg"
								 value="${sec.jg}">
							</div>
						</div>	
 				 <div class="modal-footer">
				<button type="submit" value="确认修改" class="btn btn-info"  >
						<span class="glyphicon glyphicon-ok"></span>&nbsp; 确认修改
					</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span>&nbsp; 放弃修改
					</button>

				</div>
				
	</form>
				</div>
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
		</div>
		<!-- update模态框结束 -->

</body>
</html>