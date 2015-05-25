package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import pojo.Customer;
import pojo.pj;
import DBhelp.DBhelper;

public class PjDao {

public ArrayList<pj> showpjByproduct(String pname1){
	ArrayList<pj> list=new ArrayList<pj>();
	
	try{
		String sql = "select * from pj where pname='"+pname1+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
	while(rs.next()){
		
		pj pro=new pj();
		int id=rs.getInt(1);
		int pid=rs.getInt(2);
		String pname=rs.getString(3);
		String uname=rs.getString(4);
		String pjcontent=rs.getString(5);
		String pjtime=rs.getString(6);
		
		pro.setId(id);
		pro.setPid(pid);
		pro.setPname(pname);
		pro.setUname(uname);
		pro.setPjcontent(pjcontent);
		pro.setPjtime(pjtime);
		list.add(pro);
	}
	}
		catch(Exception e){
			System.out.println(e);
		}
	return list;
	
}
public boolean InsertCustomer(pj s){
	try{
		
		String sql = "insert into pj(pid,pname,uname,pjcontent,pjtime) values('"+s.getPid()+"','"+s.getPname()+"','"+s.getUname()+"','"+s.getPjcontent()+"','"+s.getPjtime()+"')";	
		DBhelper. executeUpdate(sql);}
		catch(Exception e){
			System.out.println(e);
			return false;
		}
	return true;
}


}
