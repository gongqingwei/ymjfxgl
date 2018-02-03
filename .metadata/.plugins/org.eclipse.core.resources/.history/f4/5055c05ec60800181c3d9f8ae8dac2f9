<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <meta name="viewport" content="width=device-width" />
    <link href="style/css/style.css" rel="stylesheet" />
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <title>修改密码</title>
    <script>
        //提交后返回结果
        function AfterAdd(result) {
            if (result == "ok") {
                alert("修改成功！");
                window.location.reload();
            }
            else {
                alert(result);
            }
        }
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>修改密码<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">个人信息</a></li>
    <li><a href="#">修改密码</a></li>
  </ul>



        <!--资料box-->
        <div class="data_box">
<form action="/UserInfo/RevisePwd" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="t2">
                                        <tr>
                                            <td height="30" align="right" class="leftTD">旧登录密码：</td>
                                            <td>
                                                <input name="oldPassword" id="oldPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">新登录密码：</td>
                                            <td>
                                                <input name="newPassword" id="newPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">确认新密码：</td>
                                            <td>
                                                <input name="newPassword1" id="newPassword1" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" />
                                                               </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input name="p" type="hidden" value="1" />
                                                <input name="button" type="submit" class="searchbtn" id="button" value="修改登录密码">
                                                
                                                <span class="cRed">提示：以上各项参数必填</span>
                                            </td>
                                        </tr>
                                    </table>
</form>                                <form action="/UserInfo/RevisePwd" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="t2">
                                        <tr>
                                            <td class="leftTD" height="30" align="right">旧二级密码：</td>
                                            <td>
                                                <input name="oldPassword" id="oldPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">新二级密码：</td>
                                            <td>
                                                <input name="newPassword" id="newPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">确认新密码：</td>
                                            <td>
                                                <input name="newPassword1" id="newPassword1" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" />
                                               </td>
                                        </tr>
                                        
                                        <tr>
                                            <td></td>
                                            <td>
                                                 <input name="p" type="hidden" value="2" />
                                                <input name="button" type="submit" class="searchbtn" id="button" value="修改二级密码">
                                                
                                                <span class="cRed">提示：以上各项参数必填</span>
                                            </td>
                                        </tr>
                                    </table>
</form>                                <form action="/UserInfo/RevisePwd" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="t2">
                                        <tr>
                                            <td class="leftTD" height="30" align="right">旧三级密码：</td>
                                            <td>
                                                <input name="oldPassword" id="oldPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">新三级密码：</td>
                                            <td>
                                                <input name="newPassword" id="newPassword" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td height="30" align="right">确认新密码：</td>
                                            <td>
                                                <input name="newPassword1" id="newPassword1" type="password" size="25" maxlength="15" style="margin: 0px 4px;" value="" />
                                                </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input name="p" type="hidden" value="3" />
                                                <input name="button" type="submit" class="searchbtn" id="button" value="修改三级密码">
                                                
                                                <span class="cRed">提示：以上各项参数必填</span>
                                            </td>
                                        </tr>
                                    </table>
</form>                                
                            </div>
                        </div>
</body>
</html>
