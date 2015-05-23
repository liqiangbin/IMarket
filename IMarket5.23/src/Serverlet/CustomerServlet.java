package Serverlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import pojo.Customer;
import Dao.CustomerDao;

/**
 * Servlet implementation class Customer
 */
public class CustomerServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("gbk"); 
		request.setCharacterEncoding("gbk");
		String message=request.getParameter("message");
	PrintWriter  out = response.getWriter();
	CustomerServlet cus=new CustomerServlet();
	CustomerDao dao=new CustomerDao();
	Customer customer=new Customer();
	
	
	if(message.equals("login")){
		
		String checkcode=request.getParameter("checkcode");
		System.out.println(checkcode);
		String yzm=request.getSession().getAttribute("yzm").toString();	
		String uname= new String(request.getParameter("username").getBytes("ISO-8859-1"), "gbk");
		String password=new  String(request.getParameter("password").getBytes("ISO-8859-1"), "gbk");
		System.out.println(uname+password);
	int id=dao.login(uname, password);
		if(!checkcode.equals(yzm)){
			request.setAttribute("info", "<h1 align=center  style='color: red'>checkcode is error!!!</h1>");

			request.getRequestDispatcher("foreground/login.jsp").forward(request, response);
			
		}
		else if(id==0){
			System.out.println(id);
			request.setAttribute("info", "<h1 align=center  style='color: red'>username or password is error!!!</h1>");

			request.getRequestDispatcher("foreground/login.jsp").forward(request, response);
			
		}
		else{
		HttpSession session=request.getSession();
		session.setAttribute("id",dao.login(uname, password));
		session.setAttribute("uname",uname);
		response.sendRedirect("foreground/main.jsp");}
	}
	
	if(message.equals("reg")){		
		
		customer.setUname( new String(request.getParameter("uname").getBytes("ISO-8859-1"), "gbk"));
		customer.setPassword(new String(request.getParameter("password").getBytes("ISO-8859-1"), "gbk"));
		customer.setSex(new String(request.getParameter("sex").getBytes("ISO-8859-1"), "gbk"));
		customer.setPhone(new String(request.getParameter("phone").getBytes("ISO-8859-1"), "gbk"));
		customer.setEmail(new String(request.getParameter("email").getBytes("ISO-8859-1"), "gbk"));
		dao.InsertCustomer(customer);
		out.println(customer.getUname());
		
	}
	
	if(message.equals("updatemyself")){
		 String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"gbk");
		String password=new String(request.getParameter("password").getBytes("ISO-8859-1"), "gbk");
		String phone=new String(request.getParameter("phone").getBytes("ISO-8859-1"), "gbk");
		String email=new String(request.getParameter("email").getBytes("ISO-8859-1"), "gbk");
		
		dao.updatemyself(username, password, phone, email);
		response.sendRedirect("foreground/myself.jsp");
	
	}
	
	
	}

}
