<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bank_alipay.aspx.cs" Inherits="KeLin.WebSite.chinabank.bank_alipay" %>
<%
//此处处理价格代码

    string action = Request.QueryString.Get("action");
    string get_sitedates = Request.QueryString.Get("sitedates");
    string get_sitespace = Request.QueryString.Get("sitespace");
    string money = "0";
    if (action == "go")
    {
        if (get_sitedates == "366") money = "100.00";
        if (get_sitedates == "183") money = "65.00";
        if (get_sitedates == "30") money = "15.00";

        money = (Decimal.Parse(money) + decimal.Parse(get_sitespace)).ToString();
        

    }


 %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<title>我要充值</title>
</head>
<body>
	<div id="panel" style="visibility: hidden; position: absolute; left: 202; top: 116; width: 180; height: 104; border-style: none; border-width: 1px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">正在处理请求，请耐心等待......
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
              <td width="1%"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><div align="center"><img src="/NetImages/i08.gif" width="16" height="16"></div></td>
                    <td width="98%" height="24" valign="middle"> &nbsp;网站管理 &gt;&gt;        
                      支付宝充值网站 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0">
                  <tr>
                    <td background="/NetImages/dw.gif"> 
                      <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="Form1" action="bank_alipay.aspx" method="get">
      	<input type="hidden"   name="action"  value="go">
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3" width="858"><b> 
                                    &nbsp;<font color=red><%=INFO%></font>
                                    </b></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD width="192" height="49" align="right" class="TD2" ><b>网站情况：</b></TD>
                                  <TD width="665" class="TD3"> <div align="left">&nbsp;       
                                      网站期限：<b><%=endtime%></b>    &nbsp;&nbsp;网站大小：<b><%=sitespace%></b> M &nbsp;&nbsp;已使用：<b><%=myspace%> </b>Kb</div></TD>      
                                </TR>
                                
                                <TR class="tdbg" > 
                                  <TD width="192" height="49" align="right" class="TD2" ><b>充值网站ID：</b></TD>
                                  <TD width="665" class="TD3"> <div align="left">&nbsp;       
                                      <INPUT Class="input" name="tositeid"  value="<%=tositeid%>"  size="8" onkeyup="checknum()">
                                      &nbsp;&nbsp;(可填写其它网站ID)</div></TD>      
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="44" align="right" class="TD2" width="192" ><strong>充值网站时间：</strong></TD>
                                  <TD class="TD3" width="665"><div align="left">&nbsp;       
                                     <select name="sitedates" >
                                     <option value="366" >一年(￥：100.00)</option>
                                     <option value="183" >半年(￥：65.00)</option>
                                     <option value="30" >一月(￥：15.00)</option>                                          
                                     </select> 
                                    </div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD width="192" height="49" align="right" class="TD2" ><b>充值网站空间：</b></TD>
                                  <TD width="665" class="TD3"> <div align="left">&nbsp;       
                                      <INPUT Class="input" name="sitespace" size="8" value="0" onkeyup="checknum2()"> M  (每1M ￥：1.00元)
                                      &nbsp;&nbsp;&nbsp;&nbsp;</div></TD>      
                                </TR>
                        
                                <TR class="tdbg" >
                                  <TD height="44" align="right" class="TD2" width="192" >&nbsp;</TD>
                                  <TD class="TD3" width="665"><div align="left">&nbsp;&nbsp; 
                                  <%	if (isclose == "0")
                                        {%>
                                  	<input type="button" name="g" value=" 已关闭此充值接口，如有需要联系超级管理员！ " class="bt"/>
                                  <%}
                                        else
                                        {%>
                                    <input type="button" name="g" onClick="gosubmit();" value=" 下一步 " class="bt"/> <%=remark%>
                                  
                                  
                                  <%}%>
                               
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
<script>
function checknum(){
	
	var numReg = /^(\+|-)?(0|[0-9]\d*)(\.\d*[0-9])?$/;
	var temp=Form1.touserid.value;
	if(!numReg.test(temp)){
		
		alert("只能输入数字!");
		Form1.touserid.value="";
	}
	
	
}
function checknum2(){
	
	var numReg = /^(\+|-)?(0|[0-9]\d*)(\.\d*[0-9])?$/;
	var temp=Form1.sitespace.value;
	if(!numReg.test(temp)){
		
		alert("只能输入数字!");
		Form1.sitespace.value="";
	}
	
	
}
function gosubmit(){
	
	if (Form1.tositeid.value==""){
		alert("网站ID不能为空！");
		return;
	}
	if (Form1.sitespace.value==""){
		alert("网站空间不能为空！");
		return;
	}
	
	//document.all('panel').style.visibility='visible';
	//document.all('panel').style.cursor='wait';
	//Form1.target="_blank";
	Form1.submit();
	
}
</script>
<%if (action == "go")
  { %>
<FORM name="Form2" action="alipay_siteid_default.aspx" method="post" target="_blank">
<input type="hidden"   name="tositeid"  value="<%=tositeid %>">
<input type="hidden"   name="sitedates"  value="<%=get_sitedates %>">
<input type="hidden"   name="sitespace"  value="<%=get_sitespace %>">
<input type="hidden"   name="total_fee"  value="<%=money %>">
</FORM>
<script>    Form2.submit();</script>
<%}%>
</body>
</html>

