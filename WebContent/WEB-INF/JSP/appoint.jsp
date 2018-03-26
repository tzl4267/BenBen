<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约管理</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" language = "JavaScript">
$(function(){
	$("button:contains('上传')").click(function(){
		$("#insertModal").modal("show");
	});	
	$("button:contains('买车约看')").click(function(){
		location="${pageContext.request.contextPath}/";
	});	
	$("button:contains('卖车意向')").click(function(){
		location="${pageContext.request.contextPath}/";
	});	
	$("b:contains('等待处理')").click(function(){
		location="${pageContext.request.contextPath}/";
	});	
	
	var si = "${si}";
	if(si){
		$("#insertModal").modal("show");
	}
});


		</script>
		<style type="text/css">
		tr{
		height:50px;
		}
		input{
		height:34px;
		}
		.check{
		width:20px;
		height:20px;
		position: relative;
		top:3px;
		}
		</style>
</head>
<body>
<button  type="button" >上传</button>
	<!--描述：container开始  --><div class = "container" id="all">
			<!--描述：面板row开始  -->
			<div class = "row">
				<div class = "col-lg-12">
					<div class="panel panel-info"> 
                      <div class="panel-body">
             <form class="form" role="form">
             	
    <div class="control-label col-lg-8 col-sm-8"></div>
    <div class="col-lg-2 col-sm-2"><input type="text" style="position: relative;top:0px;height: 35px;"  id="select_classname" placeholder="城市汉字或拼音"></div>
      <div class="col-lg-2 col-sm-2"><button type="button" class="btn btn-info"  onclick="query();"><i class="glyphicon glyphicon-search"></i>&nbsp; 记录查询</button></div>
                          
             </form>
                    </div>
                   </div>
				</div>				
			</div><!--描述：面板row结束 -->
			<div class = "btn-group" id = "toolbar">
     	<button type = "button" class = "btn btn-info"><i class = "glyphicon glyphicon-plus"></i>买车约看</button>
     	<button type = "button" class = "btn btn-info"><i class = "glyphicon glyphicon-tag"></i>卖车意向</button>
     </div>
			<!--描述：表格row开始  -->
			<div class = "row">
				<div class = "col-lg-12">
				<c:if test="${emp.dept.did==''}">
					<table border="1" style="text-align: center;width:100%;">
					<c:if test="${alist.size()>0}">
					<tr><td>车主</td><td>车主联系方式</td><td>约看人</td><td>约看人联系方式</td><td>看车时间</td><td>检测员联系方式</td><td>看车地点</td><td>处理状态</td></tr>		
					<c:forEach items="${alist}" var="record">
					<tr><td>${record.sc.user.uname}</td><td>${record.sc.user.up}</td><td>${record.user.uname}</td><td>${record.user.up}</td><td>${record.ardate}</td><td>${record.sc.cr.emp.ph}</td><td>${record.sc.kcd}</td><td><b style="color: red;">${record.asta=='48'?"等待处理":"已处理"}</b></td></tr>
					</c:forEach></c:if>
					<c:if test="${slist.size()>0}">
					<tr><td>车主</td><td>联系方式</td><td>看车地点</td><td>看车时间</td><td>检测员</td><td>是否合格</td><td>信息上传</td></tr>
					<c:forEach items="${slist}" var="record">
					<tr><td>${record.user.uname}</td><td>${record.user.up}</td><td>${record.kcd}</td><td>${record.kcsj}</td><td>${record.sc.cr.emp.ph}</td><td>${record.zt=='48'?"等待检查":(record.zt=='49'?'合格':'不合格')}</td><td id="sc"><button type="button">${record.zt=='49'?"车辆信息上传":""}</button></td></tr>
					</c:forEach></c:if>
					</table>
					</c:if>
					
					
					<c:if test="${emp.dept.did==''}">
					<table border="1" style="text-align: center;width:100%;">
					<c:if test="${alist.size()>0}">
					<tr><td>车主</td><td>车主联系方式</td><td>约看人</td><td>约看人联系方式</td><td>看车时间</td><td>销售员</td><td>看车地点</td><td>处理状态</td></tr>		
					<c:forEach items="${alist}" var="record">
					<tr><td>${record.sc.user.uname}</td><td>${record.sc.user.up}</td><td>${record.user.uname}</td><td>${record.user.up}</td><td>${record.ardate}</td><td>${record.sc.emp.ph}</td><td>${record.sc.kcd}</td><td><b style="color: red;">${record.asta=='48'?"未处理":"已处理"}</b></td></tr>
					</c:forEach></c:if>
					<c:if test="${slist.size()>0}">
					<tr><td>车主</td><td>联系方式</td><td>看车地点</td><td>看车时间</td><td>销售员</td><td>是否合格</td><td>信息上传</td></tr>
					<c:forEach items="${slist}" var="record">
					<tr><td>${record.user.uname}</td><td>${record.user.up}</td><td>${record.kcd}</td><td>${record.kcsj}</td><td>${record.sc.emp.ph}</td><td>${record.zt=='48'?"等待检查":(record.zt=='49'?'合格':'不合格')}</td><td id="sc"><button type="button">${record.zt=='49'?"检测报告上传":""}</button></td></tr>
					</c:forEach></c:if>
					</table>
					</c:if>
				</div>
			</div><!--描述：表格row结束  -->
		</div><!--描述：container结束  --> 
		
	
     
     <!--描述: 上传车辆信息模态框开始  -->     
    <div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <!--描述: 上传模态框dialog开始  -->
  <div class="modal-dialog"  style="width:600px;">
  <!--描述: 上传模态框content开始  -->
    <div class="modal-content">
    
    <!--描述: 上传模态框header开始  -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">添加车辆信息</h4>
      </div><!--描述: 上传模态框header结束  -->
      
      <!--描述: 上传模态框body开始  -->
      <div class="modal-body" style="height:600px;">
       <form class="form-horizontal" role="form" method="post" id="insertSCform" enctype="multipart/form-data">
  <table width="100%">
  <tr>
  <td >车主id</td><td><input type="text" name="user.uid"></td><td>标价</td><td><input type="text" name="jg"></td></tr>
  <tr><td>汽车款式</td><td><input type="text" name="cd.cdid"></td><td>车牌号</td><td><input type="text" name="cp"></td></tr>
  <tr><td>颜色</td><td><select name="ys">
  <option value="0"></option><option value="1"></option><option value="2"></option>
  </select></td> <td>上牌城市</td><td><input type="text" name="spcs"></td></tr>
  <tr><td>上牌时间</td><td><input type="date" name="spsj"></td> <td>售卖原因</td><td><select name="">
  <option value="0">因卖车</option><option value="1">因换车卖车</option><option value="2">急用钱</option>
  </select></td></tr>
  <tr><td>行驶里程</td><td><input type="text" name="lc"></td> <td>看车地点</td><td><input type="text" name="kcd"></td></tr>
  <tr><td>车源编号</td><td><input type="text" name=""></td> <td>是否置顶</td><td><select name="zd">
  <option value="0">否</option><option value="1">是</option>
  </select></td></tr>
   <tr><td>正前图片</td> <td><input type="file" name="mfile"> </td> <td></td> <td></td></tr>
   <tr><td>亮点</td><td colspan="3"><input type="checkbox" name="yx" value="" class="check">&nbsp;倒车影像&nbsp;<input type="checkbox" name="ld" value="" class="check">&nbsp;倒车雷达&nbsp;
   <input type="checkbox" name="qd" value="" class="check">&nbsp;无钥匙启动&nbsp;<input type="checkbox" name="wd" value="" class="check">&nbsp;车身稳定</td></tr>
   <tr><td></td><td colspan="3"><input type="checkbox" name="ty" value="" class="check">&nbsp;胎压检测&nbsp;<input type="checkbox" name="jr" value="" class="check">&nbsp;无钥匙进入&nbsp;
   <input type="checkbox" name="xh" value="" class="check">&nbsp;定速巡航&nbsp;<input type="checkbox" name="gps" value="" class="check">&nbsp;GPS导航</td></tr>
  <tr><td>评车</td><td colspan="3"><textarea rows="6" cols="80" resize:none name="pc"></textarea></td> </tr>
  
  </table>
