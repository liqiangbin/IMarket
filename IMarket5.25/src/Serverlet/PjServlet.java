package Serverlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Order;
import pojo.pj;
import Dao.OrderDao;
import Dao.PjDao;

/**
 * Servlet implementation class PjServlet
 */
public class PjServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type=request.getParameter("type");
		PrintWriter  out = response.getWriter();
		if(type.equals("pj")){
		pj p=new pj();
		PjDao dao=new PjDao();
		Date time1=new Date();
	
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int pid=0;
		String pname=new String(request.getParameter("bookname").getBytes("ISO-8859-1"), "gbk");
		String uname=new String(request.getParameter("uname").getBytes("ISO-8859-1"), "gbk");
		String pjcontent=new String(request.getParameter("pjcontent").getBytes("ISO-8859-1"), "gbk");
		String pjtime=sdf.format(time1);
		//为实体类赋值
		p.setPid(pid);
		p.setPname(pname);
		p.setUname(uname);
		p.setPjcontent(pjcontent);
		p.setPjtime(pjtime);
		dao.InsertCustomer(p);
		response.setCharacterEncoding("gbk"); 
		request.setCharacterEncoding("gbk");
		 out.print("<script language='javascript'>alert('Thanks for your evaluate!!');window.location.href='foreground/mydingdan.jsp';</script>");
		}	
		
		if(type.equals("pay")){
			Order order=new Order();
			OrderDao dao=new OrderDao();
			String orderid=request.getParameter("orderid");
			dao.Pay(orderid);
			response.setCharacterEncoding("gbk"); 
			request.setCharacterEncoding("gbk");
			 out.print("<script language='javascript'>alert('pay success');window.location.href='foreground/mydingdan.jsp';</script>");
				
		//	System.out.println(orderid);
			
			
		}
		
	}

}
