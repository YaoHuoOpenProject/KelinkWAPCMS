<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="modifyConfig_Alipay.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.modifyConfig_Alipay" %>
<html>
<head>
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">

<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
    function add() {
        if (messageForm.rand.value == "" || messageForm.namecn.value == "" || messageForm.nameen.value == "" || messageForm.mode.value == "" || messageForm.series.value == "" || messageForm.osystem.value == "" || messageForm.widthpx.value == "" || messageForm.heightpx.value == "") {
            alert("所有项不能为空！");           
            return;
        } 

        showDoing();
        messageForm.submit();
      
    }

    function showDoing() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
</script>
<title>新增样式</title>

</head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
	</td>
  </tr>
</table>
</div>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="../NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="../NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">网站管理 &gt;&gt; 虚拟货币管理 &gt;&gt; 支付宝配置收费接口参数</td>
                </tr>
              </table></td>
              <td width="13"><img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0" background="../NetImages/dw.gif">
                    <tr>
                      <td> 
 
 
 
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
    

     <FORM name="Form1" action="modifyConfig_alipay.aspx" method="post">
     <input type="hidden" name="action" value="gomod" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3" width="545"><b> 
                                  <%=this.ERROR %>
                                    <%if (this.INFO=="OK") {%>
                                    <font color=red> 保存设置成功！！！</font> 
                                  
                                    <%}%>
                                    </b></TD>
                                  <TD  height=20 class="TD_title3" width="704"><b><font color="#FF0000">支付宝平台接口使用方法</font></b></TD>
                                </TR>
                              
                                 <TR class="tdbg" > 
                                  <TD width="159" height="30" align="right" class="TD2" ><b>合作者身份:</b></TD>
                                  <TD width="367" class="TD2"> <div align="left">&nbsp;   
                                    <INPUT Class="input" name="p1_MerId" value="<%=p1_MerId%>" size=20> 
                                </TR>
                                  <TD width="702" class="TD2" rowspan="5" valign="top"> 
									<br>

									<br>
&nbsp;<b>步骤一：</b>登录支付宝(<a target="_blank" href="https://www.alipay.com/">https://www.alipay.com/</a>)。

									<br><br>

&nbsp;<b>步骤二：</b>进入“商户服务”选择开通：手机网站支付 和 双功能收款 （WAP商店支付支持以上二种）<br>
									<br>
&nbsp;<b>步骤三：</b>开通后，即可查到合作者身份(Partner ID)和安全校验码(Key)，完成配置 (http://www.alipay.com登录进去商家服务可查)。
									<br><br>
&nbsp;<b>步骤四：</b>掉单/结算，登录支付平台WEB后台处理！<br><br>
&nbsp;<b>请注意：</b><font color=red>此业务是你与直接与支付宝合作！有什么支付类问题可申请支付宝技术支持！</font>
									<p>　</TR>
                               

                                <TR class="tdbg" >
                                  <TD width="159" height="30" align="right" class="TD2" ><b>安全校验码:</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="merchantKey" value="<%=merchantKey%>" size=43>&nbsp; 
									</div></TD>
									 <TR class="tdbg" >
                                  <TD width="159" height="30" align="right" class="TD2" ><b>我的支付宝：</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="email" value="<%=email%>" size=20>&nbsp;
									</div></TD>
                                </TR>
                                <INPUT type="hidden" name="tomoney" value="<%=tomoney%>" size=20>
                                <!--
                                <TR class="tdbg" >
                                  <TD width="159" height="30" align="right" class="TD2" ><b>一元等于：</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      &nbsp; 个虚拟币
									</div></TD>
                                </TR>
                                -->
                                <TR class="tdbg" > 
                                  <TD width="159" height="30" align="right" class="TD2" ><b>是否开启：</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      <select name="isclose">
                                        <option value="1" <%if (isclose=="1") Response.Write("selected") ;%>> 开 </option>
                                        <option value="0" <%if (isclose=="0") Response.Write ("selected");%>> 关 </option>

                                      </select>
                                    </div></TD>
                                </TR>
                                
                                <tr>
                                  <TD width="159" height="50" align="right" class="TD2" >
									<b>备注：</b></TD>
                                  <TD class="TD2" width="367">&nbsp; 
									<textarea name="remark" cols="31" rows="4"><%=remark%></textarea><br>
									&nbsp; 例:由于网络原因，可能会有掉单，即提交了没有充值成功，请把订单号发给客服：QQ:XXXXXXX(200字内)</TD>
                                	</tr>
                                
                                <TR class="tdbg" > 
                                  <TD width="159" height="44" align="right" class="TD2" >　</TD>
                                  <TD width="1003" class="TD3" colspan="2"> &nbsp; <input type="button" Class="bt" onclick="document.all('panel').style.visibility='visible';document.all('panel').style.cursor='wait';Form1.submit()" value=" 保 存 " name="B3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" Class="bt" onclick="window.open('/help/alipay_wap.html');" value=" 图片教程帮助 " name="B3">
                                    <br /><br /><font color=red>(注意：手机WAP网站支付目前只能公司才能申请，个人可以申请电脑版的“双功能收款”，即担保交易和即时到帐)</font>
                                   
                                    </div></TD>
                                </TR>
                             
                              </TABLE>
      </form>           
                              
                </td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>


</body>
</html>