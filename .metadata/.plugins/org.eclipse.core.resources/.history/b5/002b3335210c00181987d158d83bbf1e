<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>个人资料</title>
    <link href="style/css/style.css" rel="stylesheet" />
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script type="text/javascript">
        //提交后返回结果
        function AfterAdd(result) {
            if (result == "ok") {
                alert("更新成功！");
                window.location.reload();
            }
            else {
                alert(result);
            }
        }
        function ChgTels() {
            var userTels = $("#userTels").val();
            if (userTels == "" || userTels.length != 11) {
                $("#dTip4").text("请输入手机号码");
                return;
            }
            $("#btnTel").attr("disabled", true);
            $.post("/UserInfo/ChTels", { userTels: userTels }, function (data) {
                if (data.isOK != "ok") {
                    $("#dTip4").text(data.msg);
                    $("#btnTel").attr("disabled", false);
                }
                else {
                    $("#dTip4").text(data.msg);
                    btnCK();
                }
            });

        }
        function btnCK() {
            var count = 30;
            var countdown = setInterval(CountDown, 1000);
            function CountDown() {
                $("#btnTel").val("您在" + count + " 秒后可以再次获取!");
                if (count == 0) {
                    $("#btnTel").val("重新获取验证码").removeAttr("disabled");
                    clearInterval(countdown);
                }
                count--;
            }

        }
    </script>
</head>

<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>个人资料<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">个人信息</a></li>
    <li><a href="#">个人资料</a></li>
  </ul>



        <!--资料box-->
        <div class="data_box">
