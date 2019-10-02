package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.works.foodtown.HibernateUtil;

import model.Admin;
import model.Users;
import util.Password;
import util.Util;
@Controller
public class LogController {
SessionFactory sf=HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(Users us, @RequestParam(defaultValue = "off") String remember_me, HttpServletResponse res) {
		
		System.out.println("remember_me : " + remember_me);
		
		Session sesi = sf.openSession();
		try {
			Users lus = (Users) sesi.createQuery("from Users where usermail =? and userpassword =? ")
					.setParameter(0, us.getUsermail())
					.setParameter(1, us.getUserpassword())
					.list()
					.get(0);
			
			// kullnýcý var ve giriþ baþarýlý
			if(remember_me.equals("on")) {
				Cookie cookie = new Cookie("user_remember", Password.sifrele(""+lus.getUserid(), 4) );
				cookie.setMaxAge(60 * 60 * 24);
				res.addCookie(cookie);
				
			}
			return "redirect:/";
			
		} catch (Exception e) {
			System.out.println("Böyle bir kullanýcý yok");
		}
		return "redirect:/login";
	}
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(HttpServletRequest req,Users us) {
		IncludeController.page = "/login";
		// çerez kontrol saðlanýyor
				if (req.getCookies() != null) {
					Cookie[] cookies = req.getCookies();
					for (Cookie item : cookies) {
						if(item.getName().equals("user_remember")) {
							String userid =  Password.sifreCoz(item.getValue(), 4) ;
							System.out.println("Cookie Uid : " + userid);
							req.getSession().setAttribute("user_id", userid);
							return "redirect:/";
							
						}
					}
				}
				return "site/login";
	}
}

