package com.gqw.dao.jiangjinmingxi;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Jiangjinmingxi;

public interface JiangjinmingxiMapper {
	/**
	 * 分页查询所有的奖金明细
	 * @param loginid
	 * @return
	 */
	public List<Jiangjinmingxi> select_jiangjinmingxi(@Param("loginid")int loginid,@Param("type")String type,
			@Param("shunxu")String shunxu,@Param("start")int start,@Param("pageSize")int pageSize,
			@Param("date1")Date date1,@Param("date2")Date date2);
}
