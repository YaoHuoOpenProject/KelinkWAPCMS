<%@language=vbscript codepage=936 %>
<!--#include file="../connGB.asp"-->
<!--#include file="../admin/admin.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../admin/style/main_table.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="../admin/js/common.js"></SCRIPT>
<script language="JavaScript" src="../admin/js/aa.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../admin/js/table_tr.js" type="text/JavaScript"></script>

<%

dim siteid,myorder,myorderid,checkcode,isclose,state

siteid=session("userid")


Action=trim(request("Action"))
 
if Action="Modify" then
	 p1_MerId=tohtm(request("p1_MerId"))
 	 merchantKey=tohtm(request("merchantKey"))
 	 tomoney=tohtm(request("tomoney"))
 	 
 	 remark=tohtm(request("remark"))
 	 isclose=request("isclose")	 
 	 checkcode=left(trim(checkcode),20)
 	 remark=left(trim(remark),200)
 	 
 	 if trim(p1_MerId)="" or not isnumeric(p1_MerId) then
 	 	errmsg="商户编号不能为空！只能是数字。"
 	 	call WriteErrMsg()
 	  response.end
 	 elseif trim(tomoney)="" or not isnumeric(tomoney) then
 	 	errmsg="一元等于多个币不能为空！只能是数字。"
 	 	call WriteErrMsg()
 	  response.end
 	 elseif trim(merchantKey)=""  then
 	 	errmsg="密钥不能为空！"
 	 	call WriteErrMsg()
 	  response.end
 	 end if
 	 
 	 
 	 
   set rs=conn.execute("select id from [chinabank_WAP_Config] where siteid="&siteid)
   if not rs.eof then
   	  conn.execute("update chinabank_WAP_Config set p1_MerId='"&p1_MerId&"',merchantKey='"&merchantKey&"',tomoney="&tomoney&",isclose="&isclose&",remark='"&remark&"' where siteid="&siteid)
   else
  	  conn.execute("insert into chinabank_WAP_Config(siteid,p1_MerId,merchantKey,tomoney,isclose,remark)values("&siteid&",'"&p1_MerId&"','"&merchantKey&"',"&tomoney&","&isclose&",'"&remark&"')")
   end if
   rs.close
   set rs=nothing
	 state=1			  
  
end if


on error resume next
set rss=conn.execute("select * from chinabank_WAP_Config where siteid="&siteid)
if not rss.eof then
	 p1_MerId=rss("p1_MerId")	 
	 merchantKey=rss("merchantKey")
	 tomoney=rss("tomoney")
	 isclose=rss("isclose")	
	 remark=rss("remark")	
end if
rss.close
set rss=nothing

if err then
 	 	errmsg="请联系系统管理员开通此功能！"
 	 	call WriteErrMsg()
 	  response.end
	
end if

sub WriteErrMsg()
response.write errmsg

end sub

	call CloseConn() 

%>
<title>配置收费接口参数</title>
</head>
<body>
	<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:250px;top:150px;solid;">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../admin/images/hourglass.gif">正在处理请求，请耐心等待......
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
              <td width="1%"><img src="../admin/images/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="../admin/images/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><div align="center"><img src="../admin/images/i08.gif" width="16" height="16"></div></td>
                    <td width="98%" height="24" valign="middle"> 网站管理 &gt;&gt; 虚拟货币管理 &gt;&gt; 配置收费接口参数 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="../admin/images/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0">
                  <tr>
                    <td background="../admin/images/dw.gif"> 
                      <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="Form1" action="modifyConfig.asp" method="get">
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3" width="545"><b> 
                                    <%if state=1 then%>
                                    <font color=red> 设置成功！！！</font> 
                                  <%else%>
                                   保存设置成功
                                    <%end if%>
                                    </b></TD>
                                  <TD  height=20 class="TD_title3" width="704"><b><font color="#FF0000">易宝支付平台接口使用方法</font></b></TD>
                                </TR>
                              
                                 <TR class="tdbg" > 
                                  <TD width="168" height="30" align="right" class="TD2" ><b>商户编号：</b></TD>
                                  <TD width="374" class="TD2"> <div align="left">&nbsp;   
                                    <INPUT Class="input" name="p1_MerId" value="<%=p1_MerId%>" size=20> 
                                </TR>
                                  <TD width="702" class="TD2" rowspan="5" valign="top"> 
									<br>

									<br>
&nbsp;<b>步骤一：</b>点击打开此网站(<a target="_blank" href="https://www.yeepay.com/selfservice/registerSubMerchant.action?customerId=10000877918&hmac=0af946ec75a224e0f2a9bf1aca89fd66">易宝支付注册</a>)，注册成为商户。


									<br><br>

&nbsp;<b>步骤二：</b>开通审核后，你可以在易宝支付平台WEB后台取得商户编号和密钥，分别填入右边！<br>
									<br>
&nbsp;<b>步骤三：</b>完成配置。
									<br><br>
&nbsp;<b>步骤四：</b>掉单/结算，登录易宝支付平台WEB后台处理！</p>
&nbsp;<b>请注意：</b><font color=red>此业务免费，是你与直接与北京易宝支付平台合作！易宝支付是此建站系统合作伙伴商！请放心使用！</font>
									<p>　</TR>
                               

                                <TR class="tdbg" >
                                  <TD width="168" height="30" align="right" class="TD2" ><b>密钥：</b></TD>
                                  <TD class="TD2" width="374"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="merchantKey" value="<%=merchantKey%>" size=60>&nbsp; 
									</div></TD>
                                <TR class="tdbg" >
                                  <TD width="168" height="30" align="right" class="TD2" ><b>一元等于：</b></TD>
                                  <TD class="TD2" width="374"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="tomoney" value="<%=tomoney%>" size=20>&nbsp; 个虚拟币
									</div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD width="168" height="30" align="right" class="TD2" ><b>是否开启：</b></TD>
                                  <TD class="TD2" width="374"><div align="left">&nbsp;  
                                      <select name="isclose">
                                        <option value="1" <%if isclose="1" then response.write "selected" end if%>> 开 </option>
                                        <option value="0" <%if isclose="0" then response.write "selected" end if%>> 关 </option>

                                      </select>
                                    </div></TD>
                                </TR>
                                
                                <tr>
                                  <TD width="168" height="50" align="right" class="TD2" >
									<b>备注：</b></TD>
                                  <TD class="TD2" width="374">&nbsp; <textarea name="remark" cols="38" rows="4"><%=remark%></textarea><br>
									&nbsp; 例:由于网络原因，可能会有掉单，即提交了没有充值成功，请把订单号发给客服：QQ:XXXXXXX(200字内)</TD>
                                	</tr>
                                
                                <TR class="tdbg" > 
                                  <TD width="168" height="44" align="right" class="TD2" >　</TD>
                                  <TD width="743" class="TD3" colspan="2"> &nbsp; <input type="button" Class="input3" style="cursor:hand" onclick="document.all('panel').style.visibility='visible';document.all('panel').style.cursor='wait';Form1.submit()" value=" 保 存 " name="B3">
                                    <font color=red>(注意：要经常查看此参数，防他人篡改！)</font>
                                      <input name="Action" type="hidden" id="Action" value="Modify"> 
                                    </div></TD>
                                </TR>
                             
                              </TABLE>
      </form></td>
  </tr>
</table>
 </td>
            </tr>
            <tr>
                    <td></td>
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