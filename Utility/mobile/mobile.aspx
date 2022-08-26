<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="KeLin.WebSite.Utility.mobile.mobile" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("手机地域查询|手机地域查询|手机地域查询"), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="left">
输入手机号码:<br/>
<input type="text" name="key" value="<%=this.key %>" maxlength="16"/><br/>
<anchor>查 询
<go href="<%=http_start%>utility/mobile/mobile.aspx" method="get" accept-charset="utf-8">
<postfield name="key" value="$(key)"/>  
<postfield name="siteid" value="<%=siteid%>"/> 
<postfield name="classid" value="<%=classid%>"/> 
<postfield name="sid" value="<%=sid%>"/> 
<postfield name="r" value="<%=r%>"/> 
</go>
</anchor>
<br />

<%=this.html %>
说明：输入的号码不能少于7位，共收录20840条信息。<br/>
----------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><%=this.GetLang("手机地域查询|手机地域查询|手机地域查询")%></div>

<div class="content">
输入手机号码:<br/>
<form name="f" action="<%=http_start%>utility/mobile/mobile.aspx" method="get">
<input type="text" name="key" class ="txt" value="<%=this.key %>"/><br/>
<input type="hidden" name="siteid" value="<%=siteid%>"/> 
<input type="hidden" name="classid" value="<%=classid%>"/> 
<input type="hidden" name="sid" value="<%=sid%>"/> 
<input type="hidden" name="r" value="<%=r%>"/> 
<input type="submit" name="g" class="btn" value="查 询" />

</form>
<br/>


<%=this.html %>
说明：输入的号码不能少于7位，共收录20840条信息。<br/>
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>