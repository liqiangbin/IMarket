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
import pojo.Orderitem;
import pojo.ShopCar;
import Dao.OrderDao;
import Dao.OrderitemDao;

public class FillDindan extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter  out = response.getWriter();
		HttpSession session=request.getSession();
		
		if(request.getParameter("type").equals("fill")){
		ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
		list=(ArrayList<ShopCar>) session.getAttribute("shopcar");
		Order order=new Order();
		OrderDao dao=new OrderDao();
		//----��ȡֵ
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
		//��ȡ�����ܽ��
		double subprice=0;
		//System.out.println(list.size());
		for(int j=0;j<list.size();j++){
			subprice+=list.get(j).getPrice()*list.get(j).getNum();
		}
		//----
		int status=0;
		// Ϊ��������ֵ�����붩��
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
//�����Ƕ�orderitem����
		ShopCar s=new ShopCar();
		Orderitem orderitem=new Orderitem();
		OrderitemDao orderitemdao=new OrderitemDao();
		for(int i=0;i<list.size();i++){
			String orderid=id;
			String pname=list.get(i).getPname();
			double price=list.get(i).getPrice();
			 String img="images/logo.jpg";
			 int num=list.get(i).getNum();
			 double totalmoney=num*price;
			 orderitem.setOrderid(orderid);
			 orderitem.setPname(pname);
			 orderitem.setPrice(price);
			 orderitem.setImg(img);
			 orderitem.setNum(num);
			 orderitem.setTotalmoney(totalmoney);
			 orderitemdao.InsertOrderItem(orderitem);
			 response.sendRedirect("foreground/pay.jsp");
		}
		}
		
		if(request.getParameter("type").equals("del")){
			String orderid=request.getParameter("id");
			OrderDao orderdao=new OrderDao();
			OrderitemDao orderitem=new OrderitemDao();
			orderdao.DeleteOrderByOrderid(orderid);
			orderitem.DeleteOrderitemByOrderid(orderid);
			response.sendRedirect("foreground/mydingdan.jsp");
			
		}
	}
}