</form>
      </div><!--描述: 上传模态框body结束  -->
      
      <!--描述: 上传模态框footer开始  -->
      <div class="modal-footer">
      <button type = "button" class = "btn btn-info" onclick = "insertSC();"><i class = "glyphicon glyphicon-ok"></i>&nbsp;确认</button>
      <button type = "button" class = "btn btn-warning" onclick=""><i class = "glyphicon glyphicon-leaf"></i>&nbsp;重置</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class = "glyphicon glyphicon-remove"></i>&nbsp;放弃s</button>       
      </div><!--描述: 上传模态框footer结束  -->
      
    </div><!--描述: 上传模态框content结束  -->
  </div><!--描述: 上传模态框dialog结束  -->
</div> <!--描述: 上传模态框结束  -->	

<!--描述: 检测报告模态框开始  -->     
    <div class="modal fade" id="checkRecordModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <!--描述: 检测报告模态框dialog开始  -->
  <div class="modal-dialog">
  <!--描述: 检测报告模态框content开始  -->
    <div class="modal-content">
    
    <!--描述: 检测报告模态框header开始  -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">检测报告</h4>
      </div><!--描述: 检测报告模态框header结束  -->
      
      <!--描述: 检测报告模态框body开始  -->
      <div class="modal-body">
       <form class="form-horizontal" role="form" id = "checkRecordform">
 	<div class="form-group"> 
    <label for="sg" class="col-sm-3 control-label">重大事故排除</label>
    <div class="col-sm-9">
     <input type = "hidden" id ="" name="se.sid">
      <input type="text" class="form-control" id="sg" name="sg">
    </div>
  </div>
  
  <div class="form-group">
    <label for="hx" class="col-sm-3 control-label">核心部件检测</label>
    <div class="col-sm-9">
       <input type="text" class="form-control" id="hx" name="hx"> 							
    </div>
  </div>
  
  <div class="form-group"> 
    <label for="ms" class="col-sm-3 control-label">磨损程度评估</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="ms" name="ms"  >
    </div>
  </div>
  
  <div class="form-group"> 
    <label for="jb" class="col-sm-3 control-label">常见功能检测</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="jb" name="jb" >
    </div>
  </div>
  
  <div class="form-group"> 
    <label for="qd" class="col-sm-3 control-label">启动检测</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="qd" name="qd" >
    </div>
  </div>
  <div class="form-group"> 
    <label for="jg" class="col-sm-3 control-label">检测结果</label> 
     <div class="col-sm-9">
     <textarea rows="" cols="" class="form-control" id="jg" name="jg"></textarea>
    </div>     
  </div>
