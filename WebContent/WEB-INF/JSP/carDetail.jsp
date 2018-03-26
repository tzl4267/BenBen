<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"> </script>
   <script type ="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet"  href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css">
   <script type ="text/javascript" src = "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
   <script type = "text/javascript" src= "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
   <script type="text/javascript">
    function fun1(){
	$("#priceModal").modal("show");		
   }
   
   function fun2(){
		$("#resultModal").modal("show");		
	   }
   
   function fun3(){
		$("#appointModal").modal("show");		
	   }
   
   function fun4(){
		$("#cutpriceModal").modal("show");		
	   }

</script>
<body>
<c:forEach items="${sList}" var="s">
<c:forEach items="${seList}" var="se">
<div class="container">
<div class="row">
            <div class="col-lg-6 col-sm-6">
			 <div class="alert alert-info">
			${s.cd.cdname}			
			 </div>  
			</div>			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 ${s.pi.gh eq '48' ? "0过户":""}			
			 </div> 
			</div>			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 ${s.bq eq '48' ? "急售":""}			
			 </div> 
			</div>			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info" id = "sb">			 
			<script type="text/javascript">
					var d = "${s.spsj}";
					var de = new Date(d);
					var e = "${date}";
					var f = new Date(e);
					var g = de.getTime()-f.getTime();
					if(g>0){
						$("#sb").text("准新车");
					}															
					</script>	 			
			 </div> 
			</div>				
</div>

    <div class="row">
      <div class="col-lg-6 col-sm-6">
			<div id="ad-carousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
				<li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#ad-carousel" data-slide-to="1"></li>
				<li data-target="#ad-carousel" data-slide-to="2"></li>
				<li data-target="#ad-carousel" data-slide-to="3"></li>
				<li data-target="#ad-carousel" data-slide-to="4"></li>
				<li data-target="#ad-carousel" data-slide-to="5"></li>
				<li data-target="#ad-carousel" data-slide-to="6"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
					<img src="img/1.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/2.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/3.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/4.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/5.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/6.jpg" class="img-rounded">
				</div>
				<div class="item">
					<img src="img/7.jpg" class="img-rounded">
				</div>
			</div>
			<a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#ad-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>			
			 </div>  			
			
			<div class="col-lg-6 col-sm-6">						
			<div class="panel panel-info"> 
  <div class="panel-heading">${s.cd.cdname}</div>
  <div class="panel-body">
    <p>卖家报价:<font color="red">￥${s.jg}万</font>
    <button class = "btn btn-danger btn-sm" type = "button" onclick="fun4();">
    <span class = "glyphicon glyphicon-hand-right"></span>
	降价通知</button>
    </p>
  </div>
  <ul class="list-group">
    <li class="list-group-item">服务费:
    <c:if test="${s.jg*10000*0.04 >=3500}"><font color="red">${s.jg*10000*0.04}</font></c:if>
    <c:if test="${s.jg*10000*0.04 <3500}"><font color="red">3500</font></c:if>
    <font color="red">(大于3500:买家报价x4%;不足3500收3500)</font></li>
    <li class="list-group-item">上牌时间:<fmt:formatDate value="${s.spsj}" pattern="yyyy-MM"/></li>
    <li class="list-group-item">公里数:${s.lc}万公里</li>
    <li class="list-group-item">外迁查询:
    <font color="#93D1FF" size="3">
				<c:if test="${s.cd.pf eq '49'}">国一</c:if>
				<c:if test="${s.cd.pf eq '50'}">国二</c:if>
				<c:if test="${s.cd.pf eq '51'}">国三</c:if>
				<c:if test="${s.cd.pf eq '52'}">国四</c:if>			
				</font>
    </li>
    <li class="list-group-item">排量:${s.cd.pl}L</li>
    <li class="list-group-item">上牌城市:${s.spcs}</li>  
  </ul>
