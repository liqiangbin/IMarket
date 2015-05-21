package Dao;

import java.sql.ResultSet;

import DBhelp.DBhelper;
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
	
public  boolean login(String uname,String password){
	try{
		String sql = "select * from customer where uname='"+uname+"'and password='"+password+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
		if(rs.next()){
			return  true;}
		rs.close();
		DBhelper.closeConnection();
	}
		catch(Exception e){
			System.out.println(e);
		}
	return false;
}
}
