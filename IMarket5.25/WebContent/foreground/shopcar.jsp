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
            	 out.print("<script language='javascript'>alert('���ȵ�¼��');window.location.href='login.jsp';</script> ");
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
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="lujin">
					<ol class="breadcrumb">
						<li><a href="#">IMarket</a>
						</li>
						<li>���ﳵ</li>

					</ol>
					<h3><strong >�ҵĹ��ﳵ</strong></h3>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
				
					<thead>
						<tr>
							<th>��Ʒ����</th>
							<th>����</th>
							<th>��Ʒ��Ŀ</th>
							
							<th>��Ʒ�۸�</th>
							<th>����</th>
						</tr>
					</thead>
					<tbody>
					<% ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
					 if(uname==null) {out.print("<script language='javascript'>alert('���ȵ�¼��');window.location.href='login.jsp';</script> ");}
					 else{list=(ArrayList<ShopCar>)session.getAttribute("shopcar");
					if(list.size()>0){
					double allmoney=0;
					for(int i=0;i<list.size();i++){%>
						<tr>
							<td><%=list.get(i).getPname() %></td>
							<td><%=list.get(i).getAuthor() %></td>
					<td><%=list.get(i).getNum() %></td>
							<td><%=list.get(i).getPrice() %></td>
							<td><a href="<%=request.getContextPath()%>/ShopCarServlet?type=<%="del" %>&id=<%=i%>">ɾ��</a>
						</tr>
					<%
					allmoney=allmoney+list.get(i).getPrice()*list.get(i).getNum();
					}
					%>
						<tr >
							<td>&nbsp;</td>
							<td align="right"><strong>�ϼƣ�</strong></td>
							<td align="center" colspan="3"> <%=allmoney%>
								<strong>Ԫ</strong>
							</td>
						</tr>
						<tr >
							<td>&nbsp;</td>
							<td align="right">
								<button type="button" class="btn btn-warning btn-lg"><a href="fillorder.jsp">
									   &nbsp; &nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��  &nbsp;&nbsp;</a>
   </button>
							</td>
							<td>&nbsp;</td>
						</tr><%} 
					else {%>
					<tr><td> <h2>���ﳵ������Ʒ����ȥ��ѡ��Ʒ�ɣ���</h2></td></tr>
					
					<%
						
						
					}
						}%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="text-primary-footer">
			<p>�������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ����ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>
<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/angular.min.js"></script>
	</body>

</html>