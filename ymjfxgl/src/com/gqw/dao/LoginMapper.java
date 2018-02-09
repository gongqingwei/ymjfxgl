package com.gqw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.User;

public interface LoginMapper {
	/**
	 * 查询所有用户
	 * @param username
	 * @param password
	 * @param pwd
	 * @param thirdpwd
	 * @return
	 */
	public User login(@Param("username")String username,@Param("password")String password,@Param("pwd")String pwd,
			@Param("thirdpwd")String thirdpwd);
	/**
	 * 查询所有该id注册的账号
	 * @param id
	 * @return
	 */
	public List<User> loginById(@Param("id") int id);
	/**
	 * 注册一个用户
	 * @param user
	 * @return
	 */
	public Boolean insertOrder(User user);
	/**
	 * 个人信息
	 * @param id
	 * @return
	 */
	public User personalMessage(@Param("id")int id);
	/**
	 * 申请报单中心
	 * @param id
	 * @return
	 */
	public Boolean updateIdentity(@Param("id")int id,@Param("identity")int identity); 
}
