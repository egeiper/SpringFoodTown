package com.works.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
import model.Foods;
import model.Users;
import util.Util;
@Controller
@RequestMapping("/admin")
public class AddCustomerController {
	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/addcustomer", method = RequestMethod.GET)
	public String login(HttpServletRequest req,Model model) {
	
	
		
		
		model.addAttribute("foodcount",foodcount());
		model.addAttribute("usercount",customercount());
		model.addAttribute("ordercount",ordercount());
		model.addAttribute("messagecount",messagecount());
		Session sesi=sf.openSession();
		
		return Util.control(req, "addcustomer");
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
	@RequestMapping(value = "/addcustomer", method = RequestMethod.POST)
	public String fncCustomer( Users fc) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(fc);
		
		tr.commit();
		
			return "redirect:/admin/addcustomer";
		
	}
	
}

