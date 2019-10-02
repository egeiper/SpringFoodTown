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
import model.Blog;
import model.Contactus;
import util.Util;
@Controller
@RequestMapping("/admin")
public class BlogListController {
	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/bloglist", method = RequestMethod.GET)
	public String login(HttpServletRequest req,Model model) {
		

		model.addAttribute("foodcount",foodcount());
		model.addAttribute("usercount",customercount());
		model.addAttribute("ordercount",ordercount());
		model.addAttribute("messagecount",messagecount());
		Session sesi=sf.openSession();
		List<Blog> bloglist=sesi.createQuery("from Blog").list();
		model.addAttribute("bloglist",bloglist);
		
		return Util.control(req, "bloglist");
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
	@RequestMapping(value = "/deleteblog/{postid}",method=RequestMethod.POST)
	public String deleteAdmin(@PathVariable int postid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Blog adm = sesi.load(Blog.class, postid);
		sesi.delete(adm);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/bloglist");
	}
}
