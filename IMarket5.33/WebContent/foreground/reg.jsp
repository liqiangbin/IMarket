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
		<h2 class="nameh2">�����̳�</h2></div>
				</div>
			<form class="form-horizontalreg" name="form1" method="post" onsubmit="return checkform();" action="<%=request.getContextPath() %>/CustomerServlet?message=<%="reg"%>">
				<div class="form-group">
					<h2 class=reg align="center">����д���ĸ�����Ϣ</h2>
					<label for="exampleInputName2">�û���</label>
					<input type="text" class="form-control" name="username" placeholder="�����������û���">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">����</label>
					<input type="password" class="form-control" name="password" placeholder="����������">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword2">ȷ������</label>
					<input type="password" class="form-control" id="repassword" placeholder="���ٴ���������">
				</div>
				<div class="form-group">
					<label for="phone">�绰/�ֻ�</label>
					<input type="text" class="form-control" name="phone" placeholder="���������ĵ绰����">
				</div>
				<div class="radio ">
					<label for="sex">�Ա�:</label>
					<label>
						<input type="radio" name="sex" id="man" value="��" checked> ��
					</label>
					<label>
						<input type="radio" name="sex" id="woman" value="Ů"> Ů
					</label>
				</div>
				<div class="form-group">
					<label for="email">����</label>
					<input type="email" class="form-control" name="email" placeholder="��������������">
				</div>
				<div>
				<table width="100%">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td align="left">
					<button   type="reset" class="btn btn-warning btn-lg">��   ��  ��  д</button>&nbsp;&nbsp;
				</td><td align="right">
					<button type="submit" class="btn btn-warning btn-lg">ȷ  ��  ע  ��</button>
				</td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table></div>
				
		</div>
		
		<div class="text-primary-footer">
		<p >������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ���ʵѵ�γ���� </p>
		<p >��ҳ &nbsp;&nbsp;|  &nbsp;&nbsp;��������&nbsp;&nbsp;  |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
	</div>
		
	<script type="text/javascript">
function checkform(){
	
	if(document.form1.username.value==""){
		alert("�������û���");
		return false;
	}
	if(document.form1.password.value==""){
		alert("����������");
		return false;
	}
	if(document.form1.repassword.value==""){
		alert("������ȷ������");
	return false;
	}
	if(document.form1.repassword.value!=document.form1.password.value){
		alert("�����������벻һ��");
		return false;	
	}
	return ture;
	}

</script>
	</body>

</html>