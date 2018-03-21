<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约管理</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" language = "JavaScript">
		$(function(){
			window.oe={
					"click .a":function(index,val,rows){
						 //console.log(rows);控制台打印
						 updateBtn(rows.classId)
					},
					"click .b":function(index,val,rows){
						console.log(rows);
						deleteBtn(rows);
					}
			}
			
			$("#tab").bootstrapTable({
			url : "../ForumServlet?state=select",
			striped : true, //分隔色
			toolbar : "#toolbar",
			idField : "classid", //指定主键列
			dataType : "json",
			pagination : true,
			sidePagination : "server",
			pageNumber : 1,
			pageSize : 2,
			pageList : [1,2,3],
			queryParams : queryParams,
			columns : [{
				field : "classId",
				title : "版块编号",
				align : "center"
			},{
				field : "className",
				title : "版块名称",
				align : "center"				
			},{
				field : "uname",
				title : "版主姓名",
				align : "center"
			},{
				field : "themeCount",
				title : "帖子总数",
				align : "center"
			},{
				field : "signCount",
				title : "精品帖总数",
				align : "center"
			},{
				field : "noreplyCount",
				title : "未回帖总数",
				align : "center"
			},{
				field : "img",
				title : "图片",
				align : "center",
				formatter:function(val,rowdata){
						return "<img src='../"+rowdata.img+"'width='40' height='60'/>";
						}
			},{				
				field : "C",
				title : "操作",
				align : "center",
				width : "150px",
				events:oe,
				formatter:function(val,rowdata){
					return "<button class = 'a btn btn-info btn-xs'  > <i class = 'glyphicon glyphicon-wrench'></i>&nbsp;修改</button>&nbsp;&nbsp;"
				+"<button class = 'b btn btn-danger btn-xs'   > <i class = 'glyphicon glyphicon-trash'></i>&nbsp;删除</button>";
				}
			}
			]			
			});
			
		
		})
			</script>
</head>
<body>

		<!--描述：container开始  --><div class = "container" id="all">
			<!--描述：面板row开始  --><div class = "row">
				<div class = "col-lg-12">
					<div class="panel panel-info"> 
                      <div class="panel-body">
             <form class="form" role="form">
             	
    <div class="control-label col-lg-5 col-sm-5"></div>
    <div class="col-lg-3 col-sm-3"><input type="text"  id="select_classname" placeholder="输入板块名称关键字"></div>
      <div class="col-lg-4 col-sm-4"><button type="button" class="btn btn-info"  onclick="query();"><i class="glyphicon glyphicon-search"></i>&nbsp; 板块信息查询</button></div>
                           
             </form>
                    </div>
                   </div>
				</div>				
			</div><!--描述：面板row结束 -->
			<!--描述：表格row开始  --><div class = "row">
				<div class = "col-lg-12">
					<table id = "tab"></table>
				</div>
			</div><!--描述：表格row结束  -->
		</div><!--描述：container结束  --> 
</body>
</html>