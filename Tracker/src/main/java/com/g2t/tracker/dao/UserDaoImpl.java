package com.g2t.tracker.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.g2t.tracker.controller.RemainderCountController;
import com.g2t.tracker.model.User;
@Component
public class UserDaoImpl implements UserDao
{
	public JdbcTemplate jdbcTemplate;
	
	public UserDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int registerUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String loginUser(User user) {
		String sql = "SELECT id FROM user WHERE username=? AND password=? AND role=?";
try {
			
			String userId = jdbcTemplate.queryForObject(sql, new Object[] {
					user.getUsername(), user.getPassword(),user.getRole() }, String.class);
            RemainderCountController remain = new RemainderCountController();
            remain.getId(Integer.parseInt(userId));
            
            System.out.println(userId);
			
			return userId;
			
		} catch (Exception e) {
			return null;
		}
		
	}

}