</div>
</div> 			
    </div>
    
    <div class="row">
    <div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 	 看车地点:
			 	 <c:if test="${se.cd.cdid == s.cd.cdid}">${se.kcd}</c:if>		        		        	
			 </div> 
			</div>	
			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 		卖车原因:${s.sc}
			 </div> 
			</div>	
			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 		车源号:${s.cy}
			 </div> 
			</div>	
			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 	<button class="btn btn-danger btn-sm" onclick="fun3();">
			 	<span class='glyphicon glyphicon-earphone'></span>预约看车</button>				
			 </div> 
			</div>	
			
			<div class="col-lg-2 col-sm-2">
			 <div class="alert alert-info"> 
			 		<button class="btn btn-primary btn-sm" onclick="fun1();"><span class='glyphicon glyphicon-usd'>
				</span>&nbsp;&nbsp;&nbsp;&nbsp;砍价</button>
			 </div> 
			</div>	
			
			<div class="col-lg-2 col-sm-2">		  			 	
				
				 <div class="alert alert-info">
				 <span class="glyphicon glyphicon-heart-empty"></span>
				<!--  <span class="glyphicon glyphicon-heart"></span>  -->				 
				 <button class="btn btn-danger btn-sm" onclick="">收藏</button>			 				
				 </div>			 
			</div>
			
			<div class="row">
             <div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>犇犇二手车质量检测合格证</h4>
			 	</div>
				 </div>			 					
            </div>
            
             <div class="row">
             <div class="col-lg-3 col-sm-3" style="text-align:center;">		  			 	
			 	<img class="img-circle" src="${s.emp.eurl}" width="120" height="100">
				 </div>	
				 
				 <div class="col-lg-9 col-sm-9">
				 <div class="panel panel-info">
  <div class="panel-heading">检验结果:</div>
  <div class="panel-body">
    <p>${s.cr.jg}</p>
  </div>
</div>		  			 				 	
</div>			 					
</div>     
    </div>
    
    <div class="row">
    <div class="col-lg-3 col-sm-3" style="text-align:center;">		  			 	
			 	<div class="panel panel-info"> 
  <div class="panel-heading">${s.emp.ename}师傅</div>
  <div class="panel-body">
    <p>机动车高级检测员</p>
  </div> 

  <ul class="list-group">
    <li class="list-group-item"><button class="btn btn-danger btn-sm" onclick="fun2();">车辆检测拒绝重大事故车</button></li>    
  </ul>
</div>
</div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:center;">		  
			 	<div class="panel panel-info">
  <div class="panel-heading">
         本车无重大事故:排查28项 
	<font color="green"><span class="glyphicon glyphicon-ok"></span></font></div>
  <div class="panel-body">
    <p><img  src="img/10.png"></p>
  </div>
</div>			 	
</div>

<div class="col-lg-3 col-sm-3" style="text-align:center;">		  
			 	<div class="panel panel-info">
  <div class="panel-heading">本车无火烧:排查4项
	<font color="green"><span class="glyphicon glyphicon-ok"></span></font></div>
  <div class="panel-body">
    <p><img  src="img/11.png"></p>
  </div>
</div>			 	
</div>

<div class="col-lg-3 col-sm-3" style="text-align:center;">		  
			 	<div class="panel panel-info">
  <div class="panel-heading">本车无泡水:排查6项
    <font color="green"><span class="glyphicon glyphicon-ok"></span></font></div>
  <div class="panel-body">
    <p><img  src="img/12.png"></p>
  </div>
</div>			 	
</div>   
</div>	

<div class="row">
<div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>车辆详情</h4>
			 	</div>
				 </div>	
</div>

<div class="row">
                <div class="col-lg-6 col-sm-6">
                <div class="panel panel-info">
  <div class="panel-heading">卖家说车:</div>
  <div class="panel-body">
    <p>${s.pc}</p>
  </div>
<ul class="list-group">
    <li class="list-group-item"><font color="green"><span class="glyphicon glyphicon-user"></span></font>车主姓名:${s.user.uname}</li>
    <li class="list-group-item"><font color="green"><span class="glyphicon glyphicon-compressed"></span></font>卖家职业:
    
    </li>
    <li class="list-group-item"><font color="green"><span class="glyphicon glyphicon-map-marker"></span></font>卖车地点:<c:if test="${se.cd.cdid == s.cd.cdid}">${se.city.cname}</c:if></li>
  </ul>
  
