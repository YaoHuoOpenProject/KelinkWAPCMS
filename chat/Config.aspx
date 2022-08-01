<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="KeLin.WebSite.chat.Config" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("设置|设置|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);



    Response.Write(this.GetLang("自动刷新时间|自动刷新时间|自动刷新时间") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"chattimes" + r + "\" value=\"" + chattimes + "\" /><br/>");
   
    Response.Write("<anchor><go href=\"" + http_start + "chat/config.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"chattimes\" value=\"$(chattimes" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>" + this.GetLang("更 新|更 新|submit") + "</anchor><br/><br/>");

    Response.Write("说明：此功能需要手机支持cookies功能，默认为" + par2 + "秒刷新一次。<br/>");
    Response.Write("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("设置|设置|Add operation") + "</div>");

    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">设置成功成功！</div>");
    }


    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "chat/config.aspx\" method=\"post\">");
    Response.Write(this.GetLang("自动刷新时间|自动刷新时间|自动刷新时间") + "*:<br/>");
    Response.Write("<input type=\"text\" class=\"txt\"  name=\"chattimes\" value=\"" + chattimes + "\" /><br/>");


    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("更 新|更 新|submit") + "\"/></form>");
    Response.Write("</div>");

    Response.Write("<div class=\"tip\">说明：此功能需要手机支持cookies功能，默认为" + par2 + "秒刷新一次。</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


