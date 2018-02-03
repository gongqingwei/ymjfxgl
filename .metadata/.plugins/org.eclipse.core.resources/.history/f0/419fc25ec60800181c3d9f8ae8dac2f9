<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>账户转账</title>
    <meta name="viewport" content="width=device-width" />
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script src="style/js/WdatePicker.js"></script>
<script type="text/javascript" src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866"></script>
    <script language="JavaScript">
        //提交后返回结果
        function AfterAdd(result) {
            if (result == "ok") {
                alert("操作成功！");
                window.location.reload();
            }
            else {
                alert(result);
            }
        }
        function getReName(ReName, d) {
            var dTip = "#dTip" + d;
            $(dTip).empty().append('<font color="#999999">正在查找订单，请稍后...</font>');
            $.post("/home/getReName", { ReName: ReName }, function (data) {
                if (data.isok == "ok") {
                    $(dTip).empty().append("<font color='#669900'>" + data.msg + "</font>");
                }
                else {
                    $(dTip).empty().append("<font color='#ff0000'>" + data.msg + "</font>");
                }
            })
        }
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>账户转账<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">财务管理</a></li>
    <li><a href="#">账户转账</a></li>
  </ul>



        <!--资料box-->
        <div class="data_box">
            

<div class="listing_title">
    <p>账户转账</p>
</div>


            <div class="listing_box">
                <ul class="search">
                    <li>

<form action="/Finance/mTrSubmit" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                            <div class="group">
                                    <label class="label">电子币：0.0000</label> 
                                    <label class="label">奖金币：97.2800</label> 
                                    <label class="label">种子币：598.1600</label> 
                                    <label class="label">购物积分：12.0000</label> 

                            </div>
                            <div class="group" style="clear: both;">
                                <label class="label">转入帐号：</label>
                                <input id="acceptID" name="acceptID" type="text" class="input"  onblur="getReName(this.value,1)" > <span id="dTip1">&nbsp;</span>
                            </div>
                            <div class="group">
                                <label class="label">转帐金额：</label><select name="cg" class="selectbox">
                                    <option value="">选择账户</option>
                                        <option value="0">电子币转账</option>


                                </select>

                                <input name="ePoints" type="text" value="0" class="input" />
                            </div>
                            <div class="group">
                                <input type="Submit" class="searchbtn" value="确定转账"><span id="dTips" class="cRed"></span>
                            </div>
</form>                    </li>
                </ul>

<form action="/Finance/MTransfer" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post">                    <ul class="search">
                        <li>
                            <div class="group">
                                <label class="label">
                                    对方帐号：</label><input name="tUserID" type="text" class="input" value="" />
                            </div>
                            <div class="group">
                                <label class="label">
                                    转账类型：</label><select name="mTrClass" class="selectbox">
                                        <option value="">所有账户</option>
                                            <option value="1t1">电子币转账</option>
                                    </select>

                                <select name="s_Class" class="selectbox">
                                    <option value="">所有类型</option>
                                    <option value="0">转入</option>
                                    <option value="1">转出</option>
                                </select>
                            </div>
                            <div class="group">
                                <label class="label">
                                    转账日期：
                                </label>
                                <input id="startDate" name="startDate" type="text" onclick="WdatePicker()" class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <label class="label">
                                    至</label>
                                <input id="overDate" name="overDate" type="text" onclick="WdatePicker()" class="input" value="" readonly="ture" />
                            </div>
                            <div class="group">
                                <input type="Submit" class="searchbtn" value="搜 索">
                            </div>
                        </li>
                    </ul>                            </form>                <div id="ListContent" class="listing">
                    <table cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;" class="ts">

    <tr>
        <th>转出帐号</th>
        <th>订单姓名</th>
        <th>账户</th>
        
        <th>转账金额</th>
        <th>转入帐号</th>
        <th>订单姓名</th>
        <th width="18%">转账时间</th>
    </tr>
        <tr>
            <td align="center">txp88888</td>
            <td align="center">唐新平</td>
            <td align="center">电子币转账</td>
            <td align="center">600.00</td>
            <td align="center">xq88888</td>
            <td align="center">徐青</td>
            <td align="center" style="line-height: 14px;">2017/12/18 17:05:30</td>
        </tr>
        <tr>
            <td align="center">李海波</td>
            <td align="center">李海波</td>
            <td align="center">电子币转账</td>
            <td align="center">1200.00</td>
            <td align="center">txp88888</td>
            <td align="center">唐新平</td>
            <td align="center" style="line-height: 14px;">2017/12/18 16:54:25</td>
        </tr>
        <tr>
            <td align="center">李海波</td>
            <td align="center">李海波</td>
            <td align="center">电子币转账</td>
            <td align="center">600.00</td>
            <td align="center">txp88888</td>
            <td align="center">唐新平</td>
            <td align="center" style="line-height: 14px;">2017/11/29 13:00:38</td>
        </tr>
        <tr>
            <td align="center">李海波</td>
            <td align="center">李海波</td>
            <td align="center">电子币转账</td>
            <td align="center">600.00</td>
            <td align="center">txp88888</td>
            <td align="center">唐新平</td>
            <td align="center" style="line-height: 14px;">2017/11/27 16:49:37</td>
        </tr>

</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 4 条, 1 / 1 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="1" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/Finance/MTransfer?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;1&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
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
