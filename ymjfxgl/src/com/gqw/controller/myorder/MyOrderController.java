package com.gqw.controller.myorder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gqw.bean.Order;
import com.gqw.service.order.MyOrderServiceImpl;
@Controller
public class MyOrderController {
	@Autowired
	private MyOrderServiceImpl myOrderServiceImpl;
	@RequestMapping("insertOrder")
	public String insertOrder(String ps1,String nickName,String address,String tels,String about){
		Order order=new Order();
		order.setOrdernumber("");
		Boolean bool=myOrderServiceImpl.insertOrder(order);
		if(bool){
			System.out.println("���ݲ���ɹ�");
			return "commodityList";
		}else{
			return "";
		}
	}
}