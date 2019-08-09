package com.g2t.tracker.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

@Component
@EnableScheduling
public class ScheduledTasks {
	
	private static final SimpleDateFormat dateformat = new SimpleDateFormat("HH:mm:ss");
	
	@Scheduled(cron ="0/15 * * ? * *")
	public void reportCurrenttime() {
	//System.out.println("Current Time = "+dateformat.format(new Date()));
	
	}

}
