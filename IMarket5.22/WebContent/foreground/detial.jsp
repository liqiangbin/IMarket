<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@ page language="java" import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script src="<%=request.getContextPath() %>/js/angular.min.js"></script>
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
							欢迎来到<b>IMarket</b> &nbsp;&nbsp;
							<a href="login.html">登陆</a>|<a href="reg.html">注册</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="#">购物车</a>|<a href="#">我的订单</a>|<a href="#">个人信息</a>|<a href="#">退出</a>
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-md-2 col-md-offset-2">
							<a href="main.html">
								<img src="images/logo.jpg" class="img-rounded" weight="50px" width="100px">
							</a>
						</div>
						<div class="col-md-4 ">
							<input type="text" class="form-control" id="search" placeholder="Jane Doe">
						</div>

						<div class="col-md-2 ">
							<button type="button" class="btn btn-default"><a href="video.html">搜   索</a>
							</button>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="#">所有商品</a>
							</li>
							<li role="presentation"><a href="#">热卖商品</a>
							</li>
							<li role="presentation"><a href="#">最新商品</a>
							</li>
							<li role="presentation"><a href="#">科幻图书</a>
							</li>
							<li role="presentation"><a href="#">人文地理</a>
							</li>
							<li role="presentation"><a href="#">学科教材</a>
							</li>
							<li role="presentation"><a href="#">原版书籍</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              所有商品分类 
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
									<li><a href="#">分离的链接</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">另一个分离的链接</a>
									</li>
								</ul>
							</li>
						</ul>

					</nav>

				</nav>
			</div>
		</div>
		<div class="lujin">
			<ol class="breadcrumb">
				<li><a href="#">Home</a>
				</li>
				<li><a href="#">Library</a>
				</li>
				<li class="active">Data</li>
			</ol>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="pleft">
						<center>
							<img src="images/20417467-1_b.jpg" weight="600px" width="300px" class="img-thumbnail">
							<br>
							<br>

							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">
							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">
							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">

					</div>
					</center>

					<div class="pright">
						<div class="clear">
							<div class="panel panel-default">
								<div class="panel-body">
<% Product pro=new Product();
ProductDao dao=new ProductDao();
Integer id;
id=Integer.parseInt(request.getParameter("id"));
			
				ArrayList<Product>list=new ArrayList<Product>();
				list=dao.showoneproduct(id);
				%>
									<table class="table">
										<tr align="center">
										<td colspan="2">
										<h3><%=list.get(0).getPname() %></h3>
										</td></tr>

										<tbody>
											<tr>
												<td align="right" width="20%">作者：</td>
												<td align="left"><%=list.get(0).getAuthor() %></td>
											</tr>
											<tr>
												<td align="right" width="20%">出版社：</td>
												<td align="left"><%=list.get(0).getPublish() %> </td>
											</tr>
											<tr>
												<td align="right" width="20%">图书简介：</td>
												<td align="left"><%=list.get(0).getPdesc()%> </td>
											</tr>
											<tr>
												<td align="right">价格：</td>
												<td align="left"><%=list.get(0).getPrice() %></td>
											</tr>
											<tr>
												<td align="right">折扣：</td>
												<td align="left"><%=list.get(0).getDiscount() %></td>
											</tr>
											<tr>
												<td align="right" width="20%">库存：</td>
												<td align="left"><%=list.get(0).getTotal() %>件 </td>
											</tr>
											<tr>
												<td align="right">累计评价：</td>
												<td align="left"><a href="#pj"><%=list.get(0).getPjnum()%></a>
												</td>
												
											</tr>
											<tr>
												<td align="right">月销量：</td>
												<td align="left"><%=list.get(0).getSeald() %>件 <a href="">与卖家沟通</a>
												</td>
											</tr>
											<tr>
												<td align="right">我要买：</td>
												<td align="left">
													<input type="number" ng-model="num1"  placeholder ="1" >
															件</td>
											</tr>

											<tr>
												<td align="right">
													<button type="button" class="btn btn-warning"><strong>加入购物车</strong>
													</button>
												</td>
												<td align="center">
													<button type="button" class="btn btn-warning"><strong>直接购买</strong>
													</button>
												</td>
											</tr>
										</tbody>
									</table>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<p id="pj">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">商品评价</h3>
				</div>
				<div class="panel-body">
				<%pj pj=new pj();
				 PjDao dao1=new  PjDao();
								ArrayList<pj> listpj=new ArrayList<pj>();
								listpj=dao1.showpjByproduct(id); %>
			<table class="table table-hover" width=80%>
   
   <thead>
      <tr>
         <th width="25%">评价者</th>
         <th width="50%" align="center">评价内容</th>
         <th width="25%">评价时间</th>
      </tr>
   </thead>
   <tbody>
   <% for(int i=0;i<listpj.size();i++){%>
	    <tr>
         <td><%=listpj.get(i).getUname() %></td>
         <td ><%=listpj.get(i).getPjcontent() %></td>
         <td><%=listpj.get(i).getPjtime() %></td>
      </tr>
	  <% 
   }
	   %>
   </tbody>
</table>
					<br>
				</div>
			</div>
			</p>
		</div>

		<!--
        	下面是页脚
        -->
		<div class="text-primary-footer">
			<p>软件工程 &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; 软件实训课程设计 </p>
			<p>首页 &nbsp;&nbsp;| &nbsp;&nbsp;关于我们&nbsp;&nbsp; |&nbsp;&nbsp; 版权所有 &nbsp;&nbsp;翻版必究 </p>
		</div>

		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>

</html>