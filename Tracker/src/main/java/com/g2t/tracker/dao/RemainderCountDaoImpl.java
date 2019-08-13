package com.g2t.tracker.dao;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.g2t.tracker.model.Logindata;
import com.g2t.tracker.model.RemainderCounter;
import com.g2t.tracker.model.User;

@Component
public class RemainderCountDaoImpl implements RemainderCountDao {
RemainderCounter remainderCounter = new RemainderCounter();
 
 private JdbcTemplate jdbcTemplate;

	public RemainderCountDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int getRemainderCount(String id) {
	
		String sql = "SELECT COUNT(task) AS remainder FROM task WHERE userid="+id+" AND status=0";
		 return jdbcTemplate.queryForObject(sql, Integer.class);
		 
	}

}
