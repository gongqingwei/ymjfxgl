package com.gqw.service.fenhong;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Integral;
import com.gqw.bean.JifendianzibiOrder;
import com.gqw.bean.Order;

public interface FenhongService {
	public Boolean insertJifendianzibi(JifendianzibiOrder jifendianzibiOrder);
	public List<JifendianzibiOrder> conditionPageOrder(@Param("start")int start,@Param("pageSize")int pageSize,@Param("loginId")String loginId,@Param("number")String number,@Param("date1")Date date1,@Param("date2")Date date2);
	public int countsOrder(int loginid);
	public String selectLogin_username(String loginid);
	public Integral selectMycount(@Param("loginid")String loginid);
}
