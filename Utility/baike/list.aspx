<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="KeLin.WebSite.Utility.baike.list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(HttpUtility.UrlDecode(kind), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="left">
<%=this.html %>
<%=linkURL %>

----------<br/>
<a href="<%=http_start%>utility/baike/typelist.aspx?siteid=<%=siteid%>&amp;classid=<%=classid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><% =HttpUtility.UrlDecode(kind)%></div>

<%=this.html %>
<%=linkURL %>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>utility/baike/typelist.aspx?siteid=<%=siteid%>&amp;classid=<%=classid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>