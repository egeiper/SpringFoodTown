package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.works.foodtown.IncludeController;

import model.Blog;

import model.Foods;
import util.Password;


@Controller
public class HomeController {
	

SessionFactory sf = HibernateUtil.getSessionFactory();
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		IncludeController.page = "/";
		Session sesi=sf.openSession();
		List<Blog> blogpost=sesi.createQuery("from Blog").list();
		model.addAttribute("data", blogpost);
		
		List<Foods> foods=sesi.createQuery("from Foods").list();
		model.addAttribute("fooddata",foods);
		
		
		return "site/home";
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
	