</div>		  			 	
</div>	
				 
				 <div class="col-lg-6 col-sm-6">		  
			 	<div class="panel panel-info">
  <div class="panel-heading">车辆手续信息 </div>
  <div class="panel-body">
    <p></p>
  </div>

  <ul class="list-group">
    <li class="list-group-item">年检到期时间:<fmt:formatDate value="${s.pi.nj}" pattern="yyyy-MM-dd"/>
    <font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
           商业险到期时间:<fmt:formatDate value="${s.pi.syx}" pattern="yyyy-MM-dd"/>
    </li>
    <li class="list-group-item">有无购车发票:${s.pi.bx eq "49" ? "有": "没有"}
    <font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
    4S店保养:${s.pi.byd eq "49" ? "是": "否"}
    </li>
    <li class="list-group-item">交强险到期时间:<fmt:formatDate value="${s.pi.jqx}" pattern="yyyy-MM-dd"/>
    <font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
    有无过户次数:${s.pi.gh eq "48" ? "否": "有"}
    </li>
    <li class="list-group-item">车辆购置税完税证明:${s.pi.gzs eq "48" ? "否": "有"}
    <font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
    有无改装:${s.pi.gz eq "48" ? "否": "有"}
    </li>
  </ul>
</div>
</div>				 
</div>  


<c:forEach items="${ptList}" var="pt">
<div class="row">
   <div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">			 	
			 	<h4><img  src="img/pi.png">${pt.ptname}</h4>			 	
			 	</div>
				 </div>					 
   </div>
   </c:forEach> 
   
   <div class="row"> 
   <c:forEach items="${pList}" var="p">
   <c:if test="${p.pt.ptid eq '1'}">  
              <div class="col-lg-4 col-sm-4" style="text-align:center;">		  			 	
			 	<div class="panel panel-info">
  <div class="panel-body">
    <img src="${p.purl}" width="300" height="200" class="img-rounded">
  </div>
 <!--  <div class="panel-footer">Panel footer</div> -->
</div>
</div> 
</c:if>	
</c:forEach>	 	
 </div> 
 
 <div class="row">
   <div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4><img  src="img/pi.png"> 车辆内饰  </h4>
			 	</div>
				 </div>	
   </div>
   
 
 
 
   <div class="row"> 
   <c:forEach items="${pList}" var="p">
   <c:if test="${p.pt.ptid eq '2'}">
              <div class="col-lg-4 col-sm-4" style="text-align:center;">		  			 	
			 	<div class="panel panel-info">
  <div class="panel-body">
    <img src="${p.purl}" width="300" height="200" class="img-rounded">
  </div>
 <!--  <div class="panel-footer">Panel footer</div> -->
</div>
</div> 
</c:if>
</c:forEach>		 	
 </div> 
 
 
 <div class="row">
   <div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4><img  src="img/pi.png"> 发动机底盘   </h4>
			 	</div>
				 </div>	
   </div>
   
 
 
 
   <div class="row"> 
   <c:forEach items="${pList}" var="p">
   <c:if test="${p.pt.ptid eq '3'}">
              <div class="col-lg-4 col-sm-4" style="text-align:center;">		  			 	
			 	<div class="panel panel-info">
  <div class="panel-body">
    <img src="${p.purl}" width="300" height="200" class="img-rounded">
  </div>
 <!--  <div class="panel-footer">Panel footer</div> -->
