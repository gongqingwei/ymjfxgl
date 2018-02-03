package com.gqw.dao;

import com.gqw.bean.User;

public interface LoginMapper {
	public User login(String username,String password);
}
