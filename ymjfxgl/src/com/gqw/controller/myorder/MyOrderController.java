package com.gqw.controller.myorder;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
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
import com.gqw.util.PublicParameters;
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
		Date day1=new Date();    
		 SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String now=df1.format(day1);
		order.setOrdertime(PublicParameters.StringToDate(now,"yyyy-MM-dd HH:mm:ss"));
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
	public String conditionOrderPageQuery(HttpServletRequest request,Map<String,Object> map,int start,int pageSize,
			int loginid,String ordernumber,String status,String date1,String date2){
		Date date11=null;
		Date date22=null;
		if(date1!=null && (Object)date1!=""){
			PublicParameters.date1=PublicParameters.StringToDate(date1,"yyyy-MM-dd");
			PublicParameters.date2=PublicParameters.StringToDate(date2,"yyyy-MM-dd");
		}else{
			PublicParameters.date1=null;
			PublicParameters.date2=null;
		}
		
		if((Object)date1==""){
			date1=null;
			date2=null;
		}
		
		if((Object)ordernumber==""){
			ordernumber=null;
		}
		if(ordernumber!=null){
			map.put("ordernumber", ordernumber);
		}
		if(status==""){
			status=null;
		}
		if(status!=null){
			map.put("status", status);
		}
		
		if(date1!=null&&date2!=null){
			map.put("date1", date1);
			map.put("date2", date2);
		}
		List<Order> orders=new ArrayList<Order>();
			orders=myOrderServiceImpl.conditionPageOrder((start-1)*pageSize, pageSize,loginid, ordernumber, status, PublicParameters.date1, PublicParameters.date2);
		request.setAttribute("orders", orders);
		OrderPager pager=new OrderPager();
		pager.setPageIndex(start);
		pager.setPrev(start-1);
		pager.setNext(start+1);
		pager.setTotalPage(myOrderServiceImpl.countOrders()/pageSize==0?myOrderServiceImpl.countOrders()/pageSize:myOrderServiceImpl.countOrders()/pageSize+1);
		pager.setOrdernumber(ordernumber);
		pager.setStatus(status);
//		pager.setDate1(date1);
//		pager.setDate2(date2);
		map.put("pager", pager);
		return "myOrder";
	}
	
}
