<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Search.aspx.cs" Inherits="KeLin.WebSite.yuehui.Book_Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("约会搜索|约会搜索|Search"), wmlVo));//显示头 

StringBuilder strhtml=new StringBuilder ();
if(ver=="1"){

strhtml.Append("<p>请输入关键字：<br/>");
strhtml.Append("<input type=\"text\" title=\"输入关键字\" name=\"key\" value=\"\"/><br/>");
strhtml.Append("选择搜索项：<br/>");
strhtml.Append("<select name=\"type\" value=\"title\">");
strhtml.Append("<option value=\"title\">约会标题</option>");
strhtml.Append("<option value=\"author\">发起人昵称</option>");
strhtml.Append("<option value=\"touserid\">发起人ID</option>");
strhtml.Append("<option value=\"days\">N天前(输入天数)</option>");
strhtml.Append("</select><br/>");
strhtml.Append("<anchor><go href=\""+this.http_start +"yuehui/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
strhtml.Append("<postfield name=\"action\" value=\"search\"/>");
strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid +"\"/>");
strhtml.Append("<postfield name=\"classid\" value=\""+this.classid +"\"/>");
strhtml.Append("<postfield name=\"key\" value=\"$(key)\"/>");
strhtml.Append("<postfield name=\"type\" value=\"$(type)\"/>");
strhtml.Append("<postfield name=\"sid\" value=\""+this.sid +"\"/>");
strhtml.Append("</go>快速搜索</anchor><br/>");

strhtml.Append("--------<br/>");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;classid="+this.classid +"\">返回上级</a> ");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"\">返回首页</a>");
strhtml.Append(WapTool.GetVS(wmlVo));
strhtml.Append("</p>");
Response.Write (strhtml);

}else{ //2.0界面


strhtml.Append("<form id=\"form1\" action=\""+this.http_start +"yuehui/book_list.aspx\" method=\"get\">");
strhtml.Append("<div class=\"subtitle\">约会搜索</div>");
strhtml.Append("<div class=\"content\">");
strhtml.Append("请输入关键字：<br/>");
strhtml.Append("<input type=\"text\" name=\"key\" value=\"\"/><br/>");
strhtml.Append("选择搜索项：<br/>");
strhtml.Append("<select name=\"type\">");
strhtml.Append("<option value=\"title\">约会标题</option>");
strhtml.Append("<option value=\"author\">发起人昵称</option>");
strhtml.Append("<option value=\"touserid\">发起人ID</option>");
strhtml.Append("<option value=\"days\">N天前(上面输入天数)</option>");
strhtml.Append("</select><br/>");
strhtml.Append("<input type=\"submit\" class=\"btn\" value=\"快速搜索\" />");
strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\" />");
strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\""+this.siteid +"\" />");
strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\""+this.classid +"\" />");
strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\""+this.sid +"\" />");
strhtml.Append("</div>");
string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代
strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;classid="+this.classid +"\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">返回首页</a>");

    strhtml.Append("</div></div>");
strhtml.Append("</form>");



if (isWebHtml != "")
{
    string strhtml_list = strhtml.ToString();
    //int s = strhtml_list.IndexOf("<div class=\"title\">");
    //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

    Response.Clear();
    Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml_list));
    Response.End();
}
Response.Write(strhtml);

}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>