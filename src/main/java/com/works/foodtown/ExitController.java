package com.works.foodtown;

import java.sql.PreparedStatement;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import model.Cart;
@Controller
public class ExitController {
	@RequestMapping(value="/exit",method=RequestMethod.GET)
	public String fncExit( HttpServletResponse request) {
		DB db=new DB();
		
		IncludeController.page = "/exit";
		Cookie cookie = new Cookie("user_remember", "");
		cookie.setMaxAge(0);
		request.addCookie(cookie);

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
		
		return "redirect:/login";
	}
}
