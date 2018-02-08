package com.gqw.service.order;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gqw.bean.Order;
import com.gqw.dao.order.MyOrderMapper;
@Service
@Transactional
public class MyOrderServiceImpl implements MyOrderService{
	@Autowired
	private MyOrderMapper myorder;
	public Boolean insertOrder(Order order) {
		// TODO Auto-generated method stub
		return myorder.insertOrder(order);
	}
	public List<Order> conditionPageOrder(@Param("start")int start,@Param("pageSize")int pageSize,
			@Param("loginId")int loginId,@Param("ordernumber")String ordernumber,@Param("status")String status,
			@Param("date1")Date date1,@Param("date2")Date date2) {
		// TODO Auto-generated method stub
		return myorder.conditionPageOrder(start, pageSize, loginId, ordernumber, status, date1, date2);
	}
	public int countOrders() {
		// TODO Auto-generated method stub
		return myorder.countOrders();
	}

}