<form action="/UserInfo" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="t2">
                    <tr>
                        <td class="leftTD" height="30" align="right">订单编号：</td>
                        <td>txp88888</td>
                    </tr>

                    

                    
                    
                   

                    <tr>
                        <td height="30" align="right">推荐人：</td>
                        <td>
                            永盛
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right">报单中心：</td>
                        <td>
                            lhb88888
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td height="30" align="right">安置人编号：</td>
                        <td bgcolor="#FFFFFF">
                            zjh88888
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td height="30" align="right">安置业务区：</td>
                        <td bgcolor="#FFFFFF">
                            <input  type="radio" value="1" disabled  /><label id="trps_1" for="uTreePlace_1">左区</label>
                            <input  type="radio" value="2" checked=&#39;checked&#39;  /><label id="trps_2" for="uTreePlace_2">右区</label>
                           
                            <span id="ywMsg">&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">真实姓名：</td>
                        <td>
                            <input name="userName" type="text" readonly  value="唐新平" size="30" maxlength="50" style="width: 200px; height: 20px;" />
                            <span class="cRed">*</span></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">身份证号：</td>
                        <td>
                            <input name="userCode" type="text"  value="622724198509211517" size="30" maxlength="18" style="width: 140px; height: 20px;" />
                            <span class="cRed">*</span></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">联系电话：</td>
                        <td>
                            <select name="countyTel" style="margin-left: 2px;">
                                    <option value="0060"   >+0060 (马来西亚)</option>
                                    <option value="0062"   >+0062 (印度尼西亚)</option>
                                    <option value="0063"   >+0063 (菲律宾)</option>
                                    <option value="0065"   >+0065 (新加坡)</option>
                                    <option value="0066"   >+0066 (泰国)</option>
                                    <option value="00673"   >+00673 (文莱)</option>
                                    <option value="0081"   >+0081 (日本)</option>
                                    <option value="0082"   >+0082 (韩国)</option>
                                    <option value="0084"   >+0084 (越南)</option>
                                    <option value="00850"   >+00850 (朝鲜)</option>
                                    <option value="00852"   >+00852 (香港)</option>
                                    <option value="00853"   >+00853 (澳门)</option>
                                    <option value="00855"   >+00855 (柬埔寨)</option>
                                    <option value="00856"   >+00856 (老挝)</option>
                                    <option value="0086" selected  >+0086 (中国)</option>
                                    <option value="00886"   >+00886 (台湾)</option>
                                    <option value="00880"   >+00880 (孟加拉国)</option>
                                    <option value="0090"   >+0090 (土耳其)</option>
                                    <option value="0091"   >+0091 (印度)</option>
                                    <option value="0092"   >+0092 (巴基斯坦)</option>
                                    <option value="0093"   >+0093 (阿富汗)</option>
                                    <option value="0094"   >+0094 (斯里兰卡)</option>
                                    <option value="0095"   >+0095 (缅甸)</option>
                                    <option value="00960"   >+00960 (马尔代夫)</option>
                                    <option value="00961"   >+00961 (黎巴嫩)</option>
                                    <option value="00962"   >+00962 (约旦)</option>
                                    <option value="00963"   >+00963 (叙利亚)</option>
                                    <option value="00964"   >+00964 (伊拉克)</option>
                                    <option value="00965"   >+00965 (科威特)</option>
                                    <option value="00966"   >+00966 (沙特阿拉伯)</option>
                                    <option value="00968"   >+00968 (阿曼)</option>
                                    <option value="00972"   >+00972 (以色列)</option>
                                    <option value="00973"   >+00973 (巴林)</option>
                                    <option value="00974"   >+00974 (卡塔尔)</option>
                                    <option value="00975"   >+00975 (不丹)</option>
                                    <option value="00976"   >+00976 (蒙古)</option>
                                    <option value="00977"   >+00977 (尼泊尔)</option>
                                    <option value="0098"   >+0098 (伊朗)</option>
                                    <option value="007"   >+007 (俄罗斯)</option>
                                    <option value="0030"   >+0030 (希腊)</option>
                                    <option value="0031"   >+0031 (荷兰)</option>
                                    <option value="0032"   >+0032 (比利时)</option>
                                    <option value="0033"   >+0033 (法国)</option>
                                    <option value="0034"   >+0034 (西班牙)</option>
                                    <option value="00350"   >+00350 (直布罗陀)</option>
                                    <option value="00351"   >+00351 (葡萄牙)</option>
                                    <option value="00352"   >+00352 (卢森堡)</option>
                                    <option value="00353"   >+00353 (爱尔兰)</option>
                                    <option value="00354"   >+00354 (冰岛)</option>
                                    <option value="00355"   >+00355 (阿尔巴尼亚)</option>
                                    <option value="00356"   >+00356 (马耳他)</option>
                                    <option value="00357"   >+00357 (塞浦路斯)</option>
                                    <option value="00358"   >+00358 (芬兰)</option>
                                    <option value="00359"   >+00359 (保加利亚)</option>
                                    <option value="00336"   >+00336 (匈牙利)</option>
                                    <option value="00349"   >+00349 (德国)</option>
                                    <option value="00338"   >+00338 (南斯拉夫)</option>
                                    <option value="0039"   >+0039 (意大利)</option>
                                    <option value="00223"   >+00223 (圣马力诺)</option>
                                    <option value="00396"   >+00396 (梵蒂冈)</option>
                                    <option value="0040"   >+0040 (罗马尼亚)</option>
                                    <option value="0041"   >+0041 (瑞士)</option>
                                    <option value="004175"   >+004175 (列支敦士登)</option>
                                    <option value="0043"   >+0043 (奥地利)</option>
                                    <option value="0044"   >+0044 (英国)</option>
                                    <option value="0045"   >+0045 (丹麦)</option>
                                    <option value="0046"   >+0046 (瑞典)</option>
                                    <option value="0047"   >+0047 (挪威)</option>
                                    <option value="0048"   >+0048 (波兰)</option>
                                    <option value="0020"   >+0020 (埃及)</option>
                                    <option value="00210"   >+00210 (摩洛哥)</option>
                                    <option value="00213"   >+00213 (阿尔及利亚)</option>
                                    <option value="00216"   >+00216 (突尼斯)</option>
                                    <option value="00218"   >+00218 (利比亚)</option>
                                    <option value="00220"   >+00220 (冈比亚)</option>
                                    <option value="00221"   >+00221 (塞内加尔)</option>
                                    <option value="00222"   >+00222 (毛里塔尼亚)</option>
                                    <option value="00223"   >+00223 (马里)</option>
                                    <option value="00224"   >+00224 (几内亚)</option>
                                    <option value="00225"   >+00225 (科特迪瓦)</option>
                                    <option value="00226"   >+00226 (布基拉法索)</option>
                                    <option value="00227"   >+00227 (尼日尔)</option>
                                    <option value="00228"   >+00228 (多哥)</option>
                                    <option value="00229"   >+00229 (贝宁)</option>
                                    <option value="00230"   >+00230 (毛里求斯)</option>
                                    <option value="00231"   >+00231 (利比里亚)</option>
                                    <option value="00232"   >+00232 (塞拉利昂)</option>
                                    <option value="00233"   >+00233 (加纳)</option>
                                    <option value="00234"   >+00234 (尼日利亚)</option>
                                    <option value="00235"   >+00235 (乍得)</option>
                                    <option value="00236"   >+00236 (中非)</option>
                                    <option value="00237"   >+00237 (喀麦隆)</option>
                                    <option value="00238"   >+00238 (佛得角)</option>
                                    <option value="00239"   >+00239 (圣多美)</option>
                                    <option value="00239"   >+00239 (普林西比)</option>
                                    <option value="00240"   >+00240 (赤道几内亚)</option>
                                    <option value="00241"   >+00241 (加蓬)</option>
                                    <option value="00242"   >+00242 (刚果)</option>
                                    <option value="00243"   >+00243 (扎伊尔)</option>
                                    <option value="00244"   >+00244 (安哥拉)</option>
                                    <option value="00245"   >+00245 (几内亚比绍)</option>
                                    <option value="00247"   >+00247 (阿森松)</option>
                                    <option value="00248"   >+00248 (塞舌尔)</option>
                                    <option value="00249"   >+00249 (苏丹)</option>
                                    <option value="00250"   >+00250 (卢旺达)</option>
                                    <option value="00251"   >+00251 (埃塞俄比亚)</option>
                                    <option value="00252"   >+00252 (索马里)</option>
                                    <option value="00253"   >+00253 (吉布提)</option>
                                    <option value="00254"   >+00254 (肯尼亚)</option>
                                    <option value="00255"   >+00255 (坦桑尼亚)</option>
                                    <option value="00256"   >+00256 (乌干达)</option>
                                    <option value="00257"   >+00257 (布隆迪)</option>
                                    <option value="00258"   >+00258 (莫桑比克)</option>
                                    <option value="00260"   >+00260 (赞比亚)</option>
                                    <option value="00261"   >+00261 (马达加斯加)</option>
                                    <option value="00262"   >+00262 (留尼旺岛)</option>
                                    <option value="00263"   >+00263 (津巴布韦)</option>
                                    <option value="00264"   >+00264 (纳米比亚)</option>
                                    <option value="00265"   >+00265 (马拉维)</option>
                                    <option value="00266"   >+00266 (莱索托)</option>
                                    <option value="00267"   >+00267 (博茨瓦纳)</option>
                                    <option value="00268"   >+00268 (斯威士兰)</option>
                                    <option value="00269"   >+00269 (科摩罗)</option>
                                    <option value="0027"   >+0027 (南非)</option>
                                    <option value="00290"   >+00290 (圣赫勒拿)</option>
                                    <option value="00297"   >+00297 (阿鲁巴岛)</option>
                                    <option value="00298"   >+00298 (法罗群岛)</option>
                                    <option value="001"   >+001 (美国)</option>
                                    <option value="001"   >+001 (加拿大)</option>
                                    <option value="001808"   >+001808 (中途岛)</option>
                                    <option value="001808"   >+001808 (夏威夷)</option>
                                    <option value="001808"   >+001808 (威克岛)</option>
                                    <option value="001809"   >+001809 (安圭拉岛)</option>
                                    <option value="001809"   >+001809 (维尔京群岛)</option>
                                    <option value="001809"   >+001809 (圣卢西亚)</option>
                                    <option value="001809"   >+001809 (波多黎各)</option>
                                    <option value="001809"   >+001809 (牙买加)</option>
                                    <option value="001809"   >+001809 (巴哈马)</option>
                                    <option value="001809"   >+001809 (巴巴多斯)</option>
                                    <option value="001907"   >+001907 (阿拉斯加)</option>
                                    <option value="00299"   >+00299 (格陵兰岛)</option>
                                    <option value="00500"   >+00500 (福克兰群岛)</option>
                                    <option value="00501"   >+00501 (伯利兹)</option>
                                    <option value="00502"   >+00502 (危地马拉)</option>
                                    <option value="00503"   >+00503 (萨尔瓦多)</option>
                                    <option value="00504"   >+00504 (洪都拉斯)</option>
                                    <option value="00505"   >+00505 (尼加拉瓜)</option>
                                    <option value="00506"   >+00506 (哥斯达黎加)</option>
                                    <option value="00507"   >+00507 (巴拿马)</option>
                                    <option value="00509"   >+00509 (海地)</option>
                                    <option value="0051"   >+0051 (秘鲁)</option>
                                    <option value="0052"   >+0052 (墨西哥)</option>
                                    <option value="0053"   >+0053 (古巴)</option>
                                    <option value="0054"   >+0054 (阿根廷)</option>
                                    <option value="0055"   >+0055 (巴西)</option>
                                    <option value="0056"   >+0056 (智利)</option>
                                    <option value="0057"   >+0057 (哥伦比亚)</option>
                                    <option value="0058"   >+0058 (委内瑞拉)</option>
                                    <option value="00591"   >+00591 (玻利维亚)</option>
                                    <option value="00592"   >+00592 (圭亚那)</option>
                                    <option value="00593"   >+00593 (厄瓜多尔)</option>
                                    <option value="00594"   >+00594 (法属圭亚那)</option>
                                    <option value="00595"   >+00595 (巴拉圭)</option>
                                    <option value="00596"   >+00596 (马提尼克)</option>
                                    <option value="00597"   >+00597 (苏里南)</option>
                                    <option value="00598"   >+00598 (乌拉圭)</option>
                                    <option value="0061"   >+0061 (澳大利亚)</option>
                                    <option value="0064"   >+0064 (新西兰)</option>
                                    <option value="00671"   >+00671 (关岛)</option>
                                    <option value="006722"   >+006722 (科科斯岛)</option>
                                    <option value="006723"   >+006723 (诺福克岛)</option>
                                    <option value="006724"   >+006724 (圣诞岛)</option>
                                    <option value="00674"   >+00674 (瑙鲁)</option>
                                    <option value="00676"   >+00676 (汤加)</option>
                                    <option value="00677"   >+00677 (所罗门群岛)</option>
                                    <option value="00678"   >+00678 (瓦努阿图)</option>
                                    <option value="00679"   >+00679 (斐济)</option>
                                    <option value="00682"   >+00682 (科克群岛)</option>
                                    <option value="00683"   >+00683 (纽埃岛)</option>
                                    <option value="00684"   >+00684 (东萨摩亚)</option>
                                    <option value="00685"   >+00685 (西萨摩亚)</option>
                                    <option value="00686"   >+00686 (基里巴斯)</option>
                                    <option value="00688"   >+00688 (图瓦卢)</option>

                            </select>
                            <input name="userTels" id="userTels" type="text"  value="18377061863" size="30" maxlength="13" style="width: 140px; height: 20px;" />
                            
                            <span class="cRed">*</span><span id="dTip4" class="cRed">&nbsp;</span></td>
                    </tr>
                    
                    
                    <tr>
                        <td height="30" align="right">银行信息：</td>
                        <td>
                                <select name="BankName">
                                    <option value="">请选择开户银行</option>
                                        <option value="中国银行" >中国银行</option>
                                        <option value="农业银行" selected=selected>
