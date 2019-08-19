package com.g2t.tracker.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.g2t.tracker.model.Estimation;

public class EstimationDaoImpl implements EstimationDao{
 
	private JdbcTemplate jdbcTemplate;
	
	public EstimationDaoImpl (DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int addEstimation(Estimation estimation) {
		String sql = "INSERT INTO estimation (name,owner,ba,created,dc1,dc2,dc3,val_web,val_and,val_ios,val_tab,val_api,val_mac,expected,assignto,status) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			int counter = jdbcTemplate.update(sql, new Object[]{estimation.getName(),estimation.getOwner(),estimation.getBa(),estimation.getCreated_dt(),estimation.getDc1(),estimation.getDc2(),estimation.getDc3(),estimation.getVal_web(),estimation.getVal_and(),estimation.getVal_ios(),estimation.getVal_tab(),estimation.getVal_api(),estimation.getVal_mac(),estimation.getExpected(),estimation.getAssignto(),estimation.getStatus()});
			return counter;
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
