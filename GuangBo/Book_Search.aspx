<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Search.aspx.cs" Inherits="KeLin.WebSite.guangbo.Book_Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("广播搜索|广播搜索|Search"), wmlVo));//显示头 
if(ver=="1"){
%>
<p>请输入关键字：<br/>
<input type="text" title="输入关键字" name="key" value=""/><br/>
选择搜索项：<br/>
<select name="type" value="title">
<option value="title">广播标题</option>
<option value="content">广播内容</option>
<option value="days">N天前(输入天数)</option>
</select><br/>
<anchor><go href="<%=http_start%>guangbo/book_list.aspx" method="get" accept-charset="utf-8">
<postfield name="action" value="search"/>
<postfield name="siteid" value="<%=siteid%>"/>
<postfield name="classid" value="<%=classid%>"/>
<postfield name="key" value="$(key)"/>
<postfield name="type" value="$(type)"/>
<postfield name="sid" value="<%=sid%>"/>
</go>快速搜索</anchor><br/>

--------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>
<%Response.Write(WapTool.GetVS(wmlVo)); %>
</p>

<%
}else{ //2.0界面
%>

<form id="form1" action="<%=http_start%>guangbo/book_list.aspx" method="get">
<div class="title">广播搜索</div>
<div class="content">
请输入关键字：<br/>
<input type="text" name="key" value=""/><br/>
选择搜索项：<br/>
<select name="type">
<option value="title">广播标题</option>
<option value="content">广播内容</option>
<option value="days">N天前(上面输入天数)</option>
</select><br/>
<input type="submit" value="快速搜索" />
<input type="hidden" name="action" value="search" />
<input type="hidden" name="siteid" value="<%=siteid%>" />
<input type="hidden" name="classid" value="<%=classid%>" />
<input type="hidden" name="sid" value="<%=sid%>" />
</div>

<div class="mylink">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%>">返回上级</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>
<%Response.Write(WapTool.GetVS(wmlVo)); %>
</div>
</form>


<%
}
    
//Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>