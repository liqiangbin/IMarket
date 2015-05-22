<%@ page language="java" contentType="text/html; charset=gbk"
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
            Object sno1=session.getAttribute("uname");
            if(sno1==null) {
                out.print("欢迎来到<b>IMarket</b> &nbsp;&nbsp;  ");}
 
            else{
            	
        	out.print("欢迎您登陆到<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="login.jsp">登陆</a>|<a href="reg.jsp">注册</a>
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
				<div class="panel-heading">热卖商品</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<tr>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> 名称---63.00元---已销售xx件
								</a>
							</td>
						</tr>

					</table>
				</div>
			</div>
</div>
			<div class="panel panel-danger">
				<div class="panel-heading">最新商品</div>
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
					</table>
				</div>
			</div>
			<div class="panel panel-danger">
				<div class="panel-heading">原版图书</div>
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
					</table>
				</div>
			</div>
			<div class="panel panel-danger">
				<div class="panel-heading">科幻图书</div>
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