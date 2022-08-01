<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="typelist.aspx.cs" Inherits="KeLin.WebSite.Utility.baike.typelist" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("生活百科全书|生活百科全书|生活百科全书"), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="left">
<%=this.html %>

----------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><%=this.GetLang("生活百科全书|生活百科全书|生活百科全书")%></div>

<div class="content">
类别<br/>

<%=this.html1 %>
</div>


<div class="btBox"><div class="bt2">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>