</div>
</div> 
</c:if>
</c:forEach>		 	
 </div> 
 

   
   <div class="row">

   <div class="col-lg-12 col-sm-12" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>犇犇二手车检测报告</h4>
			 	</div>
				 </div>	
   </div>
   
   <div class="row">
   <div class="col-lg-4 col-sm-4" >		  
			 	<div class="alert alert-info">
			 	检测时间:<fmt:formatDate value="${s.sjsj}" pattern="yyyy-MM-dd"/>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-4 col-sm-4">		  
			 	<div class="alert alert-info">
			 	检测城市:
			 	</div>
				 </div>	
				 
				 <div class="col-lg-4 col-sm-4">		  
			 	<div class="alert alert-info">
			 	检测对象:${s.cd.cdname}
			 	</div>
				 </div>	
   </div>
   
   
   <div class="row">
   <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">			 	
	                车身颜色:${s.ys}
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	年检到期时间:
	             <fmt:formatDate value="${s.pi.nj}" pattern="yyyy-MM-dd"/>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	交强险到期时间:<fmt:formatDate value="${s.pi.jqx}" pattern="yyyy-MM-dd"/>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	商业险到期时间:
	             <fmt:formatDate value="${s.pi.syx}" pattern="yyyy-MM-dd"/>
			 	</div>
				 </div>			 
   </div>
   
   <div class="row">
   <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">			 	
	                上牌日期:
	     <fmt:formatDate value="${s.spsj}" pattern="yyyy-MM"/>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
	             出厂日期:
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	归属地:
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	过户次数:${s.pi.gh}	
			 	</div>
				 </div>			 
   </div>
   
   <div class="row">
   <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">			 	
	               有无购车发票:
	${s.pi.bx eq "49" ? "有": "没有"}
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
	      是否4S店保养:
	${s.pi.byd eq "49" ? "是": "否"}
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 	有无改装:
	${s.pi.gz eq "48" ? "否": "有"}
			 	</div>
				 </div>	
				 
				 <div class="col-lg-3 col-sm-3" style="text-align:left;">		  
			 	<div class="alert alert-info">
			 		车辆购置税完税证明:
	${s.pi.gzs eq "48" ? "否": "有"}
			 	</div>
				 </div>			 
                </div>
                
                <div class="row">
   <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>重大事故排查:</h4>	
			 	</div>
				 </div>					 
				 <div class="col-lg-8 col-sm-8" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	${s.cr.sg}
			 	</div>
				 </div>	
                </div>
                
                 <div class="row">
   <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>核心部件检测:</h4>		
			 	</div>
				 </div>					 
				 <div class="col-lg-8 col-sm-8" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	${s.cr.hx}
			 	</div>
				 </div>	
                </div>
                
                 <div class="row">
   <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>磨损程度评估:</h4>
			 	</div>
				 </div>					 
				 <div class="col-lg-8 col-sm-8" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	${s.cr.ms}	
			 	</div>
				 </div>	
                </div>
                
                 <div class="row">
   <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>常用功能检测:</h4>
			 	</div>
				 </div>					 
				 <div class="col-lg-8 col-sm-8" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 		${s.cr.jb}
			 	</div>
				 </div>	
                </div>
                
                <div class="row">
   <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font>
			 	</div>
				 </div>	
				 
				 <div class="col-lg-2 col-sm-2" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 	<h4>启动检测:</h4>
	
			 	</div>
				 </div>					 
				 <div class="col-lg-8 col-sm-8" style="text-align:center;">		  
			 	<div class="alert alert-info">
			 		${s.cr.qd}
			 	</div>
				 </div>	
                </div>
  
			</div><!-- container end -->
			
			<div class="modal fade" id="resultModal">				
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">					
					<h4 class="modal-title"><font color="red">犇犇二手车郑重承诺:</font></h4>
				</div>
				<div class="modal-body">
					<h4 class="modal-title"><font color="black">自本网站成立以来，一致严格遵守质量第一的原则，拒绝
					有重大交通事故的车辆，拒绝检查质量不合车的车辆。为广大顾客创造一个安全，放心的买卖车辆的平台！
					</font></h4>
				</div>
				<div class="modal-footer">
					<h4 class="modal-title"><font color="black">
				您的满意就是我们最大的动力！欢迎大家监督!
					</font></h4>
				</div>
			</div>			
		</div>
	</div> 
	
	
	<div class="modal fade" id="priceModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"data-backdrop="false">		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="text-align:center;">
		<button type="button" class="close" data-dismiss="modal"aria-hidden="true">&times;</button>															
				<img src="img/p.png">
				</div>
				
				<div class="modal-body">
				<div style="text-align:center;"><h3>请输入您的期望价格:</h3></div>	
				<div style="text-align:center;">卖家报价:<font color="red">${s.jg}</font>万</div>	
				<div style="text-align:center;">
				<form action="insertbrs"  method="post" class="form-inline">
				<div class="form-group">
    <label class="sr-only" for="insert_lxjg">期望价格:</label>
    <input type="text" class="form-control" id="insert_lxjg" name="lxjg" placeholder="期望价格">万
  </div>		
   <div style="text-align:center;">
					<button type ="submit" class="btn btn-warning btn-sm">提交</button>									
				</div>		
				</form>				
				</div>			  
				</div>			
			</div>			
		</div>		
	</div>
	
	<div class="modal fade" id="appointModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">
					<font color="orange"><span class="glyphicon glyphicon-calendar"></span></font>					
					<font>补充看车信息，</font><font color="orange">约车速度更快</font></h4>
					<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">车辆相关具体信息:</div>
  <div class="panel-body">
    <p><img src="img/2.jpg" width="150" height="100" class="img-rounded"></p>
  </div>

  <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item">${s.cd.cdname}</li>
    <li class="list-group-item">卖家报价:<font color="red">￥${s.jg}万</font></li>
    <li class="list-group-item">当前车辆位置:
    <font color="green"><span class="glyphicon glyphicon-map-marker"></span>
    </font><c:if test="${se.cd.cdid == s.cd.cdid}">${se.city.cname}</c:if>
    <font size="2">(以实际看车地点为准)</font>
    </li>
  </ul>
