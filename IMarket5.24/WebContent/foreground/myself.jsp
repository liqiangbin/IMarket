<%@ page language="java" import="pojo.Customer,Dao.CustomerDao,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
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
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="lujin">
					<ol class="breadcrumb">
						<li><a href="#">IMarket</a>
						</li>
						<li>个人信息</li>

					</ol>
					<h3><strong >个人信息</strong></h3>
				</div>
			</div>
			<div class="panel-body">
			
				<table class="table table-hover">
				<% Customer cus=new Customer();
				CustomerDao dao=new CustomerDao();
				String username=(String)session.getAttribute("uname");
				dao.showoneselfMessage(username);
				ArrayList<Customer>list=new ArrayList<Customer>();
				list=dao.showAllCustomer();
				%>
					<tr>
						<td align="right">用户名：</td>
						<td align="left"><%=list.get(0).getUname() %></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td align="left"><%=list.get(0).getPassword() %></td>
					</tr>
					<tr>
						<td align="right">电话：</td>
						<td align="left"><%=list.get(0).getPhone() %></td>
					</tr>
					<tr>
						<td align="right">邮箱：</td>
						<td align="left"><%=list.get(0).getEmail() %></td>
					</tr>
					<tr>
						<td align="right">&nbsp;</td>
						<td align="left">
							
				<button class="btn btn-primary btn-lg" data-toggle="modal" 
   data-target="#myModal">
   修改个人信息
</button>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
               修改个人信息
            </h4>
         </div>
         <div class="modal-body">
            <form action=<%=request.getContextPath() %>/CustomerServlet?message=<%="updatemyself"%>&username=<%=list.get(0).getUname() %> method="post" >
            	
<table class="table table-hover">

					<tr>
						<td align="right">用户名：</td>
						<td align="left"><%=list.get(0).getUname() %></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td align="left"><input type="password" name="password" class="form-control"  value="<%=list.get(0).getPassword() %>"></td>
					</tr>
					<tr>
						<td align="right">电话：</td>
						<td align="left"><input type="text" name="phone" class="form-control"  value="<%=list.get(0).getPhone() %>"></td>
					</tr>
					<tr>
						<td align="right">邮箱：</td>
						<td align="left"><input type="text"  name="email" class="form-control"  value="<%=list.get(0).getEmail() %>"></td>
					</tr>
            </form>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" 
               data-dismiss="modal">关闭
            </button>
            <button type="submit" class="btn btn-primary">
               保存修改
            </button>
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
							
						</td>
					</tr>
					</table>
				</div>
		</body>
</html>		