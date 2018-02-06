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
    <title>升级管理</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/WdatePicker.js"></script>
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script src="style/j/layer.js"></script>
<script type="text/javascript" src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866"></script>
    <script>
        //提交后返回结果
        function AfterAdd(result) {

            if (result == "ok") {
                alert("操作成功");
                window.location.reload();
            }
            else {
                alert(result);
                window.location.reload();
            }
        }
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>复投与分红列表<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">业务管理</a></li>
    <li><a href="#">复投与分红列表</a></li>
  </ul>


        <!--资料box-->
        <div class="data_box">

            

<div class="listing_title">
    <p>复投与分红列表</p>
</div>


            <div class="listing_box">
                <ul class="search">
                    <li>
<form action="insertFenhongOrder" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSetsel" method="post">                            <div class="group">
                                
                                    <label class="label">电子币：0.0000</label> 
                                    <label class="label">奖金币：97.2800</label> 
                                    <label class="label">种子币：598.1600</label> 
                                    <label class="label">购物积分：12.0000</label> 

                                    <label class="label">电子币复投封顶:30000.00</label>
                                    <label class="label">种子币复投封顶:30000.00</label>
                            </div>
                            <div class="group" style="clear: both;">
                                <label class="label">复投币种:</label>
                                <select name="RvClass" id="RvClass" class="selectbox" >
                                    <option value="1">电子币</option>
                                    <option value="2">种子币</option>
                                </select>
                            </div>
                            <div class="group" >
                                <label class="label">复投单数：</label>
                                <input type="text" name="num" id="num" class="input" />
                            </div>
                            <div class="group">
                                <input type="submit" onclick="layer.load(1, { shade: [0.5, '#808080'] }); return true" class="searchbtn" value="提交">
                            </div>
</form>                    </li>
                </ul>


<form action="/member/UpgradeMan" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post">                    <ul class="search">
                        <li>
                            <div class="group">
                                <label class="label">

                                    订单编号：
                                </label>
                                <input name="UserID" type="text" value="" class="input" />
                            </div>
                            <div class="group">
                                <label class="label">日期：</label><input id="startDate" name="startDate" type="text" onclick="WdatePicker()" class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <label class="label">至</label>
                                <input id="overDate" name="overDate" type="text" onclick="WdatePicker()" class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <input name="" type="submit" class="searchbtn" value="搜 索" />
                            </div>
                        </li>
                    </ul>
</form>
                <div id="ListContent" class="listing">
                    <table cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;" class="ts">

    <tr>
        <th align="center">编号</th>
        <th align="center">订单编号</th>
        
        <th align="center">复投单数</th>
        <th align="center">复投金额</th>
        <th align="center">总分红</th>
        <th align="center">实际分红</th>
        <th align="center">时间</th>
        <th align="center">状态</th>
    </tr>
        <tr>
            <td align="center">txp88888-1</td>
            <td align="center">txp88888</td>
            <td align="center">3</td>
            <td align="center">1800.00</td>
            <td align="center">1240.62</td>
            <td align="center">1166.19</td>
            <td align="center">2017/11/21 20:04:31</td>
            <td align="center">分红中</td>
        </tr>

</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 1 条, 1 / 1 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="1" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/member/UpgradeMan?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;1&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
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
