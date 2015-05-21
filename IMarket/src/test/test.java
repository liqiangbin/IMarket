package test;

import java.util.ArrayList;

import Dao.AdminDao;
import pojo.Admin;

public class test {
	public void mian(String args[]){
		Admin admin=new Admin();
		AdminDao dao=new AdminDao();
		ArrayList<Admin>list=new ArrayList<Admin>();
		list=dao.showAllAdmin();
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getUname());
		}
		
	}

}
