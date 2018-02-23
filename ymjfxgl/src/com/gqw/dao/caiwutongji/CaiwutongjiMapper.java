package com.gqw.dao.caiwutongji;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Caiwutongji;
import com.gqw.bean.Integral;

public interface CaiwutongjiMapper {

	/**
	 * 分页查询所有财务统计记录
	 * @param loginid
	 * @param type
	 * @param start
	 * @param pageSize
	 * @param date1
	 * @param date2
	 * @return
	 */
	public List<Caiwutongji> select_caiwutongji(@Param("loginid")int loginid,@Param("type")String type,
			@Param("start")int start,@Param("pageSize")int pageSize,
			@Param("date1")Date date1,@Param("date2")Date date2);
	/**
	 * 查看当前用户的详细账户信息
	 * @param integral
	 * @return
	 */
	public Integral select_integral(@Param("loginid")int loginid);
}
