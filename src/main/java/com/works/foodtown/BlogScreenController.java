package com.works.foodtown;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Blog;
@Controller
public class BlogScreenController {
SessionFactory sf = HibernateUtil.getSessionFactory();
	
	
	@RequestMapping(value = "/blogscreen", method = RequestMethod.GET)
	public String fncBlogScreen(Model model) {
		IncludeController.page = "/blogscreen";
		Session sesi=sf.openSession();
		List<Blog> blogpost=sesi.createQuery("from Blog").list();
		
		model.addAttribute("data", blogpost);
		
		return "site/blogscreen";
		
		
	}
}
