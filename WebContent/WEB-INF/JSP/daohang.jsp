<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
		.input {
		color: #cccccc;
	
  	}
	.code
    {
            background:url(code_bg.jpg);
            font-family:Arial;
            font-style:italic;
             color:blue;
             font-size:30px;
             border:0;
             padding:2px 3px;
             letter-spacing:3px;
             font-weight:bolder;             
             float:left;            
             cursor:pointer;
             width:150px;
             height:60px;
             line-height:60px;
             text-align:center;
             vertical-align:middle;

    }
    a
    {
        text-decoration:none;
        font-size:12px;
        }
    a:hover
    {
       text-decoration:underline;
        }
        .rela{
        position: relative;
        left:1200px;
        }
	</style>
	<script type="text/javascript">
	
	</script>
</head>

<body onload="createCode()">
<div class="container">
<div class="row">
<div class="col-lg-12 col-sm-12">

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<img src="${pageContext.request.contextPath}/img/daohang/1.jpg">
				</div>
				<!-- end of navbar-header -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li id="a1" style="position: relative;left:300px;top:4px;">
							<a href="#"><font size="5"  id="city"></font></a>
						</li>
						<li  id="a2"  >
							 <a  href="${pageContext.request.contextPath}/abc/SellIntentionadd" id="sell" style="font-size:24px;"><font  style="position: relative;left:480px;top:4px;" >卖车</font></a>
						</li>
						<li id="a3" >
							 <a href="${pageContext.request.contextPath}/home/list" ><font size="5" style="position: relative;left:550px;top:4px;">买车</font></a>
						</li>
						<c:if test="${user==null}">
						<li id="a4" class="rela">
						<a href="#" onclick="denglubtn();" ><font>登陆</font></a>
						</li>
						<li id="a5" class="rela">
						<a href="#" onclick="zhucebtn();" ><font>注册</font></a>
						</li></c:if>
						<c:if test="${user!=null}">
						<li id="a5" class="navbar-brand rela">
						<a href="${pageContext.request.contextPath}/abc/update_select" ><font>个人信息</font></a>
						</li>
						</c:if>
						<li class="rela">
						<font style="font-weight:bold;font-style:italic;" size="6" color="#46B8DA" >热线电话：110</font>
						</li>
					</ul>
					
				</div>
				<!-- end of navbar-collapse -->
			</div>
		</nav>
</div>
</div>
</div>

