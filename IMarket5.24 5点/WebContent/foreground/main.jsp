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
                out.print("��ӭ����<b>IMarket</b> &nbsp;&nbsp;  ");
            %> <a href="login.jsp">��½</a>|<%    
            }
            
 
            else{
            	
        	out.print("��ӭ��"+uname+"��½��<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="reg.jsp">ע��</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="shopcar.jsp">���ﳵ</a>|<a href="mydingdan.jsp?uname=<%=uname%>">�ҵĶ���</a>|<a href="myself.jsp">������Ϣ</a>|<a href="<%=request.getContextPath() %>/CustomerServlet?message=<%="exit"%>">�˳�</a>
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
							<input type="text" class="form-control" name="search" id="search" placeholder="�������ѯ����">
						</div>

						<div class="col-md-2 ">
						
							<button type="submit" class="btn btn-default">��   ��
							</button>
							</form>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="all"%>">����ͼ��</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="hot"%>">����ͼ��</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="new"%>">����ͼ��</a>
							</li>
							<li role="presentation"><a href="<%=request.getContextPath()%>/ProductServlet?chaxun=<%="type"%>&type1=<%="1"%>">java</a>
							</li>
							<li role="presentation"><a href="#">javaweb</a>
							</li>
							<li role="presentation"><a href="#">HTML</a>
							</li>
							<li role="presentation"><a href="#">��ѧ</a>
							</li>

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              ����ͼ����� 
               <b class="caret"></b>
            </a>
								<ul class="dropdown-menu">
									<li><a href="#">��ѧ��  </a>
									</li>
									<li><a href="#">���η���</a>
									</li>
									<li><a href="#">�ƾ�����</a>
									</li>
									<li><a href="#">��������</a>
									</li>
									<li><a href="#"> ��Ȼ��ѧ </a>
									</li>
									<li><a href="#">�ٶ����� </a>
									</li>
									<li><a href="#"> ��������� </a>
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
   <!-- �ֲ���Carousel��ָ�� -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- �ֲ���Carousel����Ŀ -->
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
   <!-- �ֲ���Carousel������ -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>

	</div>	
			
			
			
			<div class="clear">
		<div class="panel panel-danger">
			<div class="panel-heading" id="remai" >����ͼ��</div>	
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
									���ߣ�<%=list.get(i).getAuthor() %><br>
									<%=list.get(i).getPrice() %>Ԫ<br>������<%=list.get(i).getSeald() %>��
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
			<div class="panel-heading" id="remai" >����ͼ��</div>	
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
									���ߣ�<%=list1.get(i).getAuthor() %><br>
									<%=list1.get(i).getPrice() %>Ԫ<br>������<%=list1.get(i).getSeald() %>��
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
									���ߣ�<%=list2.get(i).getAuthor() %><br>
									<%=list2.get(i).getPrice() %>Ԫ<br>������<%=list2.get(i).getSeald() %>��
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
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20412979-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
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
			<p>������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ���ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	</body>

</html>