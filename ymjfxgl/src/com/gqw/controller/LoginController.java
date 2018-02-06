package com.gqw.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gqw.bean.User;
import com.gqw.dao.LoginMapper;
import com.gqw.util.PublicParameters;

@Controller
public class LoginController {
	private String code;
//	private static String myUsername;
//	private static String myPassword;
	
	@Autowired
	private LoginMapper loginMapper;
	@RequestMapping("login")
	public String isLogin(Map map,String username,String password,String user_input_verifyCode,String pwd,String thirdpwd){
		User user=loginMapper.login(username,password,pwd,thirdpwd);
		if(user==null){
			System.out.println("�û�������������");
			return "index";
		}else if(code==null){
			System.out.println("��֤��δ���");
			return "index";
		}else if(!code.equals(user_input_verifyCode)){
			System.out.println("��֤�����");
			return "index";
		}else{
			PublicParameters.id=Integer.parseInt(user.getId());
			PublicParameters.username=user.getUsername();
			PublicParameters.password=user.getPassword();
			if(user.getSeondpassword()!=null){				
				PublicParameters.seondpassword=user.getSeondpassword();
			}
			if(user.getThirdpassword()!=null){
				PublicParameters.thirdpassword=user.getThirdpassword();
			}
			if((Object)user.getRengounumber()!=null){
				PublicParameters.rengounumber=user.getRengounumber();
			}
			if((Object)user.getRengounumber()!=null){
				PublicParameters.rengounumber=user.getRengounumber();
			}
			if(user.getTuijianrennumber()!=null){
				PublicParameters.tuijianrennumber=user.getTuijianrennumber();
			}
			if(user.getBaodancenternumber()!=null){
				PublicParameters.baodancenternumber=user.getBaodancenternumber();
			}
			if(user.getTruename()!=null){
				PublicParameters.truename=user.getTruename();
			}
			if(user.getPhonenumber()!=null){
				PublicParameters.phonenumber=user.getPhonenumber();
			}
			if(user.getShenfenzhengnumber()!=null){
				PublicParameters.shenfenzhengnumber=user.getShenfenzhengnumber();
			}
			if(user.getAdress()!=null){
				PublicParameters.adress=user.getAdress();
			}
			if(user.getBankmessage()!=null){
				PublicParameters.bankmessage=user.getBankmessage();
			}
			if(user.getBankzhihang()!=null){
				PublicParameters.bankzhihang=user.getBankzhihang();
			}
			if(user.getBankfenlichu()!=null){
				PublicParameters.bankfenlichu=user.getBankfenlichu();
			}
			if(user.getKaihuname()!=null){
				PublicParameters.kaihuname=user.getKaihuname();
			}
			if(user.getBanknumber()!=null){
				PublicParameters.banknumber=user.getBanknumber();
			}
			if((Object)user.getIdentity()!=null){
				PublicParameters.identity=user.getIdentity();
			}
			map.put("user", user);
			System.out.println("user:"+user.getUsername());
			System.out.println("��ֵ��"+username);
			user_input_verifyCode="";
			code="";
			return "main";
		}
	}
	
	@RequestMapping("registerOrder")
	public String registerOrder(String UserID,String password,String passopen,String passencry,String regNum,String reName,String shopNumber,String userName,String userTels,String userCode,String userAddress,String bankName,String bankBranch,String bankAddress,String bankUser,String bankCard){
		
		User user=new User();
		user.setUsername(UserID);
		user.setPassword(password);
		user.setSeondpassword(passopen);
		user.setThirdpassword(passencry);
		user.setRengounumber(Integer.parseInt(regNum));
		user.setTuijianrennumber(reName);
		user.setBaodancenternumber(shopNumber);
		user.setTruename(userName);
		user.setPhonenumber(userTels);
		user.setShenfenzhengnumber(userCode);
		user.setAdress(userAddress);
		user.setBankmessage(bankName);
		user.setBankzhihang(bankBranch);
		user.setBankfenlichu(bankAddress);
		user.setKaihuname(bankUser);
		user.setBanknumber(bankCard);
		
		Boolean bool=loginMapper.insertOrder(user);
		if(bool){
			System.out.println("������ݳɹ�");
			return "commodityList";
		}else{
			return "registeredOrder";
		}
	}
	
	@RequestMapping("/getVerifyCode")  
    public void generate(HttpServletResponse response, HttpSession session) {  
        ByteArrayOutputStream output = new ByteArrayOutputStream();  
        String verifyCodeValue = drawImg(output);  
  
        session.setAttribute("verifyCodeValue", verifyCodeValue);  
  
        try {  
            ServletOutputStream out = response.getOutputStream();  
            output.writeTo(out);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
	 private String drawImg(ByteArrayOutputStream output) {  
	        code = "";  
	        // ������4���ַ�  
	        for (int i = 0; i < 4; i++) {  
	            code += randomChar();  
	        }  
	        int width = 70;  
	        int height = 25;  
	        BufferedImage bi = new BufferedImage(width, height,  
	                BufferedImage.TYPE_3BYTE_BGR);  
	        Font font = new Font("Times New Roman", Font.PLAIN, 20);  
	        // ����Graphics2D�滭��֤��  
	        Graphics2D g = bi.createGraphics();  
	        g.setFont(font);  
	        Color color = new Color(66, 2, 82);  
	        g.setColor(color);  
	        g.setBackground(new Color(226, 226, 240));  
	        g.clearRect(0, 0, width, height);  
	        FontRenderContext context = g.getFontRenderContext();  
	        Rectangle2D bounds = font.getStringBounds(code, context);  
	        double x = (width - bounds.getWidth()) / 2;  
	        double y = (height - bounds.getHeight()) / 2;  
	        double ascent = bounds.getY();  
	        double baseY = y - ascent;  
	        g.drawString(code, (int) x, (int) baseY);  
	        g.dispose();  
	        try {  
	            ImageIO.write(bi, "jpg", output);  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        }  
	        return code;  
	    }  
	 private char randomChar() {  
	        Random r = new Random();  
	        String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";  
	        return s.charAt(r.nextInt(s.length()));  
	    } 
	
	 @RequestMapping("financeStatistics")
	 public String yanzhengfinanceStatistics(HttpServletRequest request,String username,String password,String pwd,String thirdpwd){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 return "financeStatistics";
		 }else{
			 request.setAttribute("jspName", "financeStatistics");
			 return "secondPassword"; 
		 }
	 }
	 @RequestMapping("accountWithdrawal")
	 public String yanzhengaccountWithdrawal(HttpServletRequest request,String username,String password,String pwd,String thirdpwd){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 return "accountWithdrawal";
		 }else{
			 request.setAttribute("jspName", "accountWithdrawal");
			 return "secondPassword"; 
		 }
	 }
	 @RequestMapping("accountTransfer")
	 public String yanzhengaccountTransfer(HttpServletRequest request,String username,String password,String pwd,String thirdpwd){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 return "accountTransfer";
		 }else{
			 request.setAttribute("jspName", "accountTransfer");
			 return "secondPassword"; 
		 }
	 }
	 @RequestMapping("myAccounts")
	 public String yanzhengmyAccounts(HttpServletRequest request,String username,String password,String pwd,String thirdpwd){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 return "myAccounts";
		 }else{
			 request.setAttribute("jspName", "myAccounts");
			 return "secondPassword"; 
		 }
	 }
	 @RequestMapping("changePassword")
	 public String yanzhengchangePassword(HttpServletRequest request,String username,String password,String pwd,String thirdpwd){
		 User user=loginMapper.login(PublicParameters.username, PublicParameters.password, pwd, thirdpwd);
		 if(user!=null){
			 return "changePassword";
		 }else{
			 request.setAttribute("jspName", "changePassword");
			 return "thirdPassword"; 
		 }
	 }
}
