package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import model.Cart;
import model.Contactus;
import model.Foods;

import model.Neworder;
import model.Users;
import util.Password;
import util.Util;

@Controller
public class OrderController {
	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	int price=0;
	@RequestMapping(value="/order", method=RequestMethod.GET)
	public String PostOrder(Model model) {
		IncludeController.page = "order";
Session sesi=sf.openSession();
		
	
		
		
		List<Cart> carts=sesi.createQuery("from Cart").list();
		model.addAttribute("cartdata",carts);
		double total=0;
		for(Cart item:carts) {
			total= total+item.getFoodprice();
		}
		System.out.println(total);
		model.addAttribute("total",total);
		return "site/order";
	}
	
	

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	public String fncOrderReceive(Neworder us) {
		IncludeController.page = "/order";
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			// ekleme baþarýlý
		}
		
		tr.commit();
		try {
			String query="TRUNCATE cart";
			PreparedStatement pre = db.connect(query);
			 
			 
			  /* TRUNCATE is faster than DELETE since 
			 
			   * it does not generate rollback information and does not 
			 
			   * fire any delete triggers
			 
			   */
			 
			 pre.executeUpdate();
			 System.out.println("Silme baþarýlý");
			}
		catch (Exception e) {
			System.err.println("delete error : " + e);
		} 
		
	
		return "redirect:/order";
	}
	public Foods FoodGoster(int foodid) {
		Session sesi=sf.openSession();
		Transaction tr=sesi.beginTransaction();
		Foods fooddata=sesi.load(Foods.class, foodid);
		return fooddata;
	}
	@RequestMapping(value="/delete/{cartid}", method=RequestMethod.GET)
	public String fncSil(@PathVariable int cartid, HttpServletRequest req) {
		Session sesi=sf.openSession();
		Transaction tr=sesi.beginTransaction();
		Cart carts=sesi.load(Cart.class, cartid);
		sesi.delete(carts);
		tr.commit();
		return "redirect:/order";
	
}
	
	}

