<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<body>
<jsp:include page="HTDH.jsp"></jsp:include>
 <script type="text/javascript">
 $(function(){
	 $("#a1").removeClass("active");
		$("#a3").removeClass("active");
		$("#a4").removeClass("active");
		$("#a2").addClass("active");
 });
 //点击修改用户按钮
	function updatebtn() {
	 $("#updateModal").modal("show");
	 
	}
   </script>
   
<form action="${pageContext.request.contextPath}/abc/update_selectEmp" method="post" enctype="multipart/form-data" style="position: relative;top:60px;">
	<input type="hidden" name="eid" value="${emp.eid}">
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">年龄</label>
    <div class="col-sm-10">
      <input type="text" name="age" class="form-control" value="${emp.age}" readonly="readonly">
    </div>
  </div>
  	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">姓名:</label>
    <div class="col-sm-10">
     <input type="text" name="ename" class="form-control" value="${emp.ename}" readonly="readonly">
	 </div>
	 </div>
	 
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">状态:</label>
    <div class="col-sm-10">
      <input type="text" name="esta" class="form-control" value="${emp.esta}" readonly="readonly">
    </div>
  </div> 
  
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">头像:</label>
    <div class="col-sm-10">
     <img  src="${pageContext.request.contextPath}/${emp.eurl}" width="50" height="50">
      <input type="hidden" name="eurl" class="form-control"  readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">联系方式:</label>
    <div class="col-sm-10">
      <input type="text" name="ph" class="form-control" value="${emp.ph}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">性别:</label>
    <div class="col-sm-10">
      <input type="text" name="sex" class="form-control" value="${emp.sex}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">部门:</label>
    <div class="col-sm-10">
      <input type="text" name="dname" class="form-control" value="${emp.dept.dname}" readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="pass" class="col-sm-2 control-label">密码:</label>
    <div class="col-sm-10">
      <input type="text" name="pass" class="form-control" value="${emp.pass}" readonly="readonly">
    </div>
  </div> 
   <button type="button" class="btn btn-primary btn-lg btn-block" onclick="updatebtn();">修改</button>
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
					<h4 class="modal-title" id="myModalLabel">修改员工信息</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/abc/update_Emp" enctype="multipart/form-data" method="post" class="form-horizontal" role="form"
						name="updateForm" id="updateForm">
		<input type="hidden" name="eid" value="${emp.eid}">
			<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">姓名:</label>
    <div class="col-sm-10">
     <input type="text" name="ename" class="form-control" value="${emp.ename}" pattern="^[\u4e00-\u9fa5]*">
	 </div>
	 </div>
		
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">年龄</label>
    <div class="col-sm-10">
      <input type="text" name="age" class="form-control" value="${emp.age}" pattern="^([2-5]\d)|60$" >
    </div>
  </div>
  
	 
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">状态:</label>
    <div class="col-sm-10">
      <input type="text" name="esta" class="form-control" value="${emp.esta}" readonly="readonly">
    </div>
  </div> 
  
	 <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">头像:</label>
    <div class="col-sm-10">
    <img src="${pageContext.request.contextPath}/${emp.eurl}" width="50" height="50">
      <input type="file" name="mFile" class="form-control" >
      <input type="hidden" name="eurl" value="${emp.eurl}">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">联系方式:</label>
    <div class="col-sm-10">
      <input type="text" name="ph" class="form-control" value="${emp.ph}" pattern="^1\d{10}$">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">性别:</label>
    <div class="col-sm-10">
      <input type="text" name="sex" class="form-control" value="${emp.sex}">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">部门:</label>
    <div class="col-sm-10">
    <input type="text" name="dname" class="form-control" value="${emp.dept.dname}" readonly="readonly">
     <input type="hidden" name="dept.did" value="${emp.dept.did}" class="form-control"  readonly="readonly">
    </div>
  </div> 
  
	<div class="form-group">
    <label for="pass" class="col-sm-2 control-label">密码:</label>
    <div class="col-sm-10">
      <input type="text" name="pass" class="form-control" value="${emp.pass}" pattern="^[a-zA-Z]\w{5,17}$">
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