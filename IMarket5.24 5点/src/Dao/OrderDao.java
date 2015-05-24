package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import pojo.Customer;
import pojo.Order;
import DBhelp.DBhelper;

public class OrderDao {
	public ArrayList<Order> showAllOrderByuname(String uname1){
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
	
	
	public boolean InsertOrder(Order s){
		try{
			
			String sql = "insert into orderall values('"+s.getId()+"','"+s.getTime()+"','"+s.getAddress()+"','"+s.getUname()+"','"+s.getReceivename()+"','"+s.getStatus()+"','"+s.getSubprice()+"','"+s.getPhone()+"')";	
			DBhelper. executeUpdate(sql);}
			catch(Exception e){
				System.out.println(e);
				return false;
			}
		return true;
	}

}
