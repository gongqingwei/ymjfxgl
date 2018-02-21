package com.gqw.dao.tixian;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Integral;
import com.gqw.bean.Tixian;

public interface TixianMapper {
	/**
	 * 创建一条提现记录
	 * @param tixian
	 * @return
	 */
	public Boolean tixian(Tixian tixian);
	
	/**
	 * 查询该用户所有的转账记录
	 * @param loginid
	 * @return
	 */
	public List<Tixian> select_tixian(@Param("start")int start,
			@Param("pageSize")int pageSize,@Param("loginid")int loginid,
			@Param("date1")Date date1,
			@Param("date2")Date date2);
	/**
	 * 查看当前用户的奖金币
	 * @param loginid
	 * @return
	 */
	public Float select_jiangjinbi(@Param("loginid")int loginid); 
	/**
	 * 查看当前用户的详细账户信息
	 * @param integral
	 * @return
	 */
	public Integral select_integral(@Param("loginid")int loginid);
	/**
	 * 更新当前用户的奖金币数量
	 * @param loginid
	 * @param jiangjinbi
	 * @return
	 */
	public Boolean update_jiangjinbi(@Param("loginid")int loginid,@Param("jiangjinbi")float jiangjinbi);
}
