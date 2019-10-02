package com.works.foodtown;

import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Contactus;

@Controller
public class ContactUsController {
	SessionFactory sf=HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String fncContact() {
		IncludeController.page = "/contactus";
		
		return "site/contactus";
	}
	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String fncContactUs(Contactus us) {
		IncludeController.page = "/contactus";
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			// ekleme başarılı
		}
		tr.commit();
		return "redirect:/contactus";
	}
}
