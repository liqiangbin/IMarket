package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;



import pojo.Order;
import pojo.Orderitem;
import DBhelp.DBhelper;

public class OrderitemDao {
	public ArrayList<Orderitem> showOrderitemByOrderId(String orderid1){
		ArrayList<Orderitem> list=new ArrayList<Orderitem>();
		
		try{
			String sql ="select * from orderitem where orderid='"+orderid1+"'";
			ResultSet rs = DBhelper. executeQuery(sql);
		while(rs.next()){
			Orderitem orderitem=new Orderitem();
			int id=rs.getInt(1);
			String  orderid=rs.getString(2);
			String  pname=rs.getString(3);
			double price=rs.getDouble(4);
			String img=rs.getString(5);
			orderitem.setId(id);
			orderitem.setOrderid(orderid);
			orderitem.setPname(pname);
			orderitem.setPrice(price);
			orderitem.setImg(img);
			list.add(orderitem);
		}
		}
			catch(Exception e){
				System.out.println(e);
			}
		return list;
		
	}
	public boolean InsertOrderItem(Orderitem s){
		try{
			
			String sql = "insert into orderitem(orderid,pname,price,img) values('"+s.getOrderid()+"','"+s.getPname()+"','"+s.getPrice()+"','"+s.getImg()+"')";	
			DBhelper. executeUpdate(sql);}
			catch(Exception e){
				System.out.println(e);
				return false;
			}
		return true;
	}


}
