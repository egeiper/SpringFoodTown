package com.works.admin;

import java.nio.charset.Charset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.works.foodtown.DB;

import model.Admin;
import model.Cart;
import model.Foods;
import model.Users;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class DashboardController {
	int editID=0;
DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashBoard( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());
		
		
		model.addAttribute("foodcount",foodcount());
		model.addAttribute("usercount",customercount());
		model.addAttribute("ordercount",ordercount());
		model.addAttribute("messagecount",messagecount());
		
		return Util.control(req, "dashboard");
		
	}
	public int foodcount() {
		try {
			String query = "SELECT* FROM foods";
			PreparedStatement pre = db.connect(query);
			ResultSet rs=pre.executeQuery();
			 rs.last();
		      System.out.println("Table contains "+rs.getRow()+" rows");
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
		      System.out.println("Table contains "+rs.getRow()+" users");
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
		      System.out.println("Table contains "+rs.getRow()+" new order");
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
		      System.out.println("Table contains "+rs.getRow()+" messages");
			int rowcount=rs.getRow();
			return rowcount;
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return 0;
		}
	
	@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
	public String adminInsert(HttpServletRequest req, Admin adm) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		  byte[] array = new byte[7]; // length is bounded by 7
		    new Random().nextBytes(array);
		    String generatedString = new String(array, Charset.forName("UTF-8"));
		adm.setApass(Util.MD5(generatedString));
		long start = System.currentTimeMillis();
		System.out.println("start : " + start );
		int id =  (int) sesi.save(adm);
		System.out.println("insert id : " + id);
		tr.commit(); // işlem başarılı kayıt yap
		long end = System.currentTimeMillis();
		System.out.println("end : " + end );
		long bettwen =  end - start;
		System.out.println("bettwen : " + bettwen );
		//tr.rollback(); // işlem hatası yukarıdakileri geri al
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	
	public List<Admin> dataResult() {
		Session sesi = sf.openSession();
		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		return ls;
	}
	
	// delete admin
	@RequestMapping(value = "/deleteAdmin/{aid}")
	public String deleteAdmin(@PathVariable int aid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Admin adm = sesi.load(Admin.class, aid);
		sesi.delete(adm);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	
	
}
