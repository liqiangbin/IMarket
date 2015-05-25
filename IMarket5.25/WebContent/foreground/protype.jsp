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
						
						<% 			
						
            Object uname=session.getAttribute("uname");
            if(uname==null) {
                out.print("欢迎来到<b>IMarket</b> &nbsp;&nbsp;  ");
            %> <a href="login.jsp">登陆</a>|<%    
            }
            
 
            else{
            	
        	out.print("欢迎您"+uname+"登陆到<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="reg.jsp">注册</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="shopcar.jsp">购物车</a>|<a href="mydingdan.jsp?uname=<%=uname%>">我的订单</a>|<a href="myself.jsp">个人信息</a>|<a href="<%=request.getContextPath() %>/CustomerServlet?message=<%="exit"%>">退出</a>
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-md-2 col-md-offset-2">
							<a href="main.jsp">
								<img src="<%=request.getContextPath() %>/images/logo.jpg" class="img-rounded" weight="50px" width="100px">
							</a>
						</div>
						<div class="col-md-4 ">
						<form action="<%=request.getContextPath()%>/Search">
							<input type="text" class="form-control" name="search" id="search" placeholder="请输入查询内容">
						</div>

						<div class="col-md-2 ">
						
							<button type="submit" class="btn btn-default">搜   索
							</button>
							</form>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="all"%>">所有图书</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="hot"%>">热卖图书</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="new"%>">最新图书</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="type"%>&type1=<%="1"%>">java</a>
							</li>
							<li role="presentation"><a href="#">javaweb</a>
							</li>
							<li role="presentation"><a href="#">HTML</a>
							</li>
							<li role="presentation"><a href="#">文学</a>
							</li>

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              其他图书分类 
               <b class="caret"></b>
            </a>
								<ul class="dropdown-menu">
									<li><a href="#">哲学类  </a>
									</li>
									<li><a href="#">政治法律</a>
									</li>
									<li><a href="#">财经管理</a>
									</li>
									<li><a href="#">语言文字</a>
									</li>
									<li><a href="#"> 自然科学 </a>
									</li>
									<li><a href="#">少儿读物 </a>
									</li>
									<li><a href="#"> 计算机技术 </a>
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
									作者：<%=list.get(0).getAuthor() %><br>
									<%=list.get(i*5+j).getPrice() %>元---已销售<%=list.get(i*5+j).getSeald() %>件
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
			<p>软件工程 &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; 软件实训课程设计 </p>
			<p>首页 &nbsp;&nbsp;| &nbsp;&nbsp;关于我们&nbsp;&nbsp; |&nbsp;&nbsp; 版权所有 &nbsp;&nbsp;翻版必究 </p>
		</div>
	
	</body>
</html>