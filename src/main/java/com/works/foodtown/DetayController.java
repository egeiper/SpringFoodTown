package com.works.foodtown;

import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestParam;

import model.Cart;
import model.Contactus;
import model.Foods;
import util.Password;

@Controller
public class DetayController {
	DB db=new DB();
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value="detay/{foodid}", method=RequestMethod.GET)
	public String PostGit(@PathVariable int foodid,Model model) {
		IncludeController.page = "detay";
		Session sesi=sf.openSession();
		Foods fooddata=sesi.load(Foods.class,foodid);
		model.addAttribute("FoodGoster",FoodGoster(foodid));

		
		return "site/detay";
	}
	@RequestMapping(value = "/detay/{foodid}", method = RequestMethod.POST)
	public String fncContactUs(@PathVariable int foodid, Cart us,HttpServletRequest req,Model model) {
		IncludeController.page = "/detay";
		Session sesi = sf.openSession();
		Foods fooddata=sesi.load(Foods.class,foodid);
		model.addAttribute("FoodGoster",FoodGoster(foodid));
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			// ekleme baþarýlý
		}
		tr.commit();
		
	
		
		
	
		if (req.getCookies() != null) {
			Cookie[] cookies = req.getCookies();
			for (Cookie item : cookies) {
				if(item.getName().equals("user_remember")) {
					String userid =  Password.sifreCoz(item.getValue(), 4) ;
					System.out.println("Cookie Uid : " + userid);
					req.getSession().setAttribute("user_id", userid);
					return "site/detay";
					
				}
			}
		}
		return  "redirect:/login";
	}

	public Foods FoodGoster(int foodid) {
		Session sesi=sf.openSession();
		Transaction tr=sesi.beginTransaction();
		Foods fooddata=sesi.load(Foods.class, foodid);
		return fooddata;
	}
	
	
}