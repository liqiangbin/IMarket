package Serverlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ProductDao;
import pojo.Product;


public class ProductServlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product pro=new Product();
		ProductDao dao=new ProductDao();
		HttpSession session=request.getSession();
		String chaxun=request.getParameter("chaxun");
		if(chaxun.equals("all")){
			ArrayList<Product> list=new ArrayList<Product>();
			list=dao.showallProduct();
			session.setAttribute("list", list);
			response.sendRedirect("foreground/protype.jsp");
		}
		if(chaxun.equals("hot")){
			ArrayList<Product> list=new ArrayList<Product>();
			list=dao.showallProductBySeald();
			session.setAttribute("list", list);
			response.sendRedirect("foreground/protype.jsp");
		}
		if(chaxun.equals("new")){
			ArrayList<Product> list=new ArrayList<Product>();
			list=dao.showallProductByTime();
			session.setAttribute("list", list);
			response.sendRedirect("foreground/protype.jsp");
		}
		if(chaxun.equals("type")){
			String t=request.getParameter("type1");
			int type=Integer.parseInt(t);
			ArrayList<Product> list=new ArrayList<Product>();
			list=dao.showOneTypeProduct(type);
			session.setAttribute("list", list);
			response.sendRedirect("foreground/protype.jsp");
		}
		
	}

}
