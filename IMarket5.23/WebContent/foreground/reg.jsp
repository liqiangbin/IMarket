<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link type="text/css"href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen"/>
		<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
	</head>

	<body background="<%=request.getContextPath() %>/images/templatemo-bg-1.jpg">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
				<a href="main.html"  >
					<img src="<%=request.getContextPath() %>/images/logo.jpg" alt="IMarket" class="img-circle" width="160px" height="60px">
		</div>
		
				</a><div class="col-md-3">
		<h2 class="nameh2">网上商城</h2></div>
				</div>
			<form class="form-horizontalreg" name="form1" method="post" onsubmit="return checkform();" action="<%=request.getContextPath() %>/CustomerServlet?message=<%="reg"%>">
				<div class="form-group">
					<h2 class=reg align="center">请填写您的个人信息</h2>
					<label for="exampleInputName2">用户名</label>
					<input type="text" class="form-control" name="username" placeholder="请输入您的用户名">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">密码</label>
					<input type="password" class="form-control" name="password" placeholder="请输入密码">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword2">确认密码</label>
					<input type="password" class="form-control" id="repassword" placeholder="请再次输入密码">
				</div>
				<div class="form-group">
					<label for="phone">电话/手机</label>
					<input type="text" class="form-control" name="phone" placeholder="请输入您的电话号码">
				</div>
				<div class="radio ">
					<label for="sex">性别:</label>
					<label>
						<input type="radio" name="sex" id="man" value="男" checked> 男
					</label>
					<label>
						<input type="radio" name="sex" id="woman" value="女"> 女
					</label>
				</div>
				<div class="form-group">
					<label for="email">邮箱</label>
					<input type="email" class="form-control" name="email" placeholder="请输入您的邮箱">
				</div>
				<div>
				<table width="100%">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td align="left">
					<button   type="reset" class="btn btn-warning btn-lg">重   新  填  写</button>&nbsp;&nbsp;
				</td><td align="right">
					<button type="submit" class="btn btn-warning btn-lg">确  认  注  册</button>
				</td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table></div>
				
		</div>
		
		<div class="text-primary-footer">
		<p >软件工程 &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; 软件实训课程设计 </p>
		<p >首页 &nbsp;&nbsp;|  &nbsp;&nbsp;关于我们&nbsp;&nbsp;  |&nbsp;&nbsp; 版权所有 &nbsp;&nbsp;翻版必究 </p>
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
	if(document.form1.repassword.value==""){
		alert("请输入确认密码");
	return false;
	}
	if(document.form1.repassword.value!=document.form1.password.value){
		alert("两次密码输入不一致");
		return false;	
	}
	return ture;
	}

</script>
	</body>

</html>