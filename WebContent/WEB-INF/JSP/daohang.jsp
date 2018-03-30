<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
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
        color:#288bc4;
        }
    a:hover
    {
       text-decoration:underline;
        }
	</style>
</head>
<body onload="createCode()">
<script type="text/javascript" language="javascript">
 		function denglubtn() {
		$("#denglu").modal("show");
		}
		function zhucebtn(){
		$("#zhuce").modal("show");
		}
		function aabtn(){
			$("#hh").modal("show");
		}
		function kkbtn(){
			$("#kk").modal("show");
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
            if (inputCode.length <= 0) 
            {
                alert("请输入验证码！");
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) 
            {
                alert("验证码输入有误！");
                createCode();
            }
            else 
            {
                alert("验证码正确！");
            }        
        }    
		</script>
		

 	<div class="navbar navbar-inverse">
           <ul class="nav navbar-nav">
			  <li><img src="img/daohang/1.jpg"></li>
			  <li><a href="#">地点</a></li> 
				<li><a href="#">卖车</a></li>
              <li><a href="#">买车</a></li>
    		  <li onclick="denglubtn();"><a href="#">登陆</a></li>
    		  <li onclick="zhucebtn();"><a href="#">注册</a></li>
    		  <li><font style="font-weight:bold;font-style:italic;" size="6" color="#46B8DA">热线电话：110</font></li>
           </ul>
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
					<form action="abc/login" class="form-horizontal"><ul>
			  <li><a href="${user.uid}">卖车</a></li>
              <li><a href="#">买车</a></li>
    		  <li onclick="denglubtn();"><a href="#">登陆</a></li>
    		  <li onclick="zhucebtn();"><a href="#">注册</a></li>
    		  <li><font style="font-weight:bold;font-style:italic;" size="6" color="#46B8DA">热线电话：110</font></li>
           </ul></form>
           </div></div></div></div>

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
					<form action="${pageContext.request.contextPath}/abc/login" class="form-horizontal">
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
							<div class="input-group">
								<input type="submit"
									class="form-control" value="登陆"/>
							</div>
						</div>
					</form>
				</div>




				<!--验证码-->
				<form id="form1" runat="server" onsubmit="validateCode()">
    			<div>
    				
    			<table border="0" cellspacing="5" cellpadding="5" height="60" align="center">
    				
       		  	
        		
        		<tr>
            	<td><input type="text" id="inputCode" class="input"  value="请输入验证码" onkeydown="if (event.keyCode==13) {}" onblur="if(this.value=='')value='请输入验证码';" onfocus="if(this.value=='请输入验证码')value='';" value="请输入验证码" />
        		<input id="Button1"  onclick="validateCode();" type="button" value="确定" /></td>
        		</tr>
        		
        		<tr>
            	<td>
            	<div class="code" id="checkCode"></div>
            	<a  href="#" onclick="createCode()" style="size: auto;">看不清换一张</a></td>
        		</tr>
        		
        		
    			</table>
    			
    			</div>
    			</form>
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