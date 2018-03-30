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
<div class="container">		
		<div class="col-lg-12 col-sm-12">
			<div class="panel panel-default ">
  <div class="panel-heading"><img src="${pageContext.request.contextPath}/img/renren.png"></div>
 <form action="${pageContext.request.contextPath}/abc/SellIntentionadd1">
  <table class="table">
    <tr style="text-align: right;">  	
    <td>汽车款式</td>
     <td>
     	 <div class="form-group">
    <label for="cd" class="col-sm-2 control-label sr-only">汽车款式</label>  
     <div class="col-sm-10">
    <select name="cd.cdid" class="form-control" required="required">
    	<option value="0">选择你的车型</option>
     <c:forEach items="${cdd}" var="cd">
    <option value="${cd.cdid}">${cd.cdname}</option>
      </c:forEach>
    </select>
  </div>
  </div>     	
     </td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>车辆所在地</td>	
     <td>
     	<div class="form-group">
    <label for="kcd" class="col-sm-2 control-label sr-only">车辆所在地</label>
     <div class="col-sm-10">
    <select name="city.csid" class="form-control">
     <c:forEach items="${ct}" var="c">
    <option value="${c.csid}">${c.cname}</option>
      </c:forEach>
    </select>
  </div> 
  </div>
     </td>	
    </tr>
    
    
    <tr >  	
    <td style="text-align: right;">是否当地车牌</td>	
     <td style="text-align: left;">
     	<div class="form-group">
    <label for="sNative" class="col-sm-2 control-label sr-only">是否当地车牌</label>
     <div class="col-sm-10">
     <div class="btn-group" data-toggle="buttons">
  	<label class="btn btn-default active"> 
  	<input type="radio" name="sNative" autocomplete="off" value="1" checked="checked">是
	</label> 
	<label class="btn btn-default"> 
	<input type="radio" name="sNative" value="1" autocomplete="off">否
	</label>
	</div>
	</div>
  </div> 
     </td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>过户次数</td>
     <td> <div class="form-group">
    <label for="gh" class="col-sm-2 control-label sr-only">过户次数</label>
    <div class="col-sm-10">
     <select name="gh" class="form-control">
      <option value="0">0</option>
     <option value="1">1</option>
     <option value="2">2</option>
     <option value="3">3</option>
      <option value="4">4</option>
     <option value="5">4次以上</option>
     </select>
    </div>
  </div>	</td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>初次上牌年份</td>	
     <td><div class="form-group">
    <label for="sp" class="col-sm-2 control-label sr-only">初次上牌年份</label>
    <div class="col-sm-10">
     <select name="sp" class="form-control">
      <option value="2007">2007年</option>
     <option value="2008">2008年</option>
     <option value="2009">2009年</option>
     <option value="2010">2010年</option>
      <option value="2011">2011年</option>
     <option value="2012">2012年</option>
     <option value="2013">2013年</option>
     <option value="2014">2014年</option>
     <option value="2015">2015年</option>
     <option value="2016">2016年</option>
     <option value="2017">2017年</option>
     <option value="2018">2018年</option>
     </select>
    </div>
  </div></td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>看车地点</td>	
     <td><div class="form-group">
    <label for="kcd" class="col-sm-2 control-label sr-only">看车地点</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="kcd"  required="required">
    </div>
  </div> </td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>预期售出时间</td>	
     <td> <div class="form-group">
    <label for="yq" class="col-sm-2 control-label sr-only">预计售出时间</label>
    <div class="col-sm-10">
     <select name="yq" class="form-control">
     <option value="0">非常急,三天以内</option>
     <option value="1">不是很急，但要在一周以内</option>
     <option value="2">想卖一个好价,一个月内</option>
     <option value="3">不着急,价格合适在卖</option>
     </select>
    </div>
  </div> </td>	
    </tr>
    
    <tr style="text-align: right;">  	
    <td>预约验车时间</td>	
     <td><div class="form-group">
    <label for="kcsj" class="col-sm-2 control-label sr-only">预约验车时间</label>
    <div class="col-sm-10">
      <input type="Date" class="form-control" name="kcsj" required="required">
    </div>
  </div> </td>	
    </tr>
    
    
    <tr>  	
    <td colspan="2" style="text-align: center;"><div class="form-group">
    <div class="col-lg-12 col-sm-12">
   <button type="submit" class="btn btn-success">下一步</button>
    </div>
  </div></td>	    	
    </tr>
  </table>
  </form>
</div>			
		</div>	
		</div>
</body>
</html>