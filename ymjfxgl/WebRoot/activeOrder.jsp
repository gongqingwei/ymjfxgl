<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <meta name="viewport" content="width=device-width" />
    <title>已激活订单</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
<script type="text/javascript" src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866"></script>
    <script src="style/js/WdatePicker.js"></script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>已激活订单<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">激活管理</a></li>
    <li><a href="#">已激活订单</a></li>
  </ul>


        <!--资料box-->
        <div class="data_box">
            

<div class="listing_title">
    <p>已激活订单</p>
</div>


            <div class="listing_box">
<form action="/Agent/IAgentList" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post">                    <ul class="search">
                        <li>
                            <div class="group">
                                <label class="label">订单编号</label>

                                <input name="UserID" type="text" id="UserID" class="input" />
                                <input name="sid" type="hidden" value="113898 " />
                            </div>
                            <div class="group">
                                <label class="label">开通日期</label>
                                <input name="startDate" type="text" maxlength="20" id="startDate" onfocus="WdatePicker()" class="input" />
                            </div>
                            <div class="group">
                                <label class="label">至</label>
                                <input name="overDate" type="text" id="overDate" onfocus="WdatePicker()" class="input" />
                            </div>
                            <div class="group">
                                <input type="submit" value=" 搜 索 " id="btnLevelUp" class="searchbtn" />
                            </div>
                        </li>
                    </ul>
</form>                <div id="ListContent" class="listing">
                    
<table class="ts" cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;">
    <tr>
        <th scope="col">订单编号</th>
        <th scope="col">真实姓名</th>
       
        <th scope="col">联系电话</th>
       
        <th scope="col">注册金额</th>
        <th scope="col">推荐人</th>
        <th scope="col">接点人</th>
        <th scope="col">开通时间</th>
        <th scope="col">状态</th>
      
    </tr>
      <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.username }</td>
            <td>${user.truename }</td>
          
            <td>${user.phonenumber }</td>
            
            <td>${user.rengounumber*200  }</td>
            <td>${user.tuijianrennumber}</td>
            <td>zgg888<br />
                  左区
            </td>
            <td style="line-height: 14px;"><fmt:formatDate value="${user.opentime}" pattern="yyyy-MM-dd"/></td>
            <td>正常</td>
            
        </tr>
        </c:forEach>
        

</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 3 条, 1 / 1 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="1" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/Agent/IAgentList?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;1&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->

              
            <!-- AspNetPager V6.0.0 for VS2005 End -->


        </li>
    </ul>
</div> 

                </div>
            </div>
            <!--end data 表格数据-->

        </div>

    </div>
</body>
</html>
