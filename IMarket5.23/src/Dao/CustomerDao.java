package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import DBhelp.DBhelper;
import pojo.Admin;
import pojo.Customer;

public class CustomerDao {
	Customer cus=new Customer();
	public boolean InsertCustomer(Customer s){
		try{
			
			String sql = "insert into customer values('"+s.getUname()+"','"+s.getPassword()+"','"+s.getSex()+"','"+s.getPhone()+"','"+s.getEmail()+"')";	
			DBhelper. executeUpdate(sql);}
			catch(Exception e){
				System.out.println(e);
				return false;
			}
		return true;
	}
	
public  int login(String uname,String password){
	try{
		String sql = "select * from customer where username='"+uname+"'and password='"+password+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
		if(rs.next()){
			int id=rs.getInt(1);
			return id ;}
		rs.close();
		DBhelper.closeConnection();
	}
		catch(Exception e){
			System.out.println(e);
		}
	return 0;
}
public ArrayList<Customer> showAllCustomer(){
	ArrayList<Customer> list=new ArrayList<Customer>();
	
	try{
		String sql = "select * from customer";
		ResultSet rs = DBhelper. executeQuery(sql);
	while(rs.next()){
		Customer cus=new Customer();
		int id=rs.getInt(1);
		String uname=rs.getString(2);
		String  password=rs.getString(3);
		String sex=rs.getString(4);
		String  phone=rs.getString(5);
		String  email=rs.getString(6);
		cus.setId(id);
		cus.setUname(uname);
		cus.setPassword(password);
		cus.setSex(sex);
		cus.setPhone(phone);
		cus.setEmail(email);
		list.add(cus);
	}
	}
		catch(Exception e){
			System.out.println(e);
		}
	return list;
	
}


public ArrayList<Customer> showoneselfMessage(String username){
	ArrayList<Customer> list=new ArrayList<Customer>();
	
	try{
		String sql = "select * from customer where username='"+username+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
	while(rs.next()){
		Customer cus=new Customer();
		int id=rs.getInt(1);
		String uname=rs.getString(2);
		String  password=rs.getString(3);
		String sex=rs.getString(4);
		String  phone=rs.getString(5);
		String  email=rs.getString(6);
		cus.setId(id);
		cus.setUname(uname);
		cus.setPassword(password);
		cus.setSex(sex);
		cus.setPhone(phone);
		cus.setEmail(email);
		list.add(cus);
	}
	}
		catch(Exception e){
			System.out.println(e);
		}
	return list;
	
}


public void updatemyself(String username,String password,String phone,String email){
	try{
	String sql = "update customer set  password='"+password+"',phone='"+phone+"',email='"+email+"' where username='"+username+"'" ;	
	DBhelper. executeUpdate(sql);}
	catch(Exception e){
		System.out.println(e);
	}
}

}
