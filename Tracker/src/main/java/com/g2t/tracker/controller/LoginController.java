package com.g2t.tracker.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.g2t.tracker.dao.UserDao;
import com.g2t.tracker.model.User;

@Controller
public class LoginController {
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("role") String role, HttpServletResponse res,HttpServletRequest req, HttpSession session) {

		ModelAndView mv = new ModelAndView();
      
		User user = new User();
		String rl = role.trim();
	
		user.setUsername(username);
		user.setPassword(password);
		user.setRole(rl);
		
		
		

		String validus = userDao.loginUser(user);
		
		
		
		
		
		mv.addObject("username", username);
		

		if (validus != null) {
			addUserInSession(user, session);
			
			switch (rl) {
			
			case "Admin":
				
				mv.setViewName("dashboard");	
				break;
			case "tech":
				
				mv.setViewName("mainTech");	
				break;
			
			}
		
			
		} else {
           
			mv.addObject("msg", "Invalid Credentials.");
			mv.setViewName("login");
			
		}
		
	    
		
		return mv;

	}
	
	
		

	private void addUserInSession (User u, HttpSession session) {
		session.setAttribute("user", u);
		session.setAttribute("UserName", u.getName());
		
		
	}

}
