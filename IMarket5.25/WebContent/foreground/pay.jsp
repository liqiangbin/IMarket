<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen" type="text/css">
		 <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
   <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
</head>
<body>
<body>
<% 
String s= new String(request.getParameter("bookname").getBytes("ISO-8859-1"), "gbk"); 
String uname=(String)session.getAttribute("uname");
out.print(s+"  "+uname);


%>
		<div class="panel panel-default">
   <div class="panel-heading">
¸¶¿îÒ³Ãæ£¡
   </div>
   <div class="panel-body">
   	<center>   <h2> ÕâÀïÊÇ¸¶¿îÒ³Ãæ</h2></center>
   </div>
</div>

<div class="panel panel-default">
   <div class="panel-heading">
      <h3 class="panel-title">
        ¸¶¿îÒÑ³É¹¦£¬ÇëÄú¶Ô±¾ÉÌÆ·½øÐÐ¼òÒªµÄÆÀ¼Û<button class="btn btn-success btn-lg"><a href="main.jsp">ÎÒÒª¼ÌÐø¹ºÎï</a></button>
      </h3>
   </div>
   <div class="panel-body">
    <button class="btn btn-primary btn-lg" data-toggle="modal" 
   data-target="#myModal">
   ×·¼ÓÆÀÂÛ
</button>

<!-- Ä£Ì¬¿ò£¨Modal£© -->
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
               ÇëÄú¶Ô±¾ÉÌÆ·½øÐÐÆÀ¼Û
            </h4>
         </div>
         <form action="<%=request.getContextPath()%>/PjServlet?bookname=<%=s%>&uname=<%=uname%>&type=<%="pj" %>" method="post">
         <div class="modal-body">
      <textarea cols="60" rows="10" name="pjcontent"></textarea>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" 
               data-dismiss="modal">¹Ø±Õ
            </button>
            <button type="submit" class="btn btn-warning">Ìá½»ÆÀÂÛ
      
            </button>
         </div>
         </form>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
   </div>
   
</div>
	</body>

</body>
</html>