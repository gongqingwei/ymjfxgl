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
    <title>账户充值</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/WdatePicker.js"></script>
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script>
        function AfterAdd(data) {
            if (data.result == "IpsPay") {
                //window.open(data.goStr, "_blank");
                //var goStr = document.getElementById("goStr");
                //goStr.href = data.goStr;
                //goStr.click();
                // $.post(data.goStr)
                //alert(data.goStr)
                window.top.location.href = data.goStr;
            }
            else if (data.result == "ok") {
                alert(data.msg);
                window.location.reload();
            }
            else {
                alert(data.msg);
            }
        }
        //function chCert(i) {
        //    if (i == 1) {
        //        document.getElementById('Cert').style.display = '';
        //    }
        //    else {
        //        document.getElementById('Cert').style.display = 'none';
        //    }
        //}
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>账户充值<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">财务管理</a></li>
    <li><a href="#">账户充值</a></li>
  </ul>



        <!--资料box-->
        <div class="data_box">
            

<div class="listing_title">
    <p>账户充值</p>
</div>


            <div class="listing_box">
<form action="/Finance/RechargeSM" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                    <ul class="search">
                        <li>
                            
                            <div class="group" style="clear: both;">
                                    <label class="label">电子币：0.0000</label> 
                                    <label class="label">奖金币：97.2800</label> 
                                    <label class="label">种子币：598.1600</label> 
                                    <label class="label">购物积分：12.0000</label> 

                            </div>


                            

                                
                                
                            
                        </li>
                    </ul>
</form>                <form action="/Finance/Recharge" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post"> <ul class="search">
                        <li>
                            <div class="group">
                                <label class="label">充值日期：</label><input id="startDate" name="startDate" type="text" onclick="WdatePicker()"  class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <label class="label">-</label>
                                <input id="overDate" name="overDate" type="text" onclick="WdatePicker()"  class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <input name="" type="submit" class="searchbtn" value="搜 索" />
                            </div>
                        </li>
                    </ul>
</form>                <div id="ListContent" class="listing">
                    <table cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;" class="ts">
    <tr>
        <th nowrap="nowrap">充值类型</th>
        <th nowrap="nowrap">充值时间</th>
        <th nowrap="nowrap">充值金额</th>
        <th nowrap="nowrap">充值前余额</th>
        <th nowrap="nowrap">充值后余额</th>
        <th nowrap="nowrap">备注</th>
        <th nowrap="nowrap">状态</th>
        <th nowrap="nowrap">操作</th>
    </tr>

        <tr>
            <td colspan="7" align="center">抱歉,目前数据库中暂无记录显示!</td>
        </tr>
</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 0 条, 1 / 0 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="0" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/Finance/Recharge?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->

              
            <!-- AspNetPager V6.0.0 for VS2005 End -->


        </li>
    </ul>
</div> 
                </div>
            </div>
        </div>

    </div>
</body>
</html>
