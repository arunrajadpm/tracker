package com.g2t.tracker.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class RemainderDao {
	private JdbcTemplate jdbcTemplate;

	public RemainderDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public int remainder() {
		String sql =" UPDATE task SET status=1 WHERE userid=1 ";
		return jdbcTemplate.update(sql);
		
	}

}
