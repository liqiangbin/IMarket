<%@page import="java.awt.PageAttributes"%>
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
							»¶Ó­À´µ½<b>IMarket</b> &nbsp;&nbsp;
							<a href="login.html">µÇÂ½</a>|<a href="reg.html">×¢²á</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="#">¹ºÎï³µ</a>|<a href="#">ÎÒµÄ¶©µ¥</a>|<a href="#">¸öÈËÐÅÏ¢</a>|<a href="#">ÍË³ö</a>
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
							<button type="button" class="btn btn-default"><a href="video.html">ËÑ   Ë÷</a>
							</button>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="#">ËùÓÐÉÌÆ·</a>
							</li>
							<li role="presentation"><a href="#">ÈÈÂôÉÌÆ·</a>
							</li>
							<li role="presentation"><a href="#">×îÐÂÉÌÆ·</a>
							</li>
							<li role="presentation"><a href="#">¿Æ»ÃÍ¼Êé</a>
							</li>
							<li role="presentation"><a href="#">ÈËÎÄµØÀí</a>
							</li>
							<li role="presentation"><a href="#">Ñ§¿Æ½Ì²Ä</a>
							</li>
							<li role="presentation"><a href="#">Ô­°æÊé¼®</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              ËùÓÐÉÌÆ··ÖÀà 
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
									<li><a href="#">·ÖÀëµÄÁ´½Ó</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">ÁíÒ»¸ö·ÖÀëµÄÁ´½Ó</a>
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
				<li><a href="mian.jsp">Ê×Ò³</a>
				</li>
				<li><a href="main.jsp">ËùÓÐÉÌÆ·</a>
				</li>
				<li class="active">Data</li>
			</ol>
			<% Product pro=new Product();
ProductDao dao=new ProductDao();
Integer id;
id=Integer.parseInt(request.getParameter("id"));
			
				ArrayList<Product>list=new ArrayList<Product>();
				list=dao.showoneproduct(id);
				%>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="pleft">
						<center>
							<img src="<%=request.getContextPath() %>/<%=list.get(0).getImg() %>" height="500" width="400" class="img-thumbnail">
							<br>
							<br>

							<img src="<%=request.getContextPath() %>/<%=list.get(0).getImg() %>" height="200px" width="80px" class="img-thumbnail">
							<img src="<%=request.getContextPath() %>/<%=list.get(0).getImg() %>" height="200px" width="80px" class="img-thumbnail">
							<img src="<%=request.getContextPath() %>/<%=list.get(0).getImg() %>" height="200px" width="80px" class="img-thumbnail">

					</div>
					</center>

					<div class="pright">
						<div class="clear">
							<div class="panel panel-default">
								<div class="panel-body">
<form action="<%=request.getContextPath()%>/ShopCarServlet?type=<%="add" %>" method="post">
									<table class="table">
										<tr align="center">
										<td colspan="2">
										<h3><%=list.get(0).getPname() %></h3>
										</td></tr>

										<tbody>
											<tr>
												<td align="right" width="20%">×÷Õß£º</td>
												<td align="left"><%=list.get(0).getAuthor() %></td>
											</tr>
											<tr>
												<td align="right" width="20%">³ö°æÉç£º</td>
												<td align="left"><%=list.get(0).getPublish() %> </td>
											</tr>
											<tr>
												<td align="right" width="20%">Í¼Êé¼ò½é£º</td>
												<td align="left"><%=list.get(0).getPdesc()%> </td>
											</tr>
											<tr>
												<td align="right">¼Û¸ñ£º</td>
												<td align="left"><%=list.get(0).getPrice() %></td>
											</tr>
											<tr>
												<td align="right">ÕÛ¿Û£º</td>
												<td align="left"><%=list.get(0).getDiscount()*10 %>ÕÛ</td>
											</tr>
											<tr>
												<td align="right" width="20%">¿â´æ£º</td>
												<td align="left"><%=list.get(0).getTotal() %>¼þ </td>
											</tr>
											<tr>
												<td align="right">ÀÛ¼ÆÆÀ¼Û£º</td>
												<td align="left"><a href="#pj"><%=list.get(0).getPjnum()%></a>
												</td>
												
											</tr>
											<tr>
												<td align="right">ÔÂÏúÁ¿£º</td>
												<td align="left"><%=list.get(0).getSeald() %>¼þ <a href="">ÓëÂô¼Ò¹µÍ¨</a>
												</td>
											</tr>
											<tr>
												<td align="right">ÎÒÒªÂò£º</td>
												<td align="left">
													<input type="number" name="num1" min="1"  value="1">
															¼þ</td>
											</tr>
											<tr>
											<% ArrayList<ShopCar> shopcar=new ArrayList<ShopCar>();
											ShopCar car=new ShopCar();
											car.setPid(list.get(0).getId());
											car.setPname(list.get(0).getPname());
											car.setAuthor(list.get(0).getAuthor());
											car.setPrice(list.get(0).getPrice());
											car.setNum(1);
											shopcar.add(car);
											session.setAttribute("s", shopcar);
											%>
												<td align="right">
													<button type="submit" class="btn btn-warning"><strong>¼ÓÈë¹ºÎï³µ</strong>
													</button>
												</td>
												<td align="center">
													<button type="button" class="btn btn-warning"><strong>Ö±½Ó¹ºÂò</strong>
													</button>
												</td>
											</tr>
										</tbody>
									</table>
</form>
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
					<h3 class="panel-title">ÉÌÆ·ÆÀ¼Û</h3>
				</div>
				<div class="panel-body">
				<%pj pj=new pj();
				 PjDao dao1=new  PjDao();
								ArrayList<pj> listpj=new ArrayList<pj>();
								listpj=dao1.showpjByproduct(id); %>
			<table class="table table-hover" width=80%>
   <thead>
      <tr>
         <th width="25%">ÆÀ¼ÛÕß</th>
         <th width="50%" align="center">ÆÀ¼ÛÄÚÈÝ</th>
         <th width="25%">ÆÀ¼ÛÊ±¼ä</th>
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
        	ÏÂÃæÊÇÒ³½Å
        -->
		<div class="text-primary-footer">
			<p>Èí¼þ¹¤³Ì &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; Èí¼þÊµÑµ¿Î³ÌÉè¼Æ </p>
			<p>Ê×Ò³ &nbsp;&nbsp;| &nbsp;&nbsp;¹ØÓÚÎÒÃÇ&nbsp;&nbsp; |&nbsp;&nbsp; °æÈ¨ËùÓÐ &nbsp;&nbsp;·­°æ±Ø¾¿ </p>
		</div>

		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>

</html>