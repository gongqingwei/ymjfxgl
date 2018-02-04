package com.gqw.dao;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.User;

public interface LoginMapper {
	public User login(@Param("username")String username,@Param("password")String password,@Param("pwd")String pwd,@Param("thirdpwd")String thirdpwd);

}
