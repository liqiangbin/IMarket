package test;

import java.util.ArrayList;

import org.junit.Test;

import pojo.Customer;
import pojo.Order;
import pojo.Orderitem;
import Dao.CustomerDao;
import Dao.OrderitemDao;

public class test {
	

//	@Test
//	public void test(){
//		Admin admin=new Admin();
//		AdminDao dao=new AdminDao();
//		ArrayList<Admin>list=new ArrayList<Admin>();
//		list=dao.showAllAdmin();
//		for(int i=0;i<list.size();i++){
//			System.out.println(list.get(i).getUname());
//		}
//	}
//	
	@Test
	
	public void testCustomer(){
		Customer cus=new Customer();
		CustomerDao dao=new CustomerDao();
	//	dao.updatemyself("李强斌", "1234567", "13917172679", "123");
		System.out.println(dao.login("李强斌", "1234567"));
//		ArrayList<Customer>list=new ArrayList<Customer>();
//		list=dao.showAllCustomer();
//		for(int i=0;i<list.size();i++){
//			System.out.println(list.get(i).getId()+"  "+list.get(i).getUname());
//		}
		}
	
//	@Test
//	public void testProduct(){
//		Product pro=new Product();
//		ProductDao dao=new ProductDao();
//		ArrayList<Product> list=new ArrayList<Product>();
//		list=dao.showoneproduct(1);
//		System.out.println(list.get(0).getPname()+list.get(0).getPublishtime());
//		dao.showoneproduct(1);
//	}
	
//	@Test
//	public void testorder(){
//		Order pro=new Order();
//		OrderDao dao=new OrderDao();
//		ArrayList<Order> list=new ArrayList<Order>();
//		list=dao.showAllOrder();
//		System.out.println(list.get(0).getId());
//	}
//	@Test
//	public void testorderitem(){
//		Orderitem pro=new Orderitem();
//		OrderitemDao dao=new OrderitemDao();
//		ArrayList<Orderitem> list=new ArrayList<Orderitem>();
//		list=dao.showOrderitemByOrderId("20150522");
//		System.out.println(list.get(0).getPrice());
//	}
	}
	

