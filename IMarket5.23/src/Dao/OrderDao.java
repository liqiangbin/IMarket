package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import pojo.Order;
import DBhelp.DBhelper;

public class OrderDao {
	public ArrayList<Order> showAllOrder(String uname1){
		ArrayList<Order> list=new ArrayList<Order>();
		
		try{
			String sql ="select * from orderall where uname='"+uname1+"'";
			ResultSet rs = DBhelper. executeQuery(sql);
		while(rs.next()){
			Order order=new Order();
			String id=rs.getString(1);
			String  time=rs.getString(2);
			String  address=rs.getString(3);
			String uname=rs.getString(4);
			String receivename=rs.getString(5);
			int status=rs.getInt(6);
			double subprice=rs.getDouble(7);
			String phone=rs.getString(8);
			
			order.setId(id);
			order.setTime(time);
			order.setUname(uname);
			order.setReceivename(receivename);
			order.setStatus(status);
			order.setSubprice(subprice);
			order.setPhone(phone);
			list.add(order);
		}
		}
			catch(Exception e){
				System.out.println(e);
			}
		return list;
		
	}

}
