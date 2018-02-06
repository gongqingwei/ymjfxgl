package com.gqw.controller.myorder;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gqw.bean.Order;
import com.gqw.bean.OrderPager;
import com.gqw.bean.Pager;
import com.gqw.service.order.MyOrderServiceImpl;
@Controller
public class MyOrderController {
	@Autowired
	private MyOrderServiceImpl myOrderServiceImpl;
	@RequestMapping("insertOrder")
	public String insertOrder(String loginid,String ps1,String nickName,String address,String tels,String about,String commodityName,float commodityPrice){
		Order order=new Order();
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String a=df.format(day);
		SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
		String today=df1.format(day);
		int five=(int) (Math.random()*90000+10000);
		String b=String.valueOf(five);
		StringBuffer sb=new StringBuffer();
		sb.append(a).append(b);
		String ordernumber=sb.toString();
		order.setOrdernumber(ordernumber);
		order.setName(commodityName);
		order.setNumbers(Integer.parseInt(ps1));
		Float money=commodityPrice*Integer.parseInt(ps1);
		order.setMoney(money);
		order.setOrdertime(today);
		order.setShouhuoren(nickName);
		order.setShouhuoaddress(address);
		order.setPhonenumber(tels);
		String status="未发货";
		order.setStatus(status);
		order.setLoginid(loginid);
		Boolean bool=myOrderServiceImpl.insertOrder(order);
		if(bool){
			System.out.println("success");
			return "commodityList";
		}else{
			System.out.println("fail");
			return "commodityList";
		}
	}
	@RequestMapping("conditionOrderPageQuery")
	public String conditionOrderPageQuery(HttpServletRequest request,Map<String,Object> map,int start,int pageSize,String loginid,String ordernumber,String status,String date1,String date2){

		if(ordernumber!=null){
			map.put("ordernumber", ordernumber);
		}
		if(status!=null){
			map.put("status", status);
		}
		if(date1!=null&&date2!=null){
			map.put("date1", date1);
			map.put("date2", date2);
		}
		List<Order> orders=myOrderServiceImpl.conditionPageOrder((start-1)*pageSize, pageSize,loginid, ordernumber, status, date1, date2);
		request.setAttribute("orders", orders);
		OrderPager pager=new OrderPager();
		pager.setPageIndex(start);
		pager.setPrev(start-1);
		pager.setNext(start+1);
		pager.setTotalPage(myOrderServiceImpl.countOrders()/pageSize==0?myOrderServiceImpl.countOrders()/pageSize:myOrderServiceImpl.countOrders()/pageSize+1);
		pager.setOrdernumber(ordernumber);
		pager.setStatus(status);
//		pager.setDate1(Integer.parseInt(date1));
//		pager.setDate2(Integer.parseInt(date2));
		map.put("pager", pager);
		return "myOrder";
	}
}
