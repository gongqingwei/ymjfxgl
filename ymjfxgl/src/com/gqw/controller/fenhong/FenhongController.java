package com.gqw.controller.fenhong;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gqw.bean.JifendianzibiOrder;
import com.gqw.bean.User;
import com.gqw.dao.LoginMapper;
import com.gqw.service.fenhong.FenhongServiceImpl;
import com.gqw.util.PublicParameters;
@Controller
public class FenhongController {
	@Autowired
	private FenhongServiceImpl fenhongServiceImpl;
	@Autowired
	private LoginMapper loginMapper;
	 @RequestMapping("reinvestmentAndBonusList")
	 public String yanzhengreinvestmentAndBonusList(Map<String,Object> map,HttpServletRequest request,String username,String password,String pwd,String thirdpwd,int start,int pageSize,String loginId,String ordernumber,Date date1,Date date2){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 if((Object)start==null){
				 start=1;
				 pageSize=9;
			 }
			 loginId=String.valueOf(PublicParameters.id);
			 
			 List<JifendianzibiOrder> fenhongOrders=fenhongServiceImpl.conditionPageOrder(start, pageSize, loginId, ordernumber, date1, date2);
			 map.put("ordernumber", fenhongServiceImpl.selectLogin_username(loginId));
			 map.put("fenhongOrders", fenhongOrders);
			 return "reinvestmentAndBonusList";
		 }else{
			 request.setAttribute("jspName", "reinvestmentAndBonusList");
			 return "secondPassword"; 
		 }
	 }
	 @RequestMapping("insertFenhongOrder")
	 public String insertFenhongOrder(String RvClass,int num){
		 JifendianzibiOrder fenhongOrder=new JifendianzibiOrder();
		 String number=fenhongServiceImpl.selectLogin_username(String.valueOf(PublicParameters.id));
		 fenhongOrder.setOrdernumber(number);
		 StringBuilder a=new StringBuilder(number);
		 a.append("-");
		 a.append(PublicParameters.fenhongNumber);
		 PublicParameters.fenhongNumber++;
		 fenhongOrder.setNumber(a.toString());
		 fenhongOrder.setFutounumber(num);
		 fenhongOrder.setFutoumoney(100*num);
		 fenhongOrder.setAllfenhong(100*num);
		 fenhongOrder.setTruefenhong(90*num);
//		 Date day=new Date();    
//		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		 String now=df.format(day);
		 fenhongOrder.setTime(new Date());
		 fenhongOrder.setStatus("分红中");
		 Boolean bool=fenhongServiceImpl.insertJifendianzibi(fenhongOrder);
		 return "reinvestmentAndBonusList";
	 }
}