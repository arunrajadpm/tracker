package com.g2t.tracker.dao;

import com.g2t.tracker.model.User;

public interface UserDao {

	public int registerUser(User user);
	public String loginUser(User user);
}
