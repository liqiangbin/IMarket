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
						
						<% 			
						
            Object uname1=session.getAttribute("uname");
            if(uname1==null) {
            	 out.print("<script language='javascript'>alert('���ȵ�¼��');window.location.href='login.jsp';</script> ");
                 
            %> <a href="login.jsp">��½</a>|<%    
            }
            
 
            else{
            	
        	out.print("��ӭ��"+uname1+"��½��<b>IMarket</b> &nbsp;&nbsp;");
            }%>
							
							<a href="reg.jsp">ע��</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="shopcar.jsp">���ﳵ</a>|<a href="mydingdan.jsp?uname=<%=uname1%>">�ҵĶ���</a>|<a href="myself.jsp">������Ϣ</a>|<a href="<%=request.getContextPath() %>/CustomerServlet?message=<%="exit"%>">�˳�</a>
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
		
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="lujin">
					<ol class="breadcrumb">
						<li><a href="main.jsp">IMarket</a>
						</li>
						<li>�ҵĶ���</li>

					</ol>
					<h3><strong >�ҵĶ���</strong></h3>
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
   <caption>����ɲ鿴��������</caption>
      <tr>
         <th>�������</th>
         <th>�µ�����</th>
         <th>�ջ�������</th>
         <th>�绰</th>
         <th width=40%>��ַ </th>
          <th>�ܽ��</th>
          <th>״̬</th>
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
           <td>δ����</td>
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
      <caption>��������</caption>
   <tbody>
   <tr align="center"><td lign="center">��ƷͼƬ</td><td lign="center">��Ʒ����</td><td lign="center">����</td><td lign="center">��Ʒ��Ŀ</td><td lign="center">�ϼ�</td></tr>
   <% String s=orderitemlist.get(0).getOrderid(); 
   for(int j=0;j<orderitemlist.size();j++){%>
      <tr align="center">
         <td align="center"><img src="<%=request.getContextPath()%>/<%=orderitemlist.get(j).getImg()%>" class="img-rounded"  width="60px" height="40px"></td>
         <td align="center"><%=orderitemlist.get(j).getPname()%></td>
          
         <td align="center"><%=orderitemlist.get(j).getPrice()%>Ԫ</td>
          <td align="center" ><%=orderitemlist.get(j).getNum()%>--��</td>
          <td align="center" ><%=orderitemlist.get(j).getTotalmoney()%>--Ԫ</td>
      </tr>
     <%  
      }
      %>
      <tr >
      <td colspan="3" align="right"> <button type="button" class="btn btn-warning"><a href="<%=request.getContextPath()%>/PjServlet?type=<%="pay"%>&orderid=<%=s%>">&nbsp;&nbsp;��������&nbsp;&nbsp;</a></button></td>
      <td align="center"><button type="button" class="btn btn-info"><a href="<%=request.getContextPath()%>/FillDindan?type=<%="del" %>&id=<%=s%>">ɾ���˶���</a></button></td>
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
   <caption>����ɲ鿴��������</caption>
      <tr>
         <th>�������</th>
         <th>�ջ�������</th>
         <th>�绰</th>
         <th width=40%>��ַ </th>
          <th>�ܽ��</th>
          <th>״̬</th>
          
          
      </tr>   
   </thead>
   <tbody>
      <tr>
         <td><%=orderlist.get(i).getId() %></td>
         <td><%=orderlist.get(i).getReceivename() %></td>
         <td><%=orderlist.get(i).getPhone() %></td>
          <td><%=orderlist.get(i).getAddress() %></td>
           <td><%=orderlist.get(i).getSubprice() %></td>
           <td>�Ѹ���</td>
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
      <caption>��������</caption>
   <tbody>
    <tr align="center"><td lign="center">��ƷͼƬ</td><td lign="center">��Ʒ����</td><td lign="center">����</td><td lign="center">��Ʒ��Ŀ</td><td lign="center">�ϼ�</td><td>����</td></tr>
  
   <% for(int j=0;j<orderitemlist.size();j++){%>
       <tr align="center">
         <td align="center"><img src="<%=request.getContextPath()%>/<%=orderitemlist.get(j).getImg()%>" class="img-rounded"  width="60px" height="40px"></td>
         <td align="center"><%=orderitemlist.get(j).getPname()%></td>
         <td align="center"><%=orderitemlist.get(j).getPrice()%>Ԫ</td>
          <td align="center" ><%=orderitemlist.get(j).getNum()%>--��</td>
          <td align="center" ><%=orderitemlist.get(j).getTotalmoney()%>--Ԫ</td>
          <td align="center" ><a href="pay.jsp?bookname=<%=orderitemlist.get(j).getPname()%>">׷������</a></td>
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
			<p>������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ���ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>
	</body>
</html>