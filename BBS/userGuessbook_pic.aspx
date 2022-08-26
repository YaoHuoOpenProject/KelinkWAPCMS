<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userGuessbook_pic.aspx.cs" Inherits="KeLin.WebSite.bbs.userGuessbook_pic" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("选择表情|选择表情|select face"), wmlVo));//显示头  
string path = "";
if (reid != "")
{
    path = "userguessbook_re.aspx?reid="+reid+"&amp;";
}
else
{
    path = "userguessbook.aspx?";
}                                                                                                                                                                   
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    
    for(int i=0;i<21;i++){

        Response.Write("<a href=\"" + this.http_start + "bbs/" + path + "action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;face=" + i + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\"><img src=\"" + this.http_start + "bbs/face/" + i + ".gif\" alt=\"" + i + ".gif\"/></a> ");
    }

    Response.Write("<br/><a href=\"" + this.http_start + "bbs/" + path + "action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "&amp;touserid=" + this.touserid + "\">" + this.GetLang("返回上级|返回上线|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("选择表情|选择表情|select face") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"content\">");
    for (int i = 0; i < 21; i++)
    {

        Response.Write("<a href=\"" + this.http_start + "bbs/" + path + "action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;face=" + i + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\"><img src=\"" + this.http_start + "bbs/face/" + i + ".gif\" alt=\"" + i + ".gif\"/></a> ");
    }

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/" + path + "action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "&amp;touserid=" + this.touserid + "\">" + this.GetLang("返回上级|返回上线|Back to list") + "</a>");

    Response.Write("</div></div>");
    
    


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


