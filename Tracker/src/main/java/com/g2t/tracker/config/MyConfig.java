package com.g2t.tracker.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.g2t.tracker.dao.RemainderCountDao;
import com.g2t.tracker.dao.RemainderCountDaoImpl;
import com.g2t.tracker.dao.RemainderDao;
import com.g2t.tracker.dao.TaskDao;
import com.g2t.tracker.dao.TaskDaoImpl;
import com.g2t.tracker.dao.UserDao;
import com.g2t.tracker.dao.UserDaoImpl;







@Configuration
@EnableWebMvc
@ComponentScan({"com.g2t.tracker.controller"})
public class MyConfig extends WebMvcConfigurerAdapter {
	@Bean
	public InternalResourceViewResolver viewresolver() {
		InternalResourceViewResolver vr = new InternalResourceViewResolver();
		vr.setPrefix("/");
		vr.setSuffix(".jsp");
		return vr;
		
	}
	
	@Bean
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/tracker");
		ds.setUsername("root");
		ds.setPassword("");

		return ds;
	}
	 
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/assets/**").addResourceLocations("/assets/");
	}
	@Bean
	public UserDao getUserDao() {
		return new UserDaoImpl (getDataSource());
	}
   @Bean
   public TaskDao getTaskDao() {
	   return new TaskDaoImpl (getDataSource());
   }
   @Bean
   public RemainderDao getRemaiderDao() {
	   return new RemainderDao (getDataSource());
   }
   @Bean
   public RemainderCountDao getRemainderCountDao() {
	   return new RemainderCountDaoImpl(getDataSource());
   }
	@Bean
	public MultipartResolver multipartResolver() {
		return new CommonsMultipartResolver();
	}
	

	

}

