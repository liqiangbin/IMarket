<%@ page language="java" contentType="text/html; charset=gbk"
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
							<th>ÉÌÆ·ÊýÄ¿</th>
							<th>ÉÌÆ·¼Û¸ñ</th>
							<th>²Ù×÷</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
					<td><input type="number" ng-model="num" value="1"></td>
							<td>400003</td>
							<td><a href="">É¾³ý</a>
						</tr>
						<tr>
							<td>Sachin</td>
							<td><input type="number" ng-model="num1" value="1" ></td>
							<td>400003</td>
							<td><a href="">É¾³ý</a>
							</td>
						</tr>
						<tr>
							<td>Uma</td>
							
							
							<td><input type="number" ng-model="num2" value="1"></td>
							<td>411027</td>
							<td>
								<a href="">É¾³ý</a>
							</td>
						</tr>
						<tr >
							<td>&nbsp;</td>
							<td align="right"><strong>ºÏ¼Æ£º</strong></td>
							<td align="center"> {{num1 * 10 + num2 * 20 || '0' }}
								<strong>Ôª</strong>
							</td>
						</tr>
						<tr >
							<td>&nbsp;</td>
							<td align="right">
								<button type="button" class="btn btn-warning btn-lg">
									   &nbsp; &nbsp;½á&nbsp;&nbsp;&nbsp;&nbsp;Ëã  &nbsp;&nbsp;
   </button>
							</td>
							<td>&nbsp;</td>
						</tr>
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