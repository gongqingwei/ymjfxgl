package com.gqw.service.order;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Order;

public interface MyOrderService {
	public Boolean insertOrder(Order order);
	public List<Order> conditionPageOrder(@Param("start")int start,@Param("pageSize")int pageSize,
			@Param("loginId")int loginId,@Param("ordernumber")String ordernumber,@Param("status")String status,
			@Param("date1")Date date1,@Param("date2")Date date2);
	public int countOrders();
}
