package com.gqw.dao.order;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Order;

public interface MyOrderMapper {
	/**
	 * ����һ������
	 * @param order
	 * @return
	 */
	public Boolean insertOrder(@Param("Order")Order order);
}
