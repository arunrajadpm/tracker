package com.g2t.tracker.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;
import org.springframework.jdbc.core.RowMapper;

import com.g2t.tracker.model.Task;

@Component
public class TaskDaoImpl  implements TaskDao {

	private JdbcTemplate jdbcTemp;
	
	public TaskDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
		
	}
	@Override
	public List<Task> gettask() {
		List<Task> list = jdbcTemp.query("SELECT * FROM task",new RowMapper<Task>() {

			@Override
			public Task mapRow(ResultSet rs, int rowNum) throws SQLException {
				Task task = new Task();
				task.setId(rs.getInt("id"));
				task.setUserid(rs.getInt("userid"));
				task.setTaskdetails(rs.getString("task"));
				task.setStatus(rs.getInt("status"));
				task.setApprove(rs.getInt("approve"));
				
				return task;
			}
			
		});
		return list;
	}

}
