package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;


import DBhelp.DBhelper;
import pojo.Product;
public class ProductDao {

public ArrayList<Product> showoneproduct(int Id){
	ArrayList<Product> list=new ArrayList<Product>();
	
	try{
		String sql = "select * from product where id='"+Id+"'";
		ResultSet rs = DBhelper. executeQuery(sql);
	while(rs.next()){
		
		Product pro=new Product();
		int id=rs.getInt(1);
		String pname=rs.getString(2);
		int  typeid=rs.getInt(3);
		String author=rs.getString(4);
		String  publish=rs.getString(5);
		double  price=rs.getDouble(6);
		double discount=rs.getDouble(7);
		int seald=rs.getInt(8);
		String pdesc=rs.getString(9);
		int pjnum=rs.getInt(10);
		String img=rs.getString(11);
		int total=rs.getInt(12);
		String publishtime=rs.getString(13);
		
		pro.setId(Id);
		pro.setPname(pname);
		pro.setTypeid(typeid);
		pro.setAuthor(author);
        pro.setPublish(publishtime);
        pro.setPrice(price);
        pro.setDiscount(discount);
        pro.setSeald(seald);
        pro.setPdesc(pdesc);
        pro.setPjnum(pjnum);
        pro.setImg(img);
        pro.setTotal(total);
        pro.setPublishtime(publishtime);
		
		list.add(pro);
	}
	}
		catch(Exception e){
			System.out.println(e);
		}
	return list;
	
}

}
