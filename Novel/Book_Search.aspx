<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Search.aspx.cs" Inherits="KeLin.WebSite.novel.Book_Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�鱾����|�鱾����|Search"), wmlVo));//��ʾͷ 
if(ver=="1"){
%>
<p>������ؼ��֣�<br/>
<input type="text" title="����ؼ���" name="key" value=""/><br/>
ѡ�������<br/>
<select name="type" value="title">
<option value="title">�鱾����</option>
<option value="author">�鱾����</option>
<option value="days">N��ǰ(��������)</option>
</select><br/>
<anchor><go href="<%=http_start%>novel/book_list.aspx" method="get" accept-charset="utf-8">
<postfield name="action" value="search"/>
<postfield name="siteid" value="<%=siteid%>"/>
<postfield name="classid" value="<%=classid%>"/>
<postfield name="key" value="$(key)"/>
<postfield name="type" value="$(type)"/>
<postfield name="sid" value="<%=sid%>"/>
</go>��������</anchor><br/>

--------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%>">�����ϼ�</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>
<%Response.Write(WapTool.GetVS(wmlVo)); %>
</p>

<%
}else{ //2.0����
%>

<form id="form1" action="<%=http_start%>novel/book_list.aspx" method="get">
<div class="subtitle">�鱾����</div>
<div class="content">
������ؼ��֣�<br/>
<input type="text" name="key" value=""/><br/>
ѡ�������<br/>
<select name="type">
<option value="title">�鱾����</option>
<option value="author">�鱾����</option>
<option value="days">N��ǰ(������������)</option>
</select><br/>
<input type="submit" class="btn" value="��������" />
<input type="hidden" name="action" value="search" />
<input type="hidden" name="siteid" value="<%=siteid%>" />
<input type="hidden" name="classid" value="<%=classid%>" />
<input type="hidden" name="sid" value="<%=sid%>" />
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%>">�����ϼ�</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>

</div></div>
</form>


<%
}
    
//Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>