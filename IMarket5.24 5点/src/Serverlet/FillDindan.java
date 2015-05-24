package Serverlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Order;
import pojo.ShopCar;
import Dao.OrderDao;

public class FillDindan extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter  out = response.getWriter();
		HttpSession session=request.getSession();
		Order order=new Order();
		OrderDao dao=new OrderDao();
		//----获取值
		String uname=(String) session.getAttribute("uname");
		String receivename= new String(request.getParameter("receivename").getBytes("ISO-8859-1"), "gbk");
		String shen= new String(request.getParameter("sheng").getBytes("ISO-8859-1"), "gbk");
		String shi= new String(request.getParameter("shi").getBytes("ISO-8859-1"), "gbk");
		String qu= new String(request.getParameter("qu").getBytes("ISO-8859-1"), "gbk");
		String phone= new String(request.getParameter("phone").getBytes("ISO-8859-1"), "gbk");
		String address=shen+shi+qu;
		//--------
		Date time1=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMddHHmmss");
		String time=sdf.format(time1);
		String id=sdf1.format(time1);
		//----
		int status=0;
		double subprice=0;
		// 为订单对象赋值，插入订单
		order.setId(id);
		order.setTime(time);
		order.setAddress(address);
		order.setUname(uname);
		order.setReceivename(receivename);
		order.setStatus(status);
		order.setSubprice(subprice);
		order.setPhone(phone);
		//System.out.println(order.getId()+" "+order.getTime()+" "+order.getAddress()+"  "+order.getUname()+" "+order.getReceivename()+" "+order.getStatus()+" "+order.getSubprice()+" "+order.getPhone());
		dao.InsertOrder(order);
//		System.out.println(time);
//		System.out.println(id);
//		System.out.println(receivename+"  "+address);
//		System.out.println("hello");
//下面是对orderitem插入
		ShopCar s=new ShopCar();
		ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
		list=(ArrayList<ShopCar>) session.getAttribute("shopcar");
		for(int i=0;i<list.size();i++){
			String orderid=id;
			String pname=list.get(i).getPname();
			double price=list.get(i).getPrice();
			 String img=list.get(i).getAuthor();
			 int num=list.get(i).getNum();
			 double totalmoney=num*price;
			
			
		}
		//String pname=
		
		
		
		
	}

}
