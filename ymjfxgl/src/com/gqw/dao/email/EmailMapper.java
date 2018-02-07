package com.gqw.dao.email;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Email;

public interface EmailMapper {
	/**
	 * 插入一条数据
	 * @param email
	 * @return
	 */
	public Boolean createEmail(Email email);
	/**
	 * 分页条件查询
	 * @param start
	 * @param pageSize
	 * @param loginId
	 * @param status
	 * @param date1
	 * @param date2
	 * @return
	 */
	public List<Email> receiveEmail(@Param("start")int start,
			@Param("pageSize")int pageSize,@Param("loginId")String loginId,@Param("addressee")String addressee,
			@Param("status")String status,@Param("date1")Date date1,
			@Param("date2")Date date2);
	/**
	 * 删除邮件
	 * @param id
	 * @return
	 */
	public Boolean deleteEmail(@Param("id")String id);
}
