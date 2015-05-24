<%@ page language="java"  import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"  
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta charset="utf-8">
		<title></title>
		<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen" type="text/css">
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
		
		
		
		
		
		<div class="body1">
			

			
				
			<div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
      	<center>
         <img src="<%=request.getContextPath() %>/images/shuji.jpg"  width="380px" height="250px"  class="img-thumbnail" alt="First slide">
     <img src="<%=request.getContextPath() %>/images/tushu1.jpg"  width="380px" height="250px"  class="img-thumbnail" alt="First slide">
    
      	</center></div>
      <div class="item">
      	<center>
         <img src="<%=request.getContextPath() %>/images/tushu3.jpg"  width="380px" height="250px"  class="img-thumbnail" alt="First slide">
     <img src="<%=request.getContextPath() %>/images/tushu4.jpg"  width="380px" height="250px"  class="img-thumbnail" alt="First slide">
     </center></div>
      <div class="item">
      	<center>
         <img src="<%=request.getContextPath() %>/images/20417467-1_b.jpg"  width="400px" height="300px" alt="Third slide">
      </center>
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>

	</div>	
			
			
			
			<div class="clear">
		<div class="panel panel-danger">
			<div class="panel-heading" id="remai" >热卖图书</div>	
				<div class="panel-body">
					<table class="table table-bordered">
					<%Product pro=new Product();
					ProductDao dao=new ProductDao();
					ArrayList<Product> list=new ArrayList<Product>();
					list=dao.showallProductBySeald();%>
					<tr><%
					for(int i=0;i<5;i++){
						if(i>=list.size())
							break;
						else  {%>
						<td align="center">
								<a href="detial.jsp?id=<%=list.get(i).getId()%>">
									<img class="img-rounded" src="<%=request.getContextPath() %>/<%=list.get(i).getImg() %>" weight="450px" width="230px" />
									<br>
									<br>
									<br> <%=list.get(i).getPname() %><br>
									作者：<%=list.get(i).getAuthor() %><br>
									<%=list.get(i).getPrice() %>元<br>已销售<%=list.get(i).getSeald() %>件
								</a>
							</td>
						<%
						}
					}
					%>
            <tr >
						<td colspan="5" align="right">
						<a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="hot"%>">>>more>></a></td></tr>
					</table>
				</div>
			</div>
</div>
			<div class="panel panel-danger">
			<div class="panel-heading" id="remai" >最新图书</div>	
				<div class="panel-body">
					<table class="table table-bordered">
					<%Product pro1=new Product();
					ProductDao dao1=new ProductDao();
					ArrayList<Product> list1=new ArrayList<Product>();
					list1=dao.showallProductByTime();%>
					<tr><%
					for(int i=0;i<5;i++){
						if(i>=list1.size())
							break;
						else  {%>
						<td align="center">
								<a href="detial.jsp?id=<%=list1.get(i).getId()%>">
									<img class="img-rounded" src="<%=request.getContextPath() %>/<%=list1.get(i).getImg() %>" weight="450px" width="230px" />
									<br>
									<br>
									<br> <%=list1.get(i).getPname() %><br>
									作者：<%=list1.get(i).getAuthor() %><br>
									<%=list1.get(i).getPrice() %>元<br>已销售<%=list1.get(i).getSeald() %>件
								</a>
							</td>
						<%
						}
					}
					%>
            <tr >
						<td colspan="5" align="right">
						<a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="new"%>">>>more>></a></td></tr>
					</table>
				</div>
			</div>
</div>
			<div class="panel panel-danger">
			<div class="panel-heading" id="remai" >java</div>	
				<div class="panel-body">
					<table class="table table-bordered">
					<%Product pro2=new Product();
					ProductDao dao2=new ProductDao();
					ArrayList<Product> list2=new ArrayList<Product>();
					list2=dao2.showOneTypeProduct(1);%>
					<tr><%
					for(int i=0;i<5;i++){
						if(i>=list2.size())
							break;
						else  {%>
						<td align="center">
								<a href="detial.jsp?id=<%=list2.get(i).getId()%>">
									<img class="img-rounded" src="<%=request.getContextPath() %>/<%=list2.get(i).getImg() %>" weight="450px" width="230px" />
									<br>
									<br>
									<br> <%=list2.get(i).getPname() %><br>
									作者：<%=list2.get(i).getAuthor() %><br>
									<%=list2.get(i).getPrice() %>元<br>已销售<%=list2.get(i).getSeald() %>件
								</a>
							</td>
						<%
						}
					}
					%>
            <tr >
						<td colspan="5" align="right">
						<a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%=request.getContextPath()%>/ProductServlet?chaxun=<%="type"%>&type1=<%="1"%>">>>more>></a></td></tr>
					</table>
				</div>
			</div>
</div>
			<div class="panel panel-danger">
				<div class="panel-heading">javaweb</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<tr>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
						</tr>
						<tr >
						<td colspan="5" align="right">
						<a href="">>>more>></a></td></tr>
					</table>
				</div>
			</div>

		</div>
		<div class="text-primary-footer">
			<p>软件工程 &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; 软件实训课程设计 </p>
			<p>首页 &nbsp;&nbsp;| &nbsp;&nbsp;关于我们&nbsp;&nbsp; |&nbsp;&nbsp; 版权所有 &nbsp;&nbsp;翻版必究 </p>
		</div>
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	</body>

</html>