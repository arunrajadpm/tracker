package com.g2t.tracker.controller;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.g2t.tracker.dao.RemainderDao;

@Controller
public class TaskRemainderClearController {
	
    @Autowired
    RemainderDao remainderDao;
	
	@RequestMapping(value="/clearRemainder", method=RequestMethod.GET)
	public ModelAndView clearRemainder(ModelAndView model) {
		
		remainderDao.remainder();
	
		
		
		
		  
		  return new ModelAndView("redirect:/gettask");
		
		
		
		
		
	}
}
