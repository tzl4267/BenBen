<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<script type="text/javascript">

$(function(){			
		$("span:contains('亮点配置')").mouseover(function(e){
			$("#outs").css("display","block");
			$("#czw").css("display","block");
		});
		$("#czw").mouseover(function(e){
			$("#outs").css("display","none");
			$("#czw").css("display","none");
		})
			$("#outs").mouseout(function(e){
				$("#outs").css("display","none");
				$("#czw").css("display","none");
			})
			
			$(":checkbox").click(function(){
				
				$("#outs").css("display","none");
				$("#syform").submit();
			});
		
			$("select").change(function(){
				$("#syform").submit();
			});
			$(".jg").click(function(){
				var jg=$(this).next().text();
			$("#jg").val(jg);
				$("#syform").submit();
			});
			$(".csid").click(function(){
				var csid=$(this).next().text();
			$("#csid").val(csid);
				$("#syform").submit();
			});
			$(".cbid").click(function(){
				var cbid=$(this).next().text();
			$("#cbid").val(cbid);
				$("#syform").submit();
			});				
});
</script>
</head>
<body style="position:relative;">

<jsp:include page="daohang.jsp"></jsp:include>
      <div style="width: 1200px;margin: 0px auto;">
      <form action="${pageContext.request.contextPath}/home/list7" method="post" id="syform">
		<div style="width: 1200px;height: 165px;background-color: #F8F8F8;margin:0px auto" >
		<table >
			<tr>
				<td >品&nbsp;牌:<input type="hidden" id="cbid" name="cbid" value="${sy.cbid}"></td>
				<td><a class="cbid" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a><span class="hide"></span></td>
				<f:forEach items="${cb}" var="carbrand">
				<td><a class="cbid" style="text-decoration: none;color: black">&nbsp;<font color="${carbrand.cbid==sy.cbid?'red':''}">${carbrand.cbname}</font>&nbsp;</a><span class="hide">${carbrand.cbid}</span></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>
		<table >
			<tr>
				<td>车&nbsp;系:<input type="hidden" id="csid" name="csid" value="${sy.csid}"/></td>
				<td><a class="csid" style="text-decoration: none;color: black">&nbsp;不限&nbsp;</a><span class="hide"></span></td>
				<f:forEach items="${cs}" var="carseries">
				<td><a class="csid" style="text-decoration: none;color: black" >&nbsp;<font color="${carseries.csid==sy.csid?'red':''}">${carseries.csname}</font>&nbsp;</a><span class="hide">${carseries.csid}</span></td>
				</f:forEach>
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>

		<table  >
			<tr>
				<td>价&nbsp;格:<input type="hidden" id="jg" name="jg" value="${sy.jg}"/></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${0==sy.jg?'red':''}">不限</font>&nbsp;</a><span class="hide">0</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${1==sy.jg?'red':''}">三万以下</font>&nbsp;</a><span class="hide">1</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${2==sy.jg?'red':''}">3-5万</font>&nbsp;</a><span class="hide">2</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${3==sy.jg?'red':''}">5-10万</font>&nbsp;</a><span class="hide">3</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${4==sy.jg?'red':''}">10-15万</font>&nbsp;</a><span class="hide">4</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${5==sy.jg?'red':''}">15-20万</font>&nbsp;</a><span class="hide">5</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${6==sy.jg?'red':''}">20-30万</font>&nbsp;</a><span class="hide">6</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${7==sy.jg?'red':''}">30-60万</font>&nbsp;</a><span class="hide">7</span></td>
				<td><a class="jg" style="text-decoration: none;color: black">&nbsp;<font color="${8==sy.jg?'red':''}">60万以上</font>&nbsp;</a><span class="hide">8</span></td>
				
			</tr>
		</table>
		<div style="position: relative ;top:-8px;width: 1200px;height: 3px;">
		
			<hr style="height:1px;border:none;border-top:1.5px solid #E5E5E5;" />
		</div>

		<table >
			<tr>
				<td>更&nbsp;多:</td>
				<td>
				<select style="width:85px;height:27px" name="ctid">
						<option value="" selected="selected">&nbsp;车型&nbsp;&nbsp;&nbsp;</option>
						<option value="1" ${sy.ctid==1?"selected":""}>&nbsp;SUV&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.ctid==2?"selected":""}>&nbsp;MPV&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${sy.ctid==3?"selected":""}>&nbsp;跑车&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.ctid==4?"selected":""}>&nbsp;皮卡&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.ctid==5?"selected":""}>&nbsp;面包&nbsp;&nbsp;&nbsp;</option>	
						<option value="6" ${sy.ctid==6?"selected":""}>&nbsp;两厢轿车&nbsp;&nbsp;&nbsp;</option>	
						<option value="7" ${sy.ctid==7?"selected":""}>&nbsp;三厢轿车&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px" name="cl">
					<option value="0" selected="selected">&nbsp;车龄&nbsp;&nbsp;&nbsp;</option>
						<option value="1" ${sy.cl==1?"selected":""}>&nbsp;1年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.cl==2?"selected":""}>&nbsp;3年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${sy.cl==3?"selected":""}>&nbsp;5年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.cl==4?"selected":""}">&nbsp;8年以内&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.cl==5?"selected":""}>&nbsp;8年以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
			
				<td>
				<select style="width:85px;height:27px" name="bs">
					<option value="">&nbsp;变速箱&nbsp;&nbsp;&nbsp;</option>
						<option value="1" ${cd.bs==49?"selected":""}>&nbsp;自动&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${cd.bs==50?"selected":""}>&nbsp;手动&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				
				<td>
				<select style="width:85px;height:27px" name="lc">
					<option value="0">&nbsp;里程&nbsp;&nbsp;&nbsp;</option>
						<option value="1" ${sy.lc==1?"selected":""}>&nbsp;1万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.lc==2?"selected":""}>&nbsp;3万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${sy.lc==3?"selected":""}>&nbsp;5万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.lc==4?"selected":""}>&nbsp;8万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.lc==5?"selected":""}>&nbsp;10万公里内&nbsp;&nbsp;&nbsp;</option>	
						<option value="6" ${sy.lc==6?"selected":""}>&nbsp;10万公里以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="pl">
					<option value="0">&nbsp;排量&nbsp;&nbsp;&nbsp;</option>
						<option value="1" ${sy.pl==1?"selected":""}>&nbsp;1.0以下&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.pl==1?"selected":""}>&nbsp;1.0-1.6&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${sy.pl==1?"selected":""}>&nbsp;1.6-2.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.pl==1?"selected":""}>&nbsp;2.0-3.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.pl==1?"selected":""}>&nbsp;3.0-4.0&nbsp;&nbsp;&nbsp;</option>	
						<option value="6" ${sy.pl==1?"selected":""}>&nbsp;4.0以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="pf">
					<option value="">&nbsp;排放标准&nbsp;&nbsp;&nbsp;</option>
					<option value="1" ${cd.pf==49?"selected":""}>&nbsp;国二及以上&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${cd.pf==50?"selected":""}>&nbsp;国三及以上&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${cd.pf==51?"selected":""}>&nbsp;国四及以上&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${cd.pf==52?"selected":""}>&nbsp;国五及以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="cbgb">
					<option value="">&nbsp;国别&nbsp;&nbsp;&nbsp;</option>
				<option value="1" ${sy.cbgb==1?"selected":""}>&nbsp;国产&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.cbgb==2?"selected":""}>&nbsp;德系&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${sy.cbgb==3?"selected":""}>&nbsp;美系&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.cbgb==4?"selected":""}>&nbsp;日系&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.cbgb==5?"selected":""}>&nbsp;韩系&nbsp;&nbsp;&nbsp;</option>	
						<option value="6" ${sy.cbgb==6?"selected":""}>&nbsp;法系&nbsp;&nbsp;&nbsp;</option>	
						<option value="7" ${sy.cbgb==7?"selected":""}>&nbsp;其他&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="dr">
					<option value="">&nbsp;驱动&nbsp;&nbsp;&nbsp;</option>
					<option value="1" ${cd.dr=='49'?"selected":""}>&nbsp;两驱&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${cd.dr=='50'?"selected":""}>&nbsp;四驱&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="ft">
					<option value="">&nbsp;燃烧类型&nbsp;&nbsp;&nbsp;</option>
					<option value="1" ${cd.ft=='49'?"selected":""}>&nbsp;汽油&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${cd.ft=='50'?"selected":""}>&nbsp;柴油&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${cd.ft=='51'?"selected":""}>&nbsp;电动&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${cd.ft=='52'?"selected":""}>&nbsp;油电混合&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
				<select style="width:85px;height:27px" name="ys">
					<option value="">&nbsp;颜色&nbsp;&nbsp;&nbsp;</option>
					<option value="1" ${sy.ys=='1'?"selected":""}>&nbsp;白色&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${sy.ys=='2'?"selected":""}>&nbsp;红色</option>	
						<option value="3" ${sy.ys=='3'?"selected":""}>&nbsp;黄色&nbsp;&nbsp;&nbsp;</option>	
						<option value="4" ${sy.ys=='4'?"selected":""}>&nbsp;黑色&nbsp;&nbsp;&nbsp;</option>	
						<option value="5" ${sy.ys=='5'?"selected":""}>&nbsp;银灰色&nbsp;&nbsp;&nbsp;</option>	
						<option value="6" ${sy.ys=='6'?"selected":""}>&nbsp;蓝色&nbsp;&nbsp;&nbsp;</option>	
						<option value="7" ${sy.ys=='7'?"selected":""}>&nbsp;橙色&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
				<td>
					<span style="border:1px;">亮点配置&nbsp;
					</span>
					<span style="position:absolute;width:60px;background-color:#F8F8F8;top:201px;left:1366px;z-index:1000;" id="czw"><select style="width:85px;height:27px"><option>&nbsp;座位&nbsp;&nbsp;&nbsp;</option></select></span>
	<span style="position:absolute;width:150px;height:150px;display:none; z-index:99; top:201px;left:1300px;" id="outs" >
	<span style="position:absolute;width:60px;background-color:#F8F8F8;top:2px;left:5px;">亮点配置</span>
	<span style="position:absolute;border:black 1px solid;width:220px;height:130px;background-color:white;top:30px;left:-30px;">
	
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 10px; top:10px;" value="1" name="yx" ${ot.yx==49?'checked':''}> <span style="position: relative;left:12px;top:7px;"><font size="3px;">倒车影像</font></span>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 20px; top:10px;" value="1" name="qd" ${ot.qd==49?'checked':''}> <span style="position: relative;left:22px;top:7px;"><font size="3px;">无钥匙启动</font></span>
	<br/>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 10px; top:13px;" value="1" name="ty" ${ot.ty==49?'checked':''}> <span style="position: relative;left:12px;top:10px;"><font size="3px;">胎压检测</font></span>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 20px; top:13px;" value="1" name="xh" ${ot.xh==49?'checked':''}> <span style="position: relative;left:22px;top:10px;"><font size="3px;">定速巡航</font></span>
	<br/>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 10px; top:16px;" value="1" name="wd" ${ot.wd==49?'checked':''}> <span style="position: relative;left:12px;top:13px;"><font size="3px;">车身稳定</font></span>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 20px; top:16px;" value="1" name="jr" ${ot.jr==49?'checked':''}> <span style="position: relative;left:22px;top:13px;"><font size="3px;">无钥匙进入</font></span>
	<br/>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 10px; top:19px;" value="1" name="gps" ${ot.gps==49?'checked':''}> <span style="position: relative;left:12px;top:16px;"><font size="3px;">GPS导航</font></span>
	<input type="checkbox" style="width:16px;height:16px;position:relative;left: 20px; top:19px;" value="1" name="ld" ${ot.ld==49?'checked':''}> <span style="position: relative;left:22px;top:16px;"><font size="3px;">倒车雷达</font></span>
	<br/>
	</span>
	</span>
				</td>
				<td>
				<select style="width:85px;height:27px" name="zw">
					<option value="">&nbsp;座位&nbsp;&nbsp;&nbsp;</option>
					<option value="1" ${cd.zw=='49'?"selected":""}>&nbsp;2座&nbsp;&nbsp;&nbsp;</option>	
						<option value="2" ${cd.zw=='50'?"selected":""}>&nbsp;4-5座&nbsp;&nbsp;&nbsp;</option>	
						<option value="3" ${cd.zw=='51'?"selected":""}>&nbsp;5座以上&nbsp;&nbsp;&nbsp;</option>	
				</select>&nbsp;&nbsp;
				</td>
			</tr>
		</table> 
	</div>
	
		<div>
		<table border="1" width="300" height="30">
			<tr align="center">
				<td><a href="" style="text-decoration: none;color: black">价格最高</a></td>
				<td><a href="" style="text-decoration: none;color: black">价格最低</a></td>
				<td><a href="" style="text-decoration: none;color: black">最新发布</a></td>
				<td><a href="" style="text-decoration: none;color: black">里程最短</a></td>
			</tr>
			
		</table>
	
		</div>
						
		</form>
			
		<br>
	
		<div class="row">
		<f:forEach items="${sc}" var="secondcar">
			<div class="col-lg-3 col-sm-3">
			<span></span>
			<a href="${pageContext.request.contextPath}/carDetail/querySecondCar?uid=${secondcar.user.uid}&cid=${secondcar.cid} " style="text-decoration: none;color: black"><div style="float: left; ">
			<div style="color: red;position: relative;top:22px;left:93%;" id="sb"></div>
			<script type="text/javascript">
					var d = "${secondcar.sjsj}";
					var de = new Date(d);
					var datecheck="${datecheck}";
					var g = de.getTime()-datecheck;
					if(g>0){
						$("#sb").text("新");
					}															
					</script>
					<div ><img  src="${pageContext.request.contextPath}/${secondcar.purl}" width="288px" height="192px"></div>
					<div><h5>${secondcar.cd.cdname}</h5></div>
					<div><span style="color:darkgray;font-size: 13px">
						<fmt:formatDate value="${secondcar.spsj}" pattern="yyyy-MM-dd"/>
						<em>/</em>
						${secondcar.lc}万公里
					</span>
					<span  style="color:#fff;background-color:#ff7815;border-color:#ff7815;width: 50px;height: 19px;">${secondcar.bq eq '48' ? "急售":""}</span>
					<span  style="color:#fff;background-color:#00A0E9;border-color:#00A0E9;width: 50px;height: 19px;">${secondcar.pi.gh eq '48' ? "0过户":""}</span>
					</div>
					
					<div><div style="font-size:25px;color: red;float: right;">
						
						${secondcar.jg}<span style="font-size:15px;color: red;">万</span>
					</div></div>
			</div></a></div>
		</f:forEach></div>
		</div>
		
</body>
</html>