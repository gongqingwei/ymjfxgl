<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>注册订单</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script>
        function linkJump(u, p) {
            if (u == "" || u == "0") return false;
            if (p != "") {
                document.getElementById(p).src = u;
            } else {
                document.location.href = u;
            }
            return false;
        }
    </script>
</head>
<script language="JavaScript">

    function chgLevel(i) {
        var regMoney_0 = 0;

        
        
        $("#regMoney").text(eval("regMoney_" + i));
        $("#regPriceHTML").text(eval("regMoney_" + i))
        if (i == 1) {
            $("#regpro").hide();
        }
        else {
            $("#regpro").show();
        }
        //document.getElementById("regMoney").innerHTML = eval("regMoney_" + i);
        //document.getElementById("regPriceHTML").innerHTML = eval("regMoney" + i);
    }

    function getUserID() {
        $.post("/Member/FrashCode", {}, function (data) {
            if (data != "") {
                $("#userID").val(data);
            }
        });
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
    //提交后返回结果
    function AfterAdd(result) {
        if (result == "ok") {
            alert("注册成功！");
            window.location.reload();
        }
        else {
            alert(result);
            //window.location.reload();
        }
    }
    // GetCounty(1, '0')
    function GetCounty(Grade, countyCode) {
        if (countyCode == "") {
            return;
        }
        var selOne = "County" + Grade;
        $.post("/Home/GetAreas", { Grade: Grade, countyCode: countyCode }, function (data) {
            if (Grade == 2) {
                $("#County3").empty();
            }
            $("#" + selOne).empty();
            $("#" + selOne).append("<option value='-1'>请选择</option>");
            $.each(data, function (k, n) {
                $("#" + selOne).append("<option value='" + n.id + "'>" + n.name + "</option>");
            });
        });
    }

    //function ChgTels() {
    //    var userTels = $("#userTels").val();
    //    if (userTels == "" || userTels.length != 11) {
    //        $("#dTip4").text("请输入手机号码");
    //        return;
    //    }
    //    $("#btnTel").attr("disabled", true);
    //    $.post("/home/ChTels", { userTels: userTels }, function (data) {
    //        if (data.isOK != "ok") {
    //            $("#dTip4").text(data.msg);
    //            $("#btnTel").attr("disabled",false);
    //        }
    //        else {
    //            $("#dTip4").text(data.msg);
    //            btnCK();
    //        }
    //    });

    //}
    //function btnCK() {
    //    var count = 30;
    //    var countdown = setInterval(CountDown, 1000);
    //    function CountDown() {
    //        $("#btnTel").val("您在" + count + " 秒后可以再次获取!");
    //        if (count == 0) {
    //            $("#btnTel").val("重新获取验证码").removeAttr("disabled");
    //            clearInterval(countdown);
    //        }
    //        count--;
    //    }

    //}
</script>


<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>注册订单<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">业务管理</a></li>
    <li><a href="#">注册订单</a></li>
  </ul>


        <div class="newData_box">


<form action="registerOrder" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                <ul class="newData">
                    <li>
                        <p>订单登录名<b>*</b></p>
                        <input name="UserID" id="userID" class="long" type="text" size="12" value="" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" oncontextmenu="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" placeholder="字母加数字,最高8位数,最低4位数" />
                        
                    </li>
                    <li>
                        <p>一级密码<b>*</b></p>
                        <input class="short" name="password" type="password" onkeyup="value=value.replace(/[\W]/g,'') " placeholder="包含字母跟数字" />
                        <input class="short margin" name="password2" type="password" placeholder="重复一级密码"/>
                        <span>必填 6-12位数字与字母</span>
                    </li>
                    <li>
                        <p>二级密码<b>*</b></p>
                        <input class="short" name="passopen" type="password" onkeyup="value=value.replace(/[\W]/g,'') " placeholder="包含字母跟数字" />
                        <input class="short margin" name="passopen2" type="password" placeholder="重复二级密码">
                        <span>必填 6-12位数字与字母</span>
                    </li>
                    <li>
                        <p>三级密码<b>*</b></p>
                        <input class="short" name="passencry" type="password" onkeyup="value=value.replace(/[\W]/g,'') " placeholder="包含字母跟数字" />
                        <input class="short margin" name="passencry2" type="password" placeholder="重复三级密码">
                        <span>必填 6-12位数字与字母</span>
                    </li>

                    <li>
                        <p>认购单数<b>*</b></p>
                        <input type="text" name="regNum" id="regNum" class="long" value="" />
                        <span class="cRed">每单:600.00封顶:30000.00</span>
                    </li>

                    <li>
                        <p>推荐人编号<b>*</b></p>
                        <input name="reName" id="reName" class="long" value="txp88888"  size="25"  onblur="getReName(this.value,1)"placeholder="推荐人编号" />
                        <span id="dTip1">&nbsp;</span>

                    </li>
                    <li>
                        <p>报单中心编号<b>*</b></p>
                        <input class="long" type="text"  name="shopNumber" id="shopNumber"  value="" placeholder="报单中心编号" onblur="getReName(this.value,3)"/>
                        <span id="dTip3">必填</span>
                    </li>
                    <li>
                        <p>姓名<b>*</b></p>
                        <input class="long" name="userName" type="text" placeholder="姓名" onblur="$('#bankUser').val(this.value)" />
                    </li>
                    <li>
                        <p>手机号码<b>*</b></p>
                        <input class="long" name="userTels" id="userTels" type="text" placeholder="手机号码" />
                    </li>
                    <li>
                        <p>身份证号<b>*</b></p>
                        <input class="long" name="userCode" type="text" placeholder="身份证号" />
                    </li>

                    <li>
                        <p>联系地址<b></b></p>
                        <input class="long" name="userAddress" type="text"/>
                    </li>
                    <li>
                        <p>银行信息<b>*</b></p>
                       <select name="bankName" style="margin-left: 2px;">
                            <option value="">请选择开户银行</option>
                                <option value="中国银行">中国银行</option>
                                <option value="农业银行">
农业银行</option>
                                <option value="建设银行">
建设银行</option>
                                <option value="工商银行">
工商银行</option>
                                <option value="邮政银行">
邮政银行</option>

                        </select>
                    </li>
                    <li>
                        <p>银行支行</p>
                        <input  class="long" name="bankBranch" type="text"  maxlength="25"  value="" />
                    </li>
                    <li>
                        <p>银行分理处</p>
                        <input  class="long" name="bankAddress" type="text"  maxlength="25"  value="" />
                    </li>
                    <li>
                        <p>开户姓名<b></b></p>
                        <input  class="long" name="bankUser" id="bankUser" type="text"  maxlength="25"  value="" />
                    </li>

                    <li>
                        <p>银行卡号<b></b></p>
                        <input  class="long" name="bankCard" id="bankCard" type="text"  maxlength="25"  value="" />
                    </li>
                </ul>
                <div class="determine_box">
                    
                <input name="Submit2" type="submit" class="determine_btn" value="提 交" />
                </div>
</form>        </div>

                

                


                

                

          
                
                
                
                

            <script>
                //文本框数量操作
                function Count(obj) {
                    var proNumLeave = $("#proNumLeave_" + obj).val();
                    var OneFee = $("#proPrice_" + obj).val();

                    var tval = parseInt($("#proNum_" + obj).val());

                    if (tval < 0) {
                        tval = 0;
                    }
                    if (tval > proNumLeave) {
                        tval = proNumLeave;
                    }
                    $(obj).val(tval)

                    var Countjk = OneFee * tval

                    $("#hidxiaoji_" + obj).val(Countjk.toFixed(2));
                    GetCountBuyId();
                }

                //合计
                function GetCountBuyId() {
                    var AllCount = 0;
                    var shuliang = 0;
                    var pid = ",";
                    var pnum = ",";
                    $('.hidxiaoji').each(function (i) {
                        var obj = $(this).siblings('.all-select');
                        if (obj.prop('checked')) {
                            pid += $(obj).val() + ",";
                            AllCount += parseFloat($(this).val());
                            var num = $("#proNum_" + $(this).attr("pid")).val()
                            pnum += num + ","
                            shuliang += parseInt(num)
                        }
                    });
                    $('#proNumHTML').text(shuliang);
                    $('#proPriceHTML').text(AllCount.toFixed(2));
                    $("#proID").val(pid);
                    $("#proNum").val(pnum);
                }

            </script>
        </div>
    </div>

</body>
</html>
