package com.g2t.tracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.g2t.tracker.dao.TaskDao;
import com.g2t.tracker.model.Task;

@Controller
public class TaskListController {
	@Autowired
	private TaskDao taskDao;
	
	
	@RequestMapping(value="/gettask", method=RequestMethod.GET)
	public ModelAndView gettask(ModelAndView model) {
		
		List<Task> tasklist = taskDao.gettask();
		model.addObject("tasklist", tasklist);
		model.setViewName("task");
		return model;
		
	}

}
