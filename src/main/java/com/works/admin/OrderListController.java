package com.works.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.foodtown.DB;
import com.works.foodtown.HibernateUtil;

import model.Admin;
import model.Contactus;
import model.Neworder;
import util.Util;
@Controller
@RequestMapping("/admin")
public class OrderListController {
	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String login(HttpServletRequest req,Model model) {
		
		
		model.addAttribute("foodcount",foodcount());
		model.addAttribute("usercount",customercount());
		model.addAttribute("ordercount",ordercount());
		model.addAttribute("messagecount",messagecount());
		Session sesi=sf.openSession();
		List<Neworder> neworder=sesi.createQuery("from Neworder").list();
		model.addAttribute("neworder",neworder);
		
		return Util.control(req, "orderlist");
	}
	public int foodcount() {
		try {
			String query = "SELECT* FROM foods";
			PreparedStatement pre = db.connect(query);
			ResultSet rs=pre.executeQuery();
			 rs.last();
		     
			int rowcount=rs.getRow();
			return rowcount;
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return 0;
		}
	public int customercount() {
		try {
			String query = "SELECT* FROM users";
			PreparedStatement pre = db.connect(query);
			ResultSet rs=pre.executeQuery();
			 rs.last();
		     
			int rowcount=rs.getRow();
			return rowcount;
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return 0;
		}
	public int ordercount() {
		try {
			String query = "SELECT* FROM neworder";
			PreparedStatement pre = db.connect(query);
			ResultSet rs=pre.executeQuery();
			 rs.last();
		     
			int rowcount=rs.getRow();
			return rowcount;
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return 0;
		}
	
		
	public int messagecount() {
		try {
			String query = "SELECT* FROM contactus";
			PreparedStatement pre = db.connect(query);
			ResultSet rs=pre.executeQuery();
			 rs.last();
		      
			int rowcount=rs.getRow();
			return rowcount;
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return 0;
		}
	@RequestMapping(value = "/orderlistdelivered/{orderid}")
	public String updateOrder(@PathVariable int orderid,HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		Neworder ord = sesi.load(Neworder.class, orderid);
		ord.setFoodstatus("Delivered");
		
		sesi.update(ord);
		
		tr.commit();
		return Util.control(req, "redirect:/admin/orderlist");
	}

@RequestMapping(value = "/orderlistready/{orderid}")
public String updateOrder2(@PathVariable int orderid,HttpServletRequest req) {
	Session sesi = sf.openSession();
	Transaction tr = sesi.beginTransaction();
	
	Neworder ord = sesi.load(Neworder.class, orderid);
	ord.setFoodstatus("Ready to Deliver");
	
	sesi.update(ord);
	
	tr.commit();
	return Util.control(req, "redirect:/admin/orderlist");
}
}