<script type="text/javascript" language="javascript">
$.getScript("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js",function(){
    //var province = remote_ip_info['province'];
    var city = remote_ip_info['city'];  
     $("#city").text(city);
}) ; 
 		function denglubtn() {
 			$("#denglu").modal("show");
 			$("#a2").removeClass("active");
 			$("#a3").removeClass("active");
 			$("#a1").removeClass("active");
 			$("#a5").removeClass("active");
 			$("#a4").addClass("active");
		}
		function zhucebtn(){
		$("#zhuce").modal("show");
		$("#a2").removeClass("active");
			$("#a3").removeClass("active");
			$("#a1").removeClass("active");
			$("#a4").removeClass("active");
			$("#a5").addClass("active");
		}
		function aabtn(){
			$("#hh").modal("show");
		}
		function kkbtn(){
			$("#kk").modal("show");
		}
		function MCbtn(){
			var user="${user}";
	    	if(user&&user!=""){
	    		location="${pageContext.request.contextPath}/abc/SellIntentionadd";
	    	}else{
	    		$("#loginModal").modal("show");
	    	}
		}
		
		var code;
        function createCode() {
            code = "";
            var codeLength = 6; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
        function validateCode() 
        {
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0||inputCode=="请输入验证码") 
            {
            	alert("请输入验证码！");
                return false;
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) 
            {
                alert("验证码输入有误！");
                createCode();
                return false;
            }
            else 
            {
            	return true;
                //alert("验证码正确！");
            }        
        	 event=event||window.event;
        		 var inputCode = document.getElementById("inputCode").value;
                 if (inputCode=='请输入验证码'||inputCode.length <= 0) 
                 {alert("请输入验证码！");
                     event.preventDefault();
                     
                 }else if (inputCode.toUpperCase() != code.toUpperCase()) 
                 {
                     alert("验证码输入有误！");
                     event.preventDefault();
                    
                 }else 
                 {
                 	return true;
                     //alert("验证码正确！");
                 }       
        	 
            
        }    
		</script>
		
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
					<form action="${pageContext.request.contextPath}/abc/login1" class="form-horizontal">
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
		

 	<div class="navbar navbar-inverse">
 	<div class="navbar-header">
  <img src="${pageContext.request.contextPath}/img/daohang/1.jpg" style="position: relative;left:-250px;">
  <a href="#" class="navbar-brand" style="position: relative;left:300px;top:8px;"><font size="5">地点</font></a>
  <a href="#" onclick="MCbtn();" class="navbar-brand middle" style="position: relative;left:480px;top:8px;"><font size="5">卖车</font></a>
  <a href="${pageContext.request.contextPath}/home/list" class="navbar-brand middle" style="position: relative;left:550px;top:8px;"><font size="5">买车</font></a>
  <a href="#" onclick="denglubtn();" class="navbar-brand rela"><font>登陆</font></a>
  <a href="#" onclick="zhucebtn();" class="navbar-brand rela"><font>注册</font></a>
  <font style="font-weight:bold;font-style:italic;" size="6" color="#46B8DA" class="rela">热线电话：110</font>
  </div>
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
					<form action="${pageContext.request.contextPath}/abc/login" class="form-horizontal" method="post" onsubmit="return validateCode();">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">用户名</span>
								<input type="text" class="form-control" name="uname"/>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密码</span> <input type="text"
									class="form-control" name="upass"/>
							</div>
						</div>
						<div class="form-group">
						<table border="0" cellspacing="5" cellpadding="5" height="60" align="center">
        		<tr>
            	<td>
            	<div class="code" id="checkCode" ></div>
<<<<<<< HEAD
            	<input type="text" id="inputCode" class="input"  onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入验证码';" onfocus="if(this.value=='请输入验证码')value='';" value="请输入验证码" style="color:green;font-size:18px;"/>
=======
            	<input type="text" id="inputCode" class="input"  onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入验证码';" onfocus="if(this.value=='请输入验证码')value='';" value="请输入验证码" />
>>>>>>> branch 'master' of https://github.com/tzl4267/BenBen.git
            	<a  href="#" onclick="createCode()" style="size: auto;position:relative; top:25px;">看不清换一张</a>
        		</td>
        		</tr>
        		<tr>
            	<td>
            	</td>
        		</tr>
    			</table></div>
						<div class="form-group btn">
							<div class="input-group">
								<input type="submit"
									class="form-control" value="登陆" onclick="validateCode();" />
							</div>
						</div>
					</form>
				</div>
   				 <!--验证码结束-->
			</div>
		</div>
		</div>
<!-- 注册modal -->
	<div class="modal fade" id="zhuce" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">注册</h4>
				</div>
				<div class="modal-body">
					<form action="" class="form-horizontal">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">用户名</span> <input type="text"
									class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密码</span> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密码确认</span> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">联系方式</span> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密保问题</span> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密保答案</span> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">职业</span> <input type="text"
									class="form-control"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">注册</button>
				</div>
			</div>
		</div>
		</div>
	<!-- 密保modal -->
		<div class="modal fade" id="hh" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">密保</h4>
				</div>
				<div class="modal-body">
					<form action="" class="form-horizontal">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">密保问题</span>
								<input type="text" class="form-control"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" onclick="kkbtn();">确认</button>
				</div>
			</div>
		</div>
		</div>
		<!-- 找回密码modal -->
		<div class="modal fade" id="kk" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">找回密码</h4>
				</div>
				<div class="modal-body">
					<form action="" class="form-horizontal">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">新密码</span>
								<input type="text" class="form-control"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
				</div>
			</div>
		</div>
		</div>
</body>
</html>