农业银行</option>
                                        <option value="建设银行" >
建设银行</option>
                                        <option value="工商银行" >
工商银行</option>
                                        <option value="邮政银行" >
邮政银行</option>
                                </select>


                            <input name="bankBranch"   type="text" size="10" maxlength="25" style="width: 150px;" class="btnClass_s" value="防城港市港口区友谊路支行">
                            支行
               <input name="bankAddress" type="text"   size="10" maxlength="25" style="width: 150px;" class="btnClass_s" value="">
                            分理处
                                        <span class="cRed">*</span></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">开户姓名：</td>
                        <td>
                            <input name="BankUser" type="text" readonly value="唐新平" size="30"  style="width: 200px; height: 20px;" />
                            <span class="cRed">*</span></td>
                    </tr>
                    <tr>
                        <td height="30" align="right">银行卡号：</td>
                        <td>
                            <input name="BankCard" type="text"  value="6228482828737136871" size="30" maxlength="19" style="width: 300px; height: 20px;" />
                            <span class="cRed">*</span></td>
                    </tr>
                    

                   
                    
                    <tr>
                        <td height="30" align="right"></td>
                        <td>

                            <input name="button" type="submit" class="searchbtn" value="保存资料">
                            <input name="button" type="button" class="searchbtn" value="返 回" onclick="history.go(-1)">
                        </td>
                    </tr>
                </table>
</form>        </div>
    </div>

</body>
</html>
