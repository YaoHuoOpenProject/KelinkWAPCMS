<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="KeLin.WebSite.Utility.baike.view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("生活百科全书|生活百科全书|生活百科全书"), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="center">
<br/>
<%=this.html %>
<%=linkURL %>

----------<br/>
<a href="<%=http_start%>utility/baike/list.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><%=this.GetLang("生活百科全书|生活百科全书|生活百科全书")%></div>

<div class="content">
类别<br/>
<%=this.html %>
</div>
<%=linkURL %>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>utility/baike/list.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>