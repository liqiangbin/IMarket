package test;

import java.util.ArrayList;

import org.junit.Test;

import pojo.Order;
import Dao.OrderDao;

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
	//@Test
	
//	public void testCustomer(){
//		Customer cus=new Customer();
//		CustomerDao dao=new CustomerDao();
	//	dao.updatemyself("李强斌", "1234567", "13917172679", "123");
	//	System.out.println(dao.login("李强斌", "1234567"));
//		ArrayList<Customer>list=new ArrayList<Customer>();
//		list=dao.showAllCustomer();
//		for(int i=0;i<list.size();i++){
//			System.out.println(list.get(i).getId()+"  "+list.get(i).getUname());
//		}
	//	}
	
//	@Test
//	public void testProduct(){
//		Product pro=new Product();
//		ProductDao dao=new ProductDao();
//		ArrayList<Product> list=new ArrayList<Product>();
//		list=dao.showoneproduct(1);
//		System.out.println(list.get(0).getPname()+list.get(0).getPublishtime());
//		dao.showoneproduct(1);
//	}
	
	@Test
	public void testorder(){
		Order order=new Order();
		OrderDao dao=new OrderDao();
//		order.setId("4567");
//		order.setTime("2015/5/6");
//		order.setAddress("上海");
//		order.setUname("li");
//		order.setReceivename("456789");
//		order.setStatus(0);
//		order.setSubprice(20.0);
//		order.setPhone("456789");
//		
//		ArrayList<Order> list=new ArrayList<Order>();
//		dao.InsertOrder(order);
//		System.out.println(list.get(0).getId());
		dao.Pay("20150525072748");
	}
//	@Test
//	public void testorderitem(){
//		Orderitem pro=new Orderitem();
//		OrderitemDao dao=new OrderitemDao();
//		ArrayList<Orderitem> list=new ArrayList<Orderitem>();
//		list=dao.showOrderitemByOrderId("20150522");
//		dao.DeleteOrderitemByOrderid("20150524181855");
//		System.out.println(list.get(0).getPrice());
//	}

//	@Test
//	public void testorderitem(){
//		pj p=new pj();
//		PjDao dao=new PjDao();
//		p.setPid(0);
//		p.setPname("nn");
//		p.setUname("xx");
//		p.setPjcontent("henghao");
//		p.setPjtime("2015/5/6");
//		dao.InsertCustomer(p);
//		
//	}
	}