</div>
					
				</div>
				<div class="modal-body">
					<form action="" method="post" class="form-horizontal">					
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">我的常用地址:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id=""
									name="" required="required">
							</div>
						</div>																								

						<div class="form-group">
							<label for="" class="col-sm-3 control-label">我的上牌城市:</label>
							<div class="col-sm-9">
								<select id="" name="" title="" class="form-control"></select>									
							</div>
						</div>
						
						<div class="form-group">
							<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">请选择看车时间<font size="2">(多选更容易约到车)</font></div>

  <!-- Table -->
  <table class="table" border="1">
    <tr>
    <td>1</td>
    <td>8:00-10:00</td>
    <td>10:00-12:00</td>
    <td>12:00-14:00</td>
    <td>14:00-16:00</td>
    <td>16:00-18:00</td>
    <td>18:00-20:00</td>
    </tr>
    
    <tr>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    </tr>
    
    <tr>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    </tr>
  </table>
</div>
						</div>
						
						
					</form>

				</div>
				<div class="modal-footer" style="text-align:center;">					
              <button type ="submit" class="btn btn-warning btn-lg">提交</button>
				</div>
			</div>			
		</div>		
	</div>
	
	
	<div class="modal fade" id="cutpriceModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"data-backdrop="false">		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="text-align:center;">
		<button type="button" class="close" data-dismiss="modal"aria-hidden="true">&times;</button>															
				<img src="img/j.png">
				</div>
				
				<div class="modal-body">
				<div style="text-align:center;"><h3>降价提醒:</h3></div>	
				<div style="text-align:center;">卖家报价:<font color="red">${s.jg}</font>万
				建议价${s.jg}-${s.jg*0.9}万
				</div>	
				<div style="text-align:center;">
				<form action=""  method="post" class="form-inline">
				<div class="form-group">
    <label class="sr-only" for="">降到多少通知我:</label>
    <input type="text" class="form-control" id="" name="" placeholder="降到多少通知我">万
  </div>		 				
				<div class="modal-footer" style="text-align:center;">					
              <button type ="submit" class="btn btn-warning btn-lg">提交</button>
				</div>		
				</form>				
				</div>			  
				</div>			
			</div>			
		</div>		
	</div>
	</c:forEach>
	</c:forEach>
</body>
</html>
