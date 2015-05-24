package Serverlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.ShopCar;
/**
 * Servlet implementation class ShopCarServlet
 */
public class ShopCarServlet extends HttpServlet {
	ArrayList<ShopCar>  shopcar1=new ArrayList<ShopCar>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		ArrayList<ShopCar>  shopcar=new ArrayList<ShopCar>();
	PrintWriter  out = response.getWriter();
	String type=request.getParameter("type");
	if(type.equals("add")){
	ShopCar car=new ShopCar();
	shopcar=(ArrayList<ShopCar>) session.getAttribute("s");
	String s=request.getParameter("num1");
	int num=Integer.parseInt(s);
	car.setPid(shopcar.get(0).getPid());
	car.setPname(shopcar.get(0).getPname());
	car.setAuthor(shopcar.get(0).getAuthor());
	car.setPrice(shopcar.get(0).getPrice());
	car.setNum(num);
shopcar1.add(car);
	session.setAttribute("shopcar", shopcar1);
	response.sendRedirect("foreground/main.jsp");
	}
if(type.equals("del")){
	int p=Integer.parseInt(request.getParameter("id"));
	ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
	list=(ArrayList<ShopCar>)session.getAttribute("shopcar");
	int pid = 0;
	for(int i=0;i<list.size();i++){
		int x=list.get(i).getPid();
		if(p==x)
		{pid=x;
			break;}
	}
	System.out.println(pid);
	list.remove(pid);
	session.setAttribute("shopcar", list);
	response.sendRedirect("foreground/shopcar.jsp");
	}
	}
	
	
}
