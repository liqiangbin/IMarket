package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import pojo.pj;
import DBhelp.DBhelper;

public class PjDao {

public ArrayList<pj> showpjByproduct(int Id){
	ArrayList<pj> list=new ArrayList<pj>();
	
	try{
		String sql = "select * from pj where pid='"+Id+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
	while(rs.next()){
		
		pj pro=new pj();
		int id=rs.getInt(1);
		int pid=rs.getInt(2);
		String uname=rs.getString(3);
		String pjcontent=rs.getString(4);
		String pjtime=rs.getString(5);
		
		pro.setId(id);
		pro.setPid(pid);
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


}
