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
                out.print("��ӭ����<b>IMarket</b> &nbsp;&nbsp;  ");}
 
            else{
            	
        	out.print("��ӭ����½��<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="login.jsp">��½</a>|<a href="reg.jsp">ע��</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="#">���ﳵ</a>|<a href="#">�ҵĶ���</a>|<a href="#">������Ϣ</a>|<a href="#">�˳�</a>
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
							<button type="button" class="btn btn-default"><a href="video.html">��   ��</a>
							</button>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">�ƻ�ͼ��</a>
							</li>
							<li role="presentation"><a href="#">���ĵ���</a>
							</li>
							<li role="presentation"><a href="#">ѧ�ƽ̲�</a>
							</li>
							<li role="presentation"><a href="#">ԭ���鼮</a>
							</li>

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              ������Ʒ���� 
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
									<li><a href="#">���������</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">��һ�����������</a>
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
				<div class="panel-heading">������Ʒ</div>
				<div class="panel-body">
					<table class="table table-bordered">
						<tr>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
							<td align="center">
								<a href="#">
									<img class="img-rounded" src="images/20285763-1_b.jpg" weight="450px" width="230px" />
									<br>
									<br> ����---63.00Ԫ---������xx��
								</a>
							</td>
						</tr>

					</table>
				</div>
			</div>
</div>
			<div class="panel panel-danger">
				<div class="panel-heading">������Ʒ</div>
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
					</table>
				</div>
			</div>
			<div class="panel panel-danger">
				<div class="panel-heading">ԭ��ͼ��</div>
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
					</table>
				</div>
			</div>
			<div class="panel panel-danger">
				<div class="panel-heading">�ƻ�ͼ��</div>
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