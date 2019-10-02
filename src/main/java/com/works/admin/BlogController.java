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

import model.Blog;
import model.Contactus;
import model.Users;
import util.Util;

@Controller
@RequestMapping("/admin")
public class BlogController {




	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/addblog", method = RequestMethod.GET)
	public String addCustomer(HttpServletRequest req,Model model) {
	
	
		
		
		model.addAttribute("foodcount",foodcount());
		model.addAttribute("usercount",customercount());
		model.addAttribute("ordercount",ordercount());
		model.addAttribute("messagecount",messagecount());
		

		
		return Util.control(req, "addblog");
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
	@RequestMapping(value = "/addblog", method = RequestMethod.POST)
	public String fncCustomer( Blog fc) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(fc);
		
		tr.commit();
		
			return "redirect:/admin/addblog";
		
	}
	@RequestMapping(value = "/deleteblog/{postid}")
	public String deleteAdmin(@PathVariable int postid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Blog us = sesi.load(Blog.class, postid);
		sesi.delete(us);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/bloglist");
	}
}


