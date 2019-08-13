package com.g2t.tracker.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.g2t.tracker.dao.RemainderCountDao;
import com.g2t.tracker.model.Logindata;
import com.g2t.tracker.model.RemainderCounter;
import com.g2t.tracker.model.User;

import sun.java2d.opengl.OGLDrawImage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;



@Controller
public class RemainderCountController {
	
	@Autowired
	public RemainderCountDao remainderCountDao;
	

	@RequestMapping( value ="/check", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<String> add(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
	 
	  
		String id = (String) request.getSession().getAttribute("UserId");
		
		
		int count = remainderCountDao.getRemainderCount(id);
		
		return ResponseEntity.ok(String.valueOf(count));
	}




}