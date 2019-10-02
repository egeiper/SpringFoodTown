package com.works.foodtown;

import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Foods;
@Controller
public class MenuController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String fncMenu(Model model) {
		IncludeController.page = "/menu";
		Session sesi=sf.openSession();
		List<Foods> foods=sesi.createQuery("from Foods").list();
		model.addAttribute("fooddata",foods);
		return "site/menu";
	}
	
}
