<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_out.aspx.cs" Inherits="KeLin.WebSite.games.clan.user_out" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("退出成员|退出成员|Content of the guangbo"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + this.http_start + "clan/user_out.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">确定退出</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("退出成功！|退出成功！|Deleted successfully!") + "</b><br/>");
        

    }
    else
    {
        Response.Write(this.INFO);
    }

    Response.Write("<br/><a href=\"" + this.http_start + "clan/my.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">返回家族</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("退出操作|退出操作|delete") + "</div>");
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\"><a href=\"" + this.http_start + "clan/user_out.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">确定退出</a></div>");


    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>" + this.GetLang("退出成功！|退出成功！|Deleted successfully!") + "</b></div>");


    }
    else
    {
        Response.Write("<div class=\"tip\">"+this.INFO+"</div>");
    }

    Response.Write("<div class=\"bt1\"><a href=\"" + this.http_start + "clan/my.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">返回家族</a>");
    Response.Write("</div>");





}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


