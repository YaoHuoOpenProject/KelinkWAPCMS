<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapLogout.aspx.cs" Inherits="KeLin.WebSite.WapLogout" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//显示头
StringBuilder strhtml = new StringBuilder();                                                                                                                                                                     
Response.Write(WapTool.showTop(this.GetLang("安全退出|安全退出|Security Exit"), wmlVo));
if (ver == "1")
{ 
strhtml.Append("<p align=\"left\"><br/>");
strhtml.Append("<anchor>确定安全退出？");
strhtml.Append("<go href=\""+this.http_start +"waplogout.aspx\" method=\"post\">");
strhtml.Append("<postfield name=\"isGO\" value=\"OK\"/>");
strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid +"\"/> ");
strhtml.Append("<postfield name=\"sid\" value=\""+this.sid+"\"/> ");
strhtml.Append("</go>");
strhtml.Append("</anchor>");
strhtml.Append("<br/><b>提示:安全退出后需要重新登录！</b><br/> ");

strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;classid=0\">返回首页</a>");
strhtml.Append("</p>");
Response.Write(strhtml);
}
else
{


strhtml.Append("<div class=\"subtitle\">安全退出</div>");
strhtml.Append("<div class=\"content\"><div class=\"bt1\"><a href=\"" + this.http_start + "waplogout.aspx?siteid=" + this.siteid + "&amp;isGO=OK\">确定要安全退出？</a></div>");

strhtml.Append("<div class=\"tip\"><b>提示:安全退出后需要重新登录！</b></div> ");
strhtml.Append("</div>");

string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
if (isWebHtml != "")
{
    //string strhtml_list = strhtml.ToString();
    //int s = strhtml_list.IndexOf("<div class=\"title\">");
    //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

    Response.Clear();
    Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
    Response.End();
}
    
Response.Write(strhtml);

}
//显示底部
Response.Write(WapTool.showDown(wmlVo));
%>