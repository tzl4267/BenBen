<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
    body{
     padding-top: 30px;
    }
    .carousel{
     height:280px;
     /*height: auto;*/
     background-color: #000000;
    }
    .carousel .item{
     /*height: auto;*/
     height: 280px;
     background-color: #000000;
    }
    .carousel img{
     /*height: 280px;*/
     width: 100%;
    }
    #span1:HOVER {
	color: red;
}
    </style>
<link rel = "stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css">
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"> </script>
   <script type ="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet"  href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css">
   <script type ="text/javascript" src = "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
   <script type = "text/javascript" src= "${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
   <script type="text/javascript">
   /* 显示砍价模态框 */
    function showPriceModal(){
	$("#priceModal").modal("show");		
   }
   
    /* 显示预约看车模态框*/
   function showAppointModal(){
		$("#appointModal").modal("show");		
	   }
   
   /* 显示播放视屏模态框*/
   function showVideoModal(){
		$("#videoModal").modal("show");		
	   }
</script>
<body>
<jsp:include page="daohang.jsp"></jsp:include>

<div class="container"><!--container容器开始 -->
<!--汽车详细信息展示开始  -->
<div class="row"><!-- row1开始  -->

<div class="col-lg-12 col-sm-12"><!--row1删格开始  -->
<div class="panel panel-info"><!--面板开始  -->

  <div class="panel-heading" style="text-align: center;">汽车详细信息展示</div>
  <table class="table"><!--table开始  -->
  
  <tr> <!-- tr1开始 -->
  <td colspan="3" >${s.cd.cdname}</td>
  <td style="text-align: center;"><font color="red">${s.pi.gh eq '48' ? "0过户":""}</font></td>
  <td style="text-align: center;"><font color="red">${s.bq eq '48' ? "急售":""}</font></td>
  <td style="text-align: center;" id="sb">
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
  </td>
  </tr><!-- tr1结束 --> 
  
  <tr ><!-- tr2开始 -->
  <td colspan="4" rowspan="5">
  <div id="ad-carousel" class="carousel slide" data-ride="carousel" >
				<ol class="carousel-indicators">
				<li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#ad-carousel" data-slide-to="1"></li>
				<li data-target="#ad-carousel" data-slide-to="2"></li>
				<li data-target="#ad-carousel" data-slide-to="3"></li>
				<li data-target="#ad-carousel" data-slide-to="4"></li>
				<li data-target="#ad-carousel" data-slide-to="5"></li>
				<li data-target="#ad-carousel" data-slide-to="6"></li>
				<li data-target="#ad-carousel" data-slide-to="7"></li>
				<li data-target="#ad-carousel" data-slide-to="8"></li>
				<li data-target="#ad-carousel" data-slide-to="9"></li>
				<li data-target="#ad-carousel" data-slide-to="10"></li>			
				</ol>
				<div class="carousel-inner">
					<div class="item active" style="background-size:cover;">
					<img src="${pageContext.request.contextPath}/${s.purl}" class="img-rounded" >
					<div class="carousel-caption">
                    <p>
                    <font color="white" size="4"><span class="glyphicon glyphicon-map-marker"></span></font>
                                                   看车地点: ${s.kcd} 
                    <font color="white" size="4"><span class="glyphicon glyphicon-user"></span></font>
                     <font color="white">${s.user.uname}先生卖车原因:${s.sc}</font>
                   </p>
                    </div>					
				</div>
				<c:forEach items="${pList}" var="p">
				<div class="item">
					<img src="${pageContext.request.contextPath}/${p.purl}" class="img-rounded" width="500" height="99" >
					<div class="carousel-caption">
                    <font size="3" color="white">${p.pinfo}</font>
                    </div>							
				</div>
				</c:forEach>			
			</div>
			<a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#ad-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>			  
  </td>
  <td colspan="2">${s.cd.cdname}</td>
  </tr><!-- tr2结束 --> 
  
  <tr ><!-- tr3开始 --> 
  <td colspan="1">卖家报价:<font color="red">￥${s.jg}万</font></td>
  <td colspan="1">
  服务费:
    <c:if test="${s.jg*10000*0.04 >=3500}"><font color="red">${s.jg*10000*0.04}元</font></c:if>
    <c:if test="${s.jg*10000*0.04 <3500}"><font color="red">3500元</font></c:if>
    <font color="red">(车价×4%，最低3500)</font> 
  </td>
  </tr><!-- tr3结束 -->
  
  <tr ><!-- tr4开始 -->
  <td colspan="1">上牌时间:<fmt:formatDate value="${s.spsj}" pattern="yyyy-MM"/></td>
  <td colspan="1">公里数:${s.lc}万公里</td>
  </tr><!-- tr4结束 -->
  
  <tr ><!-- tr5开始 -->
  <td colspan="1">排放标准:
                <c:if test="${s.cd.pf eq '49'}">国一</c:if>
				<c:if test="${s.cd.pf eq '50'}">国二</c:if>
				<c:if test="${s.cd.pf eq '51'}">国三</c:if>
				<c:if test="${s.cd.pf eq '52'}">国四</c:if>
  </td>
  <td colspan="1">排量:${s.cd.pl}L</td>
  </tr><!-- tr5结束 -->
  
  <tr ><!-- tr6开始 --> 
  <td colspan="1">上牌城市:${s.spcs}</td>
  <td colspan="1">车源号:${s.cy}</td>
  </tr><!-- tr6结束 -->
  
  <tr ><!-- tr7开始 -->
  <td colspan="2" style="text-align: center;">
  <button class="btn btn-danger btn-sm" onclick="showAppointModal();">
  <span class='glyphicon glyphicon-earphone'></span>预约看车</button>
  </td>
  <td colspan="2" style="text-align: center;">
  <button class="btn btn-danger btn-sm" onclick="showPriceModal();"> 
  <span class='glyphicon glyphicon-usd'></span>砍价</button>
  </td>
  <td colspan="2" style="text-align: center;">  				 		
	<font color="red"><span id = "span1" class="btn glyphicon ${c!=null ? 'glyphicon-heart':'glyphicon-heart-empty'}"></span>
	<font color="black" style="position: relative;top:2px;left:-5px;">收藏</font></font>
	<script>	 
    $("#span1").click(function(){ 
    	$(this).toggleClass("glyphicon-heart-empty");
		$(this).toggleClass("glyphicon-heart");
    	var user="${user}";
    	console.log(user&&user!="");
    	if(user&&user!=""){
    		var c ="${c}";
    		console.log(c&&c!="");
    		if(c&&c!=""){    			
    			location="${pageContext.request.contextPath}/carDetail/deleteCollectRecord?crid=${c.crid}";       			
        	}else{        		
        		location="${pageContext.request.contextPath}/carDetail/insertCollectRecord?sc.cid=${s.cid}&user.uid=${user.uid}";  			
        	}   		
    	}else{
    		$("#loginModal").modal("show");
    	}
    }
   );
</script>			
  </td>
  </tr><!-- tr7结束 -->
  </table><!--table结束  --> 
</div><!--面板结束  -->
</div><!--row1删格结束  -->

</div><!-- row1结束  -->
<!--汽车详细信息展示结束  -->

<!-- 亮点配置信息开始 -->
<!-- if判断SecondCar表中是否存在亮点配置的id 开始-->
<c:if test="${not empty s.os.oid}">			
			<div class="row"><!--row2开始  -->			
			<div class="col-lg-12 col-sm-12"><!-- row2删格开始 -->
			<div class="panel panel-info"><!-- row2面板开始 -->
			
	<!-- 亮点图片显示  -->					
  <div class="panel-heading">
  <img src="${pageContext.request.contextPath}/img/liangdian.jpg" width="30" height="30" class="img-circle">亮点配置:
  </div>

  <table class="table table-bordered"><!-- row2表格开始 -->
  
  <!--判断亮点是否存在开始   存在显示实心的心；不存在显示空心的心-->
  <tr style="text-align: center;">
  <td>倒车影像 :
  ${s.os.yx eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
   </td>
  <td>无钥匙启动 :
  ${s.os.qd eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  <td>胎压检测 :
  ${s.os.ty eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  <td>定速巡航 :
  ${s.os.xh eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  </tr>
  
  <tr style="text-align: center;">
  <td>车身稳定 :
  ${s.os.wd eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  <td>无钥匙进入 :
  ${s.os.jr eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  <td>GPS导航 :
  ${s.os.gps eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  <td>倒车雷达 :
  ${s.os.ld eq "49"? "<font color='red'><span class='glyphicon glyphicon-heart'></span></font>":"<font color='red'><span class='glyphicon glyphicon-heart-empty'></span></font>"}
  </td>
  </tr><!--判断亮点是否存在结束  -->
  
  
  <!--判断只有使0过户才会显示出以下信息  -->
  <c:if test="${s.pi.gh eq '48'}">
  <tr >
  <td style="text-align: center;">
  <font color="orange" size="5"><span class="glyphicon glyphicon-thumbs-up"></span></font></td>
 <td style="text-align: center;">
  ${s.pi.gh eq '48' ? "<font size='4'>0次过户</font>":""}	
  </td>
  <td style="text-align: center;" colspan="2">
 过户次数越少，保值率越高 </td>
  </tr>
  </c:if>
  
  <!--判断只有使车况优秀才会显示出以下信息  -->
  <c:if test="${s.ck eq '优秀'}">
  <tr>
  <td style="text-align: center;">
  <font color="orange" size="5"><span class="glyphicon glyphicon-thumbs-up"></span></font></td>
 <td style="text-align: center;">
  ${s.ck eq "优秀" ? "<font size='4'>优秀车况</font>":""}	
  </td>
  <td style="text-align: center;" colspan="2">
卖家正常代步使用，保养得当，车况良好  </td>
  </tr>
  </c:if>
  
  <!--判断只有车况良好才会显示出以下信息  -->
  <c:if test="${s.ck eq '良好'}">
  <tr>
  <td style="text-align: center;">
  <font color="orange" size="5"><span class="glyphicon glyphicon-thumbs-up"></span></font></td>
 <td style="text-align: center;">
  ${s.ck eq "良好" ? "<font size='4'>良好车况</font>":""}	
  </td>
  <td style="text-align: center;" colspan="2">
卖家正常代步使用，保养得当，车况良好  </td>
  </tr>
  </c:if>
  </table><!-- row2表格结束 -->
</div><!-- row2面板结束 -->           
</div><!-- row2删格结束-->
</div><!--row2结束  -->				
</c:if><!-- if判断结束-->
<!-- 亮点配置信息结束 -->

<!--质量检测合格证信息开始-->
<div class="row"><!--row3开始  -->
<div class="col-lg-12 col-sm-12"><!--row3删格开始 -->
<div class="panel panel-info"><!--row3面板开始  -->

  <div class="panel-heading" style="text-align: center;">犇犇二手车质量检测合格证</div>

  <table class="table"><!-- row3table开始  -->
  <tr><!--tr1开始  -->
  <td style="text-align: center;"><img class="img-circle" src="${pageContext.request.contextPath}/${s.emp.eurl}"
  width="60" height="30"></td> 
  <td style="text-align: center;">${s.emp.ename}师傅</td>
  <td style="text-align: center;">机动车高级检测员</td>
  <td style="text-align: center;">
  <button class="btn btn-danger btn-sm" onclick="showVideoModal();">车辆检测拒绝重大事故车</button></td>
  </tr><!--tr1结束 -->
  
   <tr><!--tr2开始  -->
    <td>检验项目:</td>
    <td>
    <img  src="${pageContext.request.contextPath}/img/jianyan1.png">
       本车无重大事故:排查28项 
	<font color="green"><span class="glyphicon glyphicon-ok"></span></font>
    </td>
    <td>
    <img  src="${pageContext.request.contextPath}/img/jianyan2.png">
     本车无火烧:排查4项
	<font color="green"><span class="glyphicon glyphicon-ok"></span></font>
    </td>
    <td>
    <img  src="${pageContext.request.contextPath}/img/jianyan3.png">
     本车无泡水:排查6项
    <font color="green"><span class="glyphicon glyphicon-ok"></span></font>  
    </td>
    </tr><!--tr2结束  -->
    
    <tr><!--tr3开始  -->
    <td colspan="1">检验结果:</td>
    <td colspan="3">${s.cr.jg}</td>
    </tr><!--tr3结束  -->

  </table><!-- row3table结束  -->
</div><!--row3面板结束  -->
</div ><!--row3删格结束 -->
</div><!--row3结束  -->
<!--质量检测合格证信息开结束-->

<!-- 车辆详情信息开始 -->
<div class="row"><!--row4开始  -->
<div class="col-lg-12 col-sm-12"><!--row4删格开始  -->
<div class="panel panel-info"><!--row4面板开始  --> 
  <div class="panel-heading" style="text-align:center;">车辆详情</div>
  <!--row4table开始  -->
  <table class="table table-bordered">
  <tr style="text-align:center;">
  <td>卖家信息:</td>
  <td><img src="${pageContext.request.contextPath}/img/touxiang.jpg" class="img-circle" width="50" height="30"></td>
  <td><font color="green"><span class="glyphicon glyphicon-user"></span></font>车主姓名:${s.user.uname}</td>
  <td><font color="green"><span class="glyphicon glyphicon-compressed"></span></font>卖家职业:${s.user.voc.vname}</td>
   <td>
   <font color="green"><span class="glyphicon glyphicon-map-marker"></span></font>
        卖车地点:${s.kcd}
   </td> 
  <tr>
  <tr>
  <td style="text-align:center;">卖家说车:</td>
  <td colspan="4">${s.pc}</td>
  </tr>
  
  <tr style="text-align:center;">
  <td><font size="4"><span class="label label-danger">手续信息(1):</span></font></td>
  <td>年检到期时间<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  <fmt:formatDate value="${s.pi.nj}" pattern="yyyy-MM-dd"/></td>
  <td>商业险到期时间<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  <fmt:formatDate value="${s.pi.syx}" pattern="yyyy-MM-dd"/></td>
  <td>有无购车发票<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  ${s.pi.bx eq "49" ? "有": "没有"}</td>
  <td>4S店保养<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  ${s.pi.byd eq "49" ? "是": "否"}</td>
  </tr>
  
  <tr style="text-align:center;">
  <td><font size="4"><span class="label label-danger">手续信息(2):</span></font></td>
  <td>交强险到期时间<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  <fmt:formatDate value="${s.pi.jqx}" pattern="yyyy-MM-dd"/></td>
  <td>有无过户次数<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  ${s.pi.gh eq "48" ? "否": "有"}</td>
  <td>车辆购置税完税证明<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  ${s.pi.gzs eq "48" ? "否": "有"}</td>
  <td>有无改装<font color="green"><span class="glyphicon glyphicon-leaf"></span></font>
  ${s.pi.gz eq "48" ? "否": "有"}</td>
  </tr>
 
  </table> <!--row4table结束 -->
</div><!--row4面板结束  -->
</div><!--row4删格结束 -->
</div><!--row4结束  -->
<!-- 车辆详情信息结束-->

<!--车辆外观信息开始  -->
 <div class="row"><!--row5开始  -->
   <div class="col-lg-12 col-sm-12" style="text-align:center;"><!--row5删格开始  -->		  
			 	<div class="alert alert-info">
			 	<h5><img  src="${pageContext.request.contextPath}/img/waiguan.png" height="15" >车辆外观</h5>
			 	</div>
				</div><!--row5删格结束  -->	
   </div><!--row5结束  -->
 
   <div class="row"><!--row6开始  -->
   <!-- 循环判断所对应的图片 --> 
    <c:forEach items="${pList}" var="p">
   <c:if test="${p.tinfo.pt.ptid eq '1' and s.cid eq p.sc.cid}">
              <div class="col-lg-6 col-sm-6" style="text-align:center;">		  			 	
			 <div class="panel panel-info">
  <div class="panel-body">
    <img src="${pageContext.request.contextPath}/${p.purl}" width="530" height="300" class="img-rounded">
  </div>
  <div class="panel-footer">${p.tinfo.tinfo}</div>
</div>
</div> 
 </c:if>
</c:forEach>		 	
 </div> <!--row6结束  -->
<!-- 车辆外观信息结束 -->

<!--车辆内饰信息开始  -->
 <div class="row"><!--row7开始  -->
   <div class="col-lg-12 col-sm-12" style="text-align:center;"><!--row7删格开始  -->		  
			 	<div class="alert alert-info">
			 	<h5><img  src="${pageContext.request.contextPath}/img/waiguan.png">车辆内饰</h5>
			 	</div>
				</div><!--row7删格结束  -->	
   </div><!--row7结束  -->
 
   <div class="row"><!--row8开始  -->
   <!-- 循环判断所对应的图片 --> 
    <c:forEach items="${pList}" var="p">
   <c:if test="${p.tinfo.pt.ptid eq '2' and s.cid eq p.sc.cid}">
              <div class="col-lg-6 col-sm-6" style="text-align:center;">		  			 	
			 <div class="panel panel-info">
  <div class="panel-body">
    <img src="${pageContext.request.contextPath}/${p.purl}" width="530" height="300" class="img-rounded">
  </div>
  <div class="panel-footer">${p.tinfo.tinfo}</div>
</div>
</div> 
 </c:if>
</c:forEach>		 	
 </div> <!--row8结束  -->
<!-- 车辆内饰信息结束 -->

<!--发动机底盘信息开始  -->
 <div class="row"><!--row9开始  -->
   <div class="col-lg-12 col-sm-12" style="text-align:center;"><!--row9删格开始  -->		  
			 	<div class="alert alert-info">
			 	<h5><img  src="${pageContext.request.contextPath}/img/waiguan.png">发动机底盘</h5>
			 	</div>
				</div><!--row9删格结束  -->	
   </div><!--row9结束  -->
 
   <div class="row"><!--row10开始  -->
   <!-- 循环判断所对应的图片 --> 
    <c:forEach items="${pList}" var="p">
   <c:if test="${p.tinfo.pt.ptid eq '3' and s.cid eq p.sc.cid}">
              <div class="col-lg-6 col-sm-6" style="text-align:center;">		  			 	
			 <div class="panel panel-info">
  <div class="panel-body">
    <img src="${pageContext.request.contextPath}/${p.purl}" width="530" height="300" class="img-rounded">
  </div>
</div>
</div> 
 </c:if>
</c:forEach>		 	
 </div> <!--row10结束  -->
<!-- 发动机底盘信息结束 -->

<!-- 二手车检测报告信息开始 -->
<div class="row"><!--row11开始  -->
<div class="col-lg-12 col-sm-12"><!--row11栅格开始  -->
<div class="panel panel-info"><!--row11面板开始  -->

  <div class="panel-heading" style="text-align:center;">犇犇二手车检测报告</div>

<!-- row11table开始 -->
  <table class="table table-bordered">
  <tr style="text-align:center;" class="active">
  <td>检测时间:<fmt:formatDate value="${s.sjsj}" pattern="yyyy-MM-dd"/></td>
  <td>检测城市:${s.kcd}</td>
  <td colspan="2">检测对象:${s.cd.cdname}</td>
  </tr>
  
  <tr style="text-align:center;" class="active">
  <td>车身颜色:${s.ys}</td>
  <td>年检到期时间:<fmt:formatDate value="${s.pi.nj}" pattern="yyyy-MM-dd"/></td>	             
  <td>交强险到期时间:<fmt:formatDate value="${s.pi.jqx}" pattern="yyyy-MM-dd"/></td>
  <td>商业险到期时间:<fmt:formatDate value="${s.pi.syx}" pattern="yyyy-MM-dd"/></td>	             
  </tr>
  
  <tr style="text-align:center;" class="active">
  <td>上牌日期:<fmt:formatDate value="${s.spsj}" pattern="yyyy-MM"/></td>	     
  <td colspan="3">过户次数:${s.pi.gh}</td>	             	             
  </tr>
  
  <tr style="text-align:center;" class="active">
  <td>有无购车发票:${s.pi.bx eq "49" ? "有": "没有"}</td>	
  <td>是否4S店保养:${s.pi.byd eq "49" ? "是": "否"}</td>		             
  <td>有无改装:${s.pi.gz eq "48" ? "否": "有"}</td>	
  <td>车辆购置税完税证明:${s.pi.gzs eq "48" ? "否": "有"}</td>		             
  </tr>
  
  <tr style="text-align:center;">
  <td class="active"><font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font></td>	
  <td class="info">重大事故排查:</td>		             
  <td colspan="2" class="active">${s.cr.sg}</td>			             
  </tr>
  
  <tr style="text-align:center;">
  <td class="active"><font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font></td>	
  <td class="info">心部件检测:</td>		             
  <td colspan="2" class="active">${s.cr.hx}</td>			             
  </tr>
  
  <tr style="text-align:center;">
  <td class="active"><font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font></td>	
  <td class="info">磨损程度评估:</td>		             
  <td colspan="2" class="active">${s.cr.ms}</td>			             
  </tr>
  
  <tr style="text-align:center;">
  <td class="active"><font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font></td>	
  <td class="info">启动检测:</td>		             
  <td colspan="2" class="active">${s.cr.qd}</td>			             
  </tr>
  
  <tr style="text-align:center;">
  <td class="active"><font color="green"><span class="glyphicon glyphicon-ok"></span>${s.cr.hg eq "49" ? "检查合格":"不合格"}</font></td>	
  <td class="info">常用功能检测:</td>		             
  <td colspan="2" class="active">${s.cr.jb}</td>			             
  </tr>
  </table><!--row11 table开始 -->
</div><!--row11面板结束  -->
</div><!--row11栅格结束  -->
</div><!--row11结束  -->
<!-- 二手车检测报告信息结束 -->

<!-- 砍价模态框开始-->
  <div class="modal fade" id="priceModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"data-backdrop="false">		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel panel-default">
     <div class="panel-heading" style="text-align:center;">
     <img src="${pageContext.request.contextPath}/img/kanjia.png">
     </div> 
   <table class="table">
    <tr style="text-align:center;"><td><font size="5">请输入您的期望价格</font></td></tr>
    <tr style="text-align:center;"><td>卖家报价:<font color="red">${s.jg}</font>万</td></tr>
  </table>
  </div>				
  </div>
<div class="modal-body">
					<form action="${pageContext.request.contextPath}/carDetail/insertBargainRecord" method="post" class="form-horizontal"
						name="priceForm" id="priceForm">
						<!--二手车编号不需要隐藏  -->
						<div class="form-group">
							<label for="cid" class="col-sm-2 control-label sr-only">二手车编号:</label>
							<div class="col-sm-10">
								<input type="hidden" class="form-control"
								name ="sc.cid" value="${s.cid}">																	
							</div>
						</div>
						<!--用户编号不需要隐藏  -->
						<div class="form-group">
							<label for="user.uid" class="col-sm-2 control-label sr-only">用户编号:</label>
							<div class="col-sm-10">
								<input type="hidden" class="form-control" 
									name="user.uid" value="${s.user.uid}">
							</div>							
						</div>
						<!--理想价格需要不隐藏  -->
						<div class="form-group">
							<label for="lxjg" class="col-sm-2 control-label sr-only">理想价格:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" 
									name="lxjg"  placeholder="理想价格" required="required"
									>
							</div>
							<div class="col-sm-1">
								<font size="4">万</font>
							</div>						
						</div>
						<!-- 订单处理状态未处理是0，不需要隐藏  -->
						<div class="form-group">
							<label for="brsta" class="col-sm-2 control-label sr-only">订单处理状态:</label>
							<div class="col-sm-10">
								<input type="hidden" class="form-control" 
									name="brsta" value="0">
							</div>							
						</div>
						<!--提交到后台  -->
						<div class="form-group" style="text-align:center;">
					  <button type="submit" class="btn btn-warning btn-default" >提交</button>										
				       </div>											
					</form>
				</div>
			</div>			
		</div>		
	</div>
 <!-- 砍价模态框开始-->
 
 <!-- 预约看车模态框开始 -->
	<div class="modal fade" id="appointModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"data-backdrop="false">		
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
    <p><img src="${pageContext.request.contextPath}/${s.purl}" width="150" height="100" class="img-rounded"></p>
  </div>

  <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item">${s.cd.cdname}</li>
    <li class="list-group-item">卖家报价:<font color="red">￥${s.jg}万</font></li>
    <li class="list-group-item">当前车辆位置:${s.kcd}
    <font color="green"><span class="glyphicon glyphicon-map-marker"></span></font>
    <font size="2">(以实际看车地点为准)</font>
    </li>
  </ul>
</div>					
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/carDetail/insertAppointRecord" method="post" class="form-horizontal" role="form">						
						<div class="form-group">
							<label for="sc.cid" class="col-sm-3 control-label">二手车编号:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="sc.cid" value="${s.cid}">									
							</div>
						</div>

						<div class="form-group">
							<label for="user.uid" class="col-sm-3 control-label">用户编号:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="user.uid" value="${s.user.uid}">									
								</div>
							</div>
							
							<div class="form-group">
							<label for="asta" class="col-sm-3 control-label">订单处理状态:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" 
									name="asta" value="0">
							</div>							
						</div>
						
						<div class="form-group">
							<label for="ardate" class="col-sm-3 control-label">看车时间:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="ardate">									
							</div>							
						</div>
							
							<div style="text-align: center;" class="form-group">
								<div class="col-lg-12 col-sm-12">
										<button type="submit" class="btn btn-warning btn-sm">提交</button>												
								</div>								
							</div>
					</form>
				</div>				
			</div>			
		</div>		
	</div>
	<!-- 预约看车模态框结束-->
	
	<!--视频播放模态框开始  -->
	<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="false">		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<img src="${pageContext.request.contextPath}/img/renren.png">
				</div>
				<div class="modal-body">
					<video width="620" height="300" controls="controls"> 
                   <source src="${pageContext.request.contextPath}/img/report-video-sort.mp4" type="video/ogg"> 
                   <source src="${pageContext.request.contextPath}/img/report-video-sort.mp4" type="video/mp4"> 
                                                 您的浏览器不支持此种视频格式。 
                   </video> 
			 </div>				
			 </div>		
		 </div>	
	</div>
	<!--视频播放模态框结束-->
	
	<!-- 登陆模态框开始 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">						
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">登陆</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/carDetail/login" class="form-horizontal">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">用户名:</span>
								<input type="hidden" name="cid" value="${s.cid}"/>
								<input type="text" class="form-control" name="uname"/>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							<span class="input-group-addon">密码</span> 
							<input type="password"class="form-control" name="upass"/>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<input type="submit" class="form-control" value="登陆"/>									
							</div>
						</div>
					</form>
				</div>
				</div>
				</div>
				</div>				
	<!--登陆模态框结束  -->	
</div><!--container容器结束-->
</body>
</html>
