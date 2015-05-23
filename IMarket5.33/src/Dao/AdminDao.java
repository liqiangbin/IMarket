package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import pojo.Admin;
import DBhelp.*;

public class AdminDao {
	
	public ArrayList<Admin> showAllAdmin(){
		ArrayList<Admin> list=new ArrayList<Admin>();
		
		try{
			String sql = "select * from admin";
			ResultSet rs = DBhelper. executeQuery(sql);
		while(rs.next()){
			Admin admin=new Admin();
			String uname=rs.getString(1);
			String  password=rs.getString(2);
			String  phone=rs.getString(3);
			String  email=rs.getString(4);
			admin.setUname(uname);
			admin.setPassword(password);
			admin.setPhone(phone);
			admin.setEmail(email);
			list.add(admin);
		}
		}
			catch(Exception e){
				System.out.println(e);
			}
		return list;
		
	}
	
}
