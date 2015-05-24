package Serverlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Product;
import Dao.ProductDao;

public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search=new String(request.getParameter("search").getBytes("ISO-8859-1"),"gbk");
		Product pro=new Product();
		ProductDao dao=new ProductDao();
		HttpSession session=request.getSession();
		ArrayList<Product> list=new ArrayList<Product>();
		list=dao.showBySearch(search);
		session.setAttribute("list", list);
		response.sendRedirect("foreground/protype.jsp");
		System.out.println(search);
	}

}
