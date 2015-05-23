<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<<html>
<head>
	<title>Login Two</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	

	<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen" type="text/css">	
</head>
<body class="templatemo-bg-image-1">
<h2 align="center">
  <%
		String info=(String)request.getAttribute("info");
		if(info!=null)
			out.println(info); 
	%>
	</h2>
	
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-login-form-2" name="form1" role="form" onsubmit="return checkform();"action="<%=request.getContextPath() %>/CustomerServlet?message=<%="login"%>" method="post">
				<div class="row">
					<div class="col-md-12">
						<h1 class="loginh1">网上商城登录</h1>
					</div>
				</div>
				<div class="row">
					<div class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">用户名</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" name="username" placeholder="">
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" name="password" placeholder="">
				            </div>
				          </div>
				        </div>
				        
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="checkcode" class="control-label">验证码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<div class="row">
				            	<div class="col-md-8">
				            	<input type="text" class="form-control" name="checkcode" placeholder="">
				            	</div>
				            	<div class="col-md-4">
				            <img src="checkcode" alt="验证码"   height="40" width="60" align="bottom" style="cursor:pointer;" title="看不清可单击图片刷新" onclick="this.src='<%=request.getContextPath() %>/checkcode?d='+Math.random();" />
                           </div> 
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox"> 记住密码
				                </label>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="登录" class="btn btn-warning">
				          </div>
				        </div>
				        <div class="form-group">
				          	<div class="col-md-12">
				        		<a href="forgot-password.html" class="text-center">忘记密码</a>
				       	 	</div>
				    	</div>
					</div>
					<div class="templatemo-other-signin col-md-6">
						
					</div>   
				</div>				 	
		      </form>		      		      
		</div>
	</div>
	<script type="text/javascript">
function checkform(){
	
	if(document.form1.username.value==""){
		alert("请输入用户名");
		return false;
	}
	if(document.form1.password.value==""){
		alert("请输入密码");
		return false;
	}
	if(document.form1.checkcode.value==""){
		alert("请输入验证码");
		return false;
	}
	return ture;}

</script>
</body>
</html>