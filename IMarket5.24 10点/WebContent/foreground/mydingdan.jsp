<%@ page language="java" import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="lujin">
					<ol class="breadcrumb">
						<li><a href="main.jsp">IMarket</a>
						</li>
						<li>我的订单</li>

					</ol>
					<h3><strong >我的订单</strong></h3>
				</div>
			</div>
			<div class="panel-body">
			
			
<div class="panel-group" id="accordion">
<% Order order=new Order();
OrderDao orderdao=new OrderDao();
  ArrayList<Order> orderlist=new ArrayList<Order>();
  request.setCharacterEncoding("GBK")  ;
  String uname=(String)session.getAttribute("uname");
  orderlist=orderdao.showAllOrderByuname(uname);
  for(int i=0;i<orderlist.size();i++){
	  if(orderlist.get(i).getStatus()==0){%> 
	<div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapse<%=i%>">
          
          <table class="table table-striped">
   <thead>
   <caption>点击可查看订单详情</caption>
      <tr>
         <th>订单编号</th>
         <th>下单日期</th>
         <th>收货人姓名</th>
         <th>电话</th>
         <th width=40%>地址 </th>
          <th>总金额</th>
          <th>状态</th>
      </tr>   
   </thead>
   <tbody>
      <tr>
         <td><%=orderlist.get(i).getId() %></td>
         <td><%=orderlist.get(i).getTime() %></td>
         <td><%=orderlist.get(i).getReceivename() %></td>
         <td><%=orderlist.get(i).getPhone() %></td>
          <td><%=orderlist.get(i).getAddress() %></td>
           <td><%=orderlist.get(i).getSubprice() %></td>
           <td><%=orderlist.get(i).getStatus() %></td>
      </tr>
   </tbody>
</table>
          
        </a>
      </h4>
    </div>
    <div id="collapse<%=i%>" class="panel-collapse collapse">
      <div class="panel-body">
      <%
      ArrayList<Orderitem> orderitemlist=new ArrayList<Orderitem>();
      Orderitem orderitem=new Orderitem();
      OrderitemDao orderitemdao=new OrderitemDao();
      orderitemlist=orderitemdao.showOrderitemByOrderId(orderlist.get(i).getId());%>
      <table class="table">
      <caption>订单详情</caption>
   <tbody>
   <tr align="center"><td lign="center">商品图片</td><td lign="center">商品名称</td><td lign="center">单价</td><td lign="center">商品数目</td><td lign="center">合计</td></tr>
   <% String s=orderitemlist.get(0).getOrderid(); 
   for(int j=0;j<orderitemlist.size();j++){%>
      <tr align="center">
         <td align="center"><img src="<%=request.getContextPath()%>/<%=orderitemlist.get(j).getImg()%>" class="img-rounded"  width="60px" height="40px"></td>
         <td align="center"><%=orderitemlist.get(j).getPname()%></td>
          
         <td align="center"><%=orderitemlist.get(j).getPrice()%>元</td>
          <td align="center" ><%=orderitemlist.get(j).getNum()%>--件</td>
          <td align="center" ><%=orderitemlist.get(j).getTotalmoney()%>--元</td>
      </tr>
     <%  
      }
      %>
      <tr >
      <td colspan="3" align="right"> <button type="button" class="btn btn-warning"><a href="pay.jsp">&nbsp;&nbsp;立即付款&nbsp;&nbsp;</a></button></td>
      <td align="center"><button type="button" class="btn btn-info"><a href="<%=request.getContextPath()%>/FillDindan?type=<%="del" %>&id=<%=s%>">删除此订单</a></button></td>
      </tr>
          </tbody>
</table>
      </div>
    </div>
  </div>
	
	<%}else{%>
	  
	<div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapse<%=i%>">
          
          <table class="table table-striped">
   <thead>
   <caption>点击可查看订单详情</caption>
      <tr>
         <th>订单编号</th>
         <th>收货人姓名</th>
         <th>电话</th>
         <th width=40%>地址 </th>
          <th>总金额</th>
          <th>状态</th>
          
          
      </tr>   
   </thead>
   <tbody>
      <tr>
         <td><%=orderlist.get(i).getId() %></td>
         <td><%=orderlist.get(i).getReceivename() %></td>
         <td><%=orderlist.get(i).getPhone() %></td>
          <td><%=orderlist.get(i).getAddress() %></td>
           <td><%=orderlist.get(i).getSubprice() %></td>
           <td>已付款</td>
      </tr>
     
   </tbody>
</table>
        </a>
      </h4>
    </div>
    <div id="collapse<%=i%>" class="panel-collapse collapse">
      <div class="panel-body">
      <%
      ArrayList<Orderitem> orderitemlist=new ArrayList<Orderitem>();
      Orderitem orderitem=new Orderitem();
      OrderitemDao orderitemdao=new OrderitemDao();
      orderitemlist=orderitemdao.showOrderitemByOrderId(orderlist.get(i).getId());%>
      
      <table class="table">
      <caption>订单详情</caption>
   <tbody>
   <% for(int j=0;j<orderitemlist.size();j++){%>
      <tr align="center">
         <td align="right"><img src="<%=request.getContextPath()%>/<%=orderitemlist.get(j).getImg()%>" class="img-rounded"  width="60px" height="40px"></td>
         <td align="center" width="40%"><%=orderitemlist.get(j).getPname()%></td>
         <td align="left"><%=orderitemlist.get(j).getPrice()%>元</td>
      </tr>
     <%  
      }
      %>
          </tbody>
</table>
      </div>
    </div>
  </div>
</div>
	  
		  
		  
		
	
 <% }
  }
%>
 
  
  
			
			
			</div>
		</div>
		<div class="text-primary-footer">
			<p>软件工程 &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; 软件实训课程设计 </p>
			<p>首页 &nbsp;&nbsp;| &nbsp;&nbsp;关于我们&nbsp;&nbsp; |&nbsp;&nbsp; 版权所有 &nbsp;&nbsp;翻版必究 </p>
		</div>
	</body>
</html>