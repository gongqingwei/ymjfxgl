<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>登陆页面</title>
    <link href="css/index.css" rel="stylesheet" />
    <script src="libs/js/jquery1.4.2_min.js"></script>
    <script src="js/jquery.unobtrusive-ajax.min.js"></script>
    <script>
        function genTimestamp() {      
        var time = new Date();      
        return time.getTime();      
    }   
     function changeImage() {  
         $('#verifyCodeImage').attr('src',  
                 'getVerifyCode?timestamp=' + genTimestamp());  
     }  
     //登录，检测验证码  
     function login_btn(){  
     	var username=document.getElementById("username").value;
			var password=document.getElementById("password").value;
			if(username==null||username==""){
				alert("用户名不能为空！");
				return false;
			}
			if(password==null||password==""){
				alert("密码不能为空");
				return false;
			};
         var user_input_verifyCode=$("#user_input_verifyCode").val();  
         $.ajax({  
                type : 'post',  
                url : "login",  
                data:{verifyCode:user_input_verifyCode},  
                //dataType : "json",  
                success : function(data) {    
                      
                },  
                error : function() {  
                    alert("查询失败");  
                }  
            });   
     }
    </script>

  </head>
  <body>
     <div class="bigBox">
        <div class="banner">
            <img src="images/login/banner.png">
        </div>
    </div>
    <div class="functionBox">
        <div class="topBox">
            <div class="top">
                <div class="logo">
                    <img src="images/login/3d.png">
                </div>
            </div>
        </div>
    </div>

<form action="login"  id="frmSet" method="post">        
<div class="login">
            <h2>
                <img src="images/login/logo.png">
                订单登录</h2>
            <ul>
                <li>
                    <label>用户名：</label>
                    <input type="text" id="username" name="username" class="zhang">
                </li>
                <li>
                    <label>密 码：</label>
                    <input type="password" id="password" name="password" class="zhang" />
                </li>
                <li>
                    <label>验证码：</label>
                    <input type="text" id="user_input_verifyCode" name="user_input_verifyCode" class="code">
                    <div class="yz">
                        <span class="code_img"> <img  
                        src="getVerifyCode"  
                        width="110" height="40" id="verifyCodeImage">  
                    </span> <span> <a id="changeVerifImageRegister"  
                        onclick="javascript:changeImage();">换一张</a>  
                    </span>
                    </div>
                </li>
                <li class="tj">
                    <input type="submit" value="提 交" class="login_btn">
                </li>
            </ul>
            <div class="foot_container">
                <img src="images/login/loginShadow.png" class="foot_shadow">
            </div>
        </div>
</form> 
  </body>
</html>
