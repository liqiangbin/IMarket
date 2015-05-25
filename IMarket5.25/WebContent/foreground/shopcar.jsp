<%@ page language="java"  import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
            	 out.print("<script language='javascript'>alert('ÇëÏÈµÇÂ¼£¡');window.location.href='login.jsp';</script> ");
            %> <a href="login.jsp">µÇÂ½</a>|<%    
            }
            else{
            	
        	out.print("»¶Ó­Äú"+uname+"µÇÂ½µ½<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="reg.jsp">×¢²á</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="shopcar.jsp">¹ºÎï³µ</a>|<a href="mydingdan.jsp?uname=<%=uname%>">ÎÒµÄ¶©µ¥</a>|<a href="myself.jsp">¸öÈËÐÅÏ¢</a>|<a href="<%=request.getContextPath() %>/CustomerServlet?message=<%="exit"%>">ÍË³ö</a>
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
							<input type="text" class="form-control" name="search" id="search" placeholder="ÇëÊäÈë²éÑ¯ÄÚÈÝ">
						</div>

						<div class="col-md-2 ">
						
							<button type="submit" class="btn btn-default">ËÑ   Ë÷
							</button>
							</form>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="all"%>">ËùÓÐÍ¼Êé</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="hot"%>">ÈÈÂôÍ¼Êé</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="new"%>">×îÐÂÍ¼Êé</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="type"%>&type1=<%="1"%>">java</a>
							</li>
							<li role="presentation"><a href="#">javaweb</a>
							</li>
							<li role="presentation"><a href="#">HTML</a>
							</li>
							<li role="presentation"><a href="#">ÎÄÑ§</a>
							</li>

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              ÆäËûÍ¼Êé·ÖÀà 
               <b class="caret"></b>
            </a>
								<ul class="dropdown-menu">
									<li><a href="#">ÕÜÑ§Àà  </a>
									</li>
									<li><a href="#">ÕþÖÎ·¨ÂÉ</a>
									</li>
									<li><a href="#">²Æ¾­¹ÜÀí</a>
									</li>
									<li><a href="#">ÓïÑÔÎÄ×Ö</a>
									</li>
									<li><a href="#"> ×ÔÈ»¿ÆÑ§ </a>
									</li>
									<li><a href="#">ÉÙ¶ù¶ÁÎï </a>
									</li>
									<li><a href="#"> ¼ÆËã»ú¼¼Êõ </a>
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
						<li>¹ºÎï³µ</li>

					</ol>
					<h3><strong >ÎÒµÄ¹ºÎï³µ</strong></h3>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
				
					<thead>
						<tr>
							<th>ÉÌÆ·Ãû³Æ</th>
							<th>×÷Õß</th>
							<th>ÉÌÆ·ÊýÄ¿</th>
							
							<th>ÉÌÆ·¼Û¸ñ</th>
							<th>²Ù×÷</th>
						</tr>
					</thead>
					<tbody>
					<% ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
					 if(uname==null) {out.print("<script language='javascript'>alert('ÇëÏÈµÇÂ¼£¡');window.location.href='login.jsp';</script> ");}
					 else{list=(ArrayList<ShopCar>)session.getAttribute("shopcar");
					if(list.size()>0){
					double allmoney=0;
					for(int i=0;i<list.size();i++){%>
						<tr>
							<td><%=list.get(i).getPname() %></td>
							<td><%=list.get(i).getAuthor() %></td>
					<td><%=list.get(i).getNum() %></td>
							<td><%=list.get(i).getPrice() %></td>
							<td><a href="<%=request.getContextPath()%>/ShopCarServlet?type=<%="del" %>&id=<%=i%>">É¾³ý</a>
						</tr>
					<%
					allmoney=allmoney+list.get(i).getPrice()*list.get(i).getNum();
					}
					%>
						<tr >
							<td>&nbsp;</td>
							<td align="right"><strong>ºÏ¼Æ£º</strong></td>
							<td align="center" colspan="3"> <%=allmoney%>
								<strong>Ôª</strong>
							</td>
						</tr>
						<tr >
							<td>&nbsp;</td>
							<td align="right">
								<button type="button" class="btn btn-warning btn-lg"><a href="fillorder.jsp">
									   &nbsp; &nbsp;½á&nbsp;&nbsp;&nbsp;&nbsp;Ëã  &nbsp;&nbsp;</a>
   </button>
							</td>
							<td>&nbsp;</td>
						</tr><%} 
					else {%>
					<tr><td> <h2>¹ºÎï³µÔÝÎÞÉÌÆ·£¬¿ìÈ¥ÌôÑ¡ÉÌÆ·°É£¡£¡</h2></td></tr>
					
					<%
						
						
					}
						}%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="text-primary-footer">
			<p>Èí¼þ¹¤³Ì &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; Èí¼þÊµÑµ¿Î³ÌÉè¼Æ </p>
			<p>Ê×Ò³ &nbsp;&nbsp;| &nbsp;&nbsp;¹ØÓÚÎÒÃÇ&nbsp;&nbsp; |&nbsp;&nbsp; °æÈ¨ËùÓÐ &nbsp;&nbsp;·­°æ±Ø¾¿ </p>
		</div>
<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/angular.min.js"></script>
	</body>

</html>