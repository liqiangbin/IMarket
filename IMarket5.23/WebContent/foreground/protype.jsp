<%@ page language="java" contentType="text/html; charset=gbk"
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
						<tr align="center">
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="300px" width="150px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="300px" width="150px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="300px" width="150px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="300px" width="150px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="300px" width="150px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
						</tr>
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