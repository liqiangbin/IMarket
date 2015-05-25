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
						
						<% 			
						
            Object uname=session.getAttribute("uname");
            if(uname==null) {
                out.print("<script language='javascript'>alert('请先登录！');window.location.href='login.jsp';</script> ");
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