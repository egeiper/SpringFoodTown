package com.works.foodtown;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.foodtown.HibernateUtil;

import model.Blog;



@Controller
public class BlogPostController {
	SessionFactory sf=HibernateUtil.getSessionFactory();
	@RequestMapping(value = "post", method = RequestMethod.GET)
	public String fncContact() {
		
		IncludeController.page = "post";
		return "site/post";
	}
	@RequestMapping(value="post/{postid}", method=RequestMethod.GET)
	public String PostGit(@PathVariable int postid,Model model) {
		
		Session sesi=sf.openSession();
		Blog post=sesi.load(Blog.class, postid);
		model.addAttribute("PostGoster",PostGoster(postid));
		return "site/post";
	}
	public Blog PostGoster(int postid) {
		Session sesi=sf.openSession();
		Transaction tr=sesi.beginTransaction();
		Blog post=sesi.load(Blog.class, postid);
		return post;
	}
}
