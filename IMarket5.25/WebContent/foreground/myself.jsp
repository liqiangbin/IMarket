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
						<li>������Ϣ</li>

					</ol>
					<h3><strong >������Ϣ</strong></h3>
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
						<td align="right">�û�����</td>
						<td align="left"><%=list.get(0).getUname() %></td>
					</tr>
					<tr>
						<td align="right">���룺</td>
						<td align="left"><%=list.get(0).getPassword() %></td>
					</tr>
					<tr>
						<td align="right">�绰��</td>
						<td align="left"><%=list.get(0).getPhone() %></td>
					</tr>
					<tr>
						<td align="right">���䣺</td>
						<td align="left"><%=list.get(0).getEmail() %></td>
					</tr>
					<tr>
						<td align="right">&nbsp;</td>
						<td align="left">
							
				<button class="btn btn-primary btn-lg" data-toggle="modal" 
   data-target="#myModal">
   �޸ĸ�����Ϣ
</button>

<!-- ģ̬��Modal�� -->
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
               �޸ĸ�����Ϣ
            </h4>
         </div>
         <div class="modal-body">
            <form action=<%=request.getContextPath() %>/CustomerServlet?message=<%="updatemyself"%>&username=<%=list.get(0).getUname() %> method="post" >
            	
<table class="table table-hover">

					<tr>
						<td align="right">�û�����</td>
						<td align="left"><%=list.get(0).getUname() %></td>
					</tr>
					<tr>
						<td align="right">���룺</td>
						<td align="left"><input type="password" name="password" class="form-control"  value="<%=list.get(0).getPassword() %>"></td>
					</tr>
					<tr>
						<td align="right">�绰��</td>
						<td align="left"><input type="text" name="phone" class="form-control"  value="<%=list.get(0).getPhone() %>"></td>
					</tr>
					<tr>
						<td align="right">���䣺</td>
						<td align="left"><input type="text"  name="email" class="form-control"  value="<%=list.get(0).getEmail() %>"></td>
					</tr>
            </form>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" 
               data-dismiss="modal">�ر�
            </button>
            <button type="submit" class="btn btn-primary">
               �����޸�
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