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
    <title>未激活订单</title>
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
    <p>未激活订单<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">激活管理</a></li>
    <li><a href="#">未激活订单</a></li>
  </ul>



        <!--资料box-->
        <div class="data_box">

            

<div class="listing_title">
    <p>未激活订单</p>
</div>


            <div class="listing_box">
                <!--搜索-->
<form action="/Member/NoMember" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post">                    <ul class="search">
                        <li>
                            <div class="group">
                                <label class="label">订单编号:</label>

                                <input name="UserID" type="text" id="UserID" class="input" />
                            </div>
                            <div class="group">
                                <label class="label">注册日期：</label>
                                <input id="startDate" name="startDate" type="text"  class="input" onfocus="WdatePicker()" readonly="ture" />

                            </div>
                            <div class="group">
                                <label class="label">至  </label>
                                <input id="overDate" name="overDate" type="text"  class="input" onfocus="WdatePicker()" readonly="ture" />

                            </div>
                            <div class="group">
                                <input type="submit" value=" 搜 索 " class="searchbtn" />

                                    <span style="float: right">
                                        <b>电子币余额</b>：<span class="cDRed">0.0000</span>
                                    </span>
                            </div>
                        </li>
                    </ul>
</form>                <div id="ListContent" class="listing"  >
                    

    <script src="/Plugin/layer/layer.js"></script>
<script>
    function OpenMember(id, opty, opAtMoney) {
        //var ActivationNumber = prompt('请输入激活码', "")
        if (confirm("是否激活订单？")) {
            layer.load(2, { shade: [0.5, '#808080'] });
            $.post("/Member/OpenMember", { id: id, opty: opty, opAtMoney: opAtMoney }, function (data) {
                if (data != "") {
                    alert(data);
                    window.location.reload();
                    //$("#searchForm").submit();
                }
            })
        }
    }
    function DeleteMember(Obj) {
        if (confirm("是否删除订单？")) {
            var id = Obj;
            $.post("/Member/DeleteMember", { id: id }, function (data) {
                if (data == "ok") {
                    $("#searchForm").submit();
                } else {
                    alert(data);
                    $("#searchForm").submit();
                }
            })
        }
    }
</script>
<table class="ts" cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;">
    <tr>
        <th scope="col">订单编号</th>
        <th scope="col">真实姓名</th>
        <th scope="col">联系电话</th>
        
       
        <th scope="col">注册金额</th>
        <th scope="col">推荐人</th>
        <th scope="col">报单中心</th>
  
        
        <th scope="col">注册时间</th>
        <th scope="col">操作</th>
    </tr>
         <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.username }</td>
            <td>${user.truename }</td>
          
            <td>${user.phonenumber }</td>
            
            <td>${user.rengounumber*200  }</td>
            <td>${user.tuijianrennumber}</td>
            <td>${user.baodancenternumber }</td>
            <td style="line-height: 14px;"><fmt:formatDate value="${user.opentime}" pattern="yyyy-MM-dd"/></td>
            <td>正常</td>
            
        </tr>
        </c:forEach>  

</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 0 条, 1 / 0 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="0" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/Member/NoMember?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->

              
            <!-- AspNetPager V6.0.0 for VS2005 End -->


        </li>
    </ul>
</div> 



<script>
function lookPost(i){
	document.post_Form.id.value=i;
	document.post_Form.regMoney.value = $("#"+i).find("td").eq(4).text();
	document.getElementById("userID_Msg").innerHTML = $("#" + i).find("td").eq(0).text();
	document.getElementById("regMoney_Msg").innerHTML = $("#" + i).find("td").eq(4).text();
	//document.post_Form.diffMoney.value=(document.getElementById("regMoney_"+i).value*1).toFixed(2);
	document.post_Form.diffMoney.value="0.00";
	document.post_Form.diffCash.value="0.00";
	document.getElementById("post_Form").style.display="block";
	document.getElementById("js_Post").style.display = "block";
	$("#uid").val(i);
	return false;
}

function closePost(){
	document.getElementById("js_Post").style.display="none";
	document.getElementById("post_Form").style.display="none";
	return false;
}
</script>
                </div>
            </div>
            <!--end data 表格数据-->
        </div>

    </div>

</body>
</html>