</form>
      </div><!--描述: 检测报告模态框body结束  -->
      
      <!--描述: 检测报告模态框footer开始  -->
      <div class="modal-footer">
      <button type = "button" class = "btn btn-info" onclick = "insertCR();"><i class = "glyphicon glyphicon-ok"></i>&nbsp;确认</button>
      <button type = "button" class = "btn btn-warning"><i class = "glyphicon glyphicon-leaf"></i>&nbsp;重置</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class = "glyphicon glyphicon-remove"></i>&nbsp;放弃</button>       
      </div><!--描述: 检测报告模态框footer结束  -->
      
    </div><!--描述: 检测报告模态框content结束  -->
  </div><!--描述: 检测报告模态框dialog结束  -->
</div> <!--描述: 检测报告模态框结束  -->	
		
	<div class="modal fade" tabindex="-1" role="dialog" id="deleteModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content danger">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">删除确认</h3>
      </div>
      <div class="modal-body">
	      <div class="alert alert-danger alert-dismissible fade in" role="alert" id="deleteAlert" >
	        	<p>您真的要删除&nbsp; <input type="hidden" id="delete_classid"/><span id="delete_classname"></span>&nbsp;板块吗 ？</p>
	       </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" onclick="deleteForum();"><i class="glyphicon glyphicon-trash"></i>&nbsp; 确认删除</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="glyphicon glyphicon-repeat"></i>&nbsp; 放弃</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	    	        	     
</body>
</html>