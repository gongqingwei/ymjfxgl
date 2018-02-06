package com.gqw.service.order;

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

}
