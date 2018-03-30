<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"> </script>
   <script type ="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet"  href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
   <script type="text/javascript">
   /* 显示添加模态框 */
   function showInsertEmpModal(){
	$("#insertEmpModal").modal("show");		
  }
   </script>
</head>
<body>
<!--添加新员工模态框开始  -->
<div class="modal fade" id="insertEmpModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"data-backdrop="false" >		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<font color="orange" size="4">添加新员工</font>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/insertEmp" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">						
						<div class="form-group">
							<label for="ename" class="col-sm-3 control-label">员工姓名:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									name="ename" placeholder="请填写您的姓名" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="age" class="col-sm-3 control-label">年龄:</label>
							<div class="col-sm-9">

								<input type="text" class="form-control" 
									name="age" placeholder="请填写您的年龄" required="required" min="18" max="100">
								</div>
							</div>
							
							<div class="form-group">
							<label for="sex" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-9">

								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-default active"> <input
										type="radio" name="sex" id="insert_sex1" autocomplete="off"
										value="m" checked> 男
									</label> <label class="btn btn-default"> <input type="radio"
										name="sex" id="insert_sex2" value="f" autocomplete="off">
										女
									</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ph" class="col-sm-3 control-label">联系电话:</label>
							<div class="col-sm-9">

								<input type="tel" class="form-control" 
									name="ph" placeholder="请填写您的电话号码" required="required">
								</div>
							</div>
							
							<div class="form-group">
							<label for="esta" class="col-sm-3 control-label">工作状态:</label>
							<div class="col-sm-9">

								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-default active"> <input
										type="radio" name="esta" id="insert_esta1" autocomplete="off"
										value="0" checked> 工作中
									</label> <label class="btn btn-default"> <input type="radio"
										name="esta" id="insert_esta2" value="1" autocomplete="off">
										待分配
									</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="pass" class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-9">

								<input type="password" class="form-control" 
									name="pass" placeholder="请填写您的密码" required="required">
								</div>
							</div>
							
							<div class="form-group">
							<label for="dept.did" class="col-sm-3 control-label">所属部门:</label>
							<div class="col-sm-9">
							
								<select name="dept.did" class="form-control">
								<option value="0">---请选择---</option>
								<c:forEach items="${dList}" var="d">
								<option value="${d.did}">${d.dname}</option>
								</c:forEach>
								</select>
									
							</div>
						</div>
						
						<div class="form-group">
							<label for="eurl" class="col-sm-3 control-label">头像:</label>
							<div class="col-sm-9">
								<input type="file" class="form-control"name="mFile"> 									
								</div>
							</div>						
													
							<div style="text-align: center;" class="form-group">
								<div class="col-lg-4 col-sm-4">
										<button type="submit" class="btn btn-info btn-sm">添加</button>												
								</div>	
								
								<div class="col-lg-4 col-sm-4">
										<a href="#" class="btn btn-danger btn-sm active" role="button">放弃添加</a>
								</div>
								
								<div class="col-lg-4 col-sm-4">
										<button type="reset" class="btn btn-warning btn-sm">重新填写</button>												
								</div>
							</div>
					</form>
				</div>				
			</div>		
		</div>	
	</div>
 <!--添加新员工模态框结束-->

</body>
</html>