package com.gqw.service.order;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Order;

public interface MyOrderService {
	public Boolean insertOrder(@Param("Order")Order order);
}