<%@page import="java.util.ArrayList"%>
<%@ page language="java" import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen" type="text/css">
		 <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
   <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	</head>
	<body>
		
		<div class="container">
			<div>
				<nav class="navbar navbar-default navbar-fixed-top">
					<div class="rowtop">
						<div class="col-md-1">&nbsp;</div>
						<div class="col-md-5">
							��ӭ����<b>IMarket</b> &nbsp;&nbsp;
							<a href="login.html">��½</a>|<a href="reg.html">ע��</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="#">���ﳵ</a>|<a href="#">�ҵĶ���</a>|<a href="#">������Ϣ</a>|<a href="#">�˳�</a>
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-md-2 col-md-offset-2">
							<a href="main.html">
								<img src="<%=request.getContextPath() %>/" class="img-rounded" weight="50px" width="100px">
							</a>
						</div>
						<div class="col-md-4 ">
							<input type="text" class="form-control" id="search" placeholder="Jane Doe">
						</div>

						<div class="col-md-2 ">
							<button type="button" class="btn btn-default"><a href="video.html">��   ��</a>
							</button>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">�ƻ�ͼ��</a>
							</li>
							<li role="presentation"><a href="#">���ĵ���</a>
							</li>
							<li role="presentation"><a href="#">ѧ�ƽ̲�</a>
							</li>
							<li role="presentation"><a href="#">ԭ���鼮</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              ������Ʒ���� 
               <b class="caret"></b>
            </a>
								<ul class="dropdown-menu">
									<li><a href="#">jmeter</a>
									</li>
									<li><a href="#">EJB</a>
									</li>
									<li><a href="#">Jasper Report</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">���������</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">��һ�����������</a>
									</li>
								</ul>
							</li>
						</ul>

					</nav>

				</nav>
			</div>
		</div>
	
		
		<div class="panel panel-danger">
				<div class="panel-heading">
					<div class="lujin">
						
			<ol class="breadcrumb">
				<li><a href="#">Home</a>
				</li>
				<li><a href="#">Library</a>
				</li>
				<li class="active">Data</li>
			</ol>
		</div>
				</div>
				<div class="panel-body">
					<table class="table table-bordered">
					<%  ArrayList<Product>  list=(ArrayList<Product>)session.getAttribute("list");
				for(int i=0;i<list.size()/5+1;i++){%>
				<tr align="center">
				<%
					for(int j=0;j<5;j++){
					if(i*5+j<list.size()){%>
					
					<td align="center">
								<a href="detial.jsp?id=<%=list.get(i*5+j).getId()%>">
									<img class="img-rounded" src="<%=request.getContextPath() %>/<%=list.get(i*5+j).getImg() %>" weight="300px" width="150px" />
									<br>
									<br> <%=list.get(i*5+j).getPname() %><br>
									���ߣ�<%=list.get(0).getAuthor() %><br>
									<%=list.get(i*5+j).getPrice() %>Ԫ---������<%=list.get(i*5+j).getSeald() %>��
								</a>
							</td>
					<% }
					else	break;
					}
					
					%>
					</tr>
					<%}%>
					</table>
					<center>
					<ul class="pagination pagination-lg" >
  <li><a href="#">&laquo;</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">&raquo;</a></li>
</ul></center>
				</div>
			</div>
		<div class="text-primary-footer">
			<p>������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ���ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>
	
	</body>
</html>