<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.adlink.admin_WAPmodify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改广告地址|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("广告语或广告地址不能为空！|广告语或广告地址不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }

    Response.Write(this.GetLang("广告语|*广告语|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title"+r+"\" value=\"" + bookVo.book_title + "\"/><br/>");
    Response.Write("(可用图片地址，如:http://abc.com/ad/1.jpg) <br/>");
    Response.Write(this.GetLang("广告地址|广告地址|URL address") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + bookVo.book_content + "\" /><br/>");
    Response.Write("(&amp;不用写成&amp;amp; 链接本站地址后面加入可防掉线！)<br/>");
    Response.Write("显示跳转提示:<select name=\"hasmoney" + r + "\" value=\"" + bookVo.hasMoney + "\">");   
    Response.Write("<option value=\"0\">0_否</option>");
    Response.Write("<option value=\"1\">1_是</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("点击送多少币|点击送多少币|send money") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"sendmoney"+r+"\" value=\"" + bookVo.sendMoney + "\"/><br/>");
    Response.Write(this.GetLang("送币相隔时间|送币相隔时间|送币相隔时间") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_pub" + r + "\" value=\"" + bookVo.book_pub + "\"/><br/>");
    Response.Write("(单位小时,0为不送)<br/>");
    
    Response.Write("<anchor><go href=\""+http_start+"adlink/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    Response.Write("<postfield name=\"hasmoney\" value=\"$(hasmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"sendmoney\" value=\"$(sendmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub" + r + ")\"/>");
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("广告语或广告地址不能为空！|標題或內容不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "adlink/admin_WAPmodify.aspx\" method=\"post\">");
    Response.Write(this.GetLang("广告语|*广告语|Title") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");
    Response.Write("(可用图片地址，如:http://abc.com/ad/1.jpg) <br/>");
    Response.Write(this.GetLang("广告地址|广告地址|URL address") + ":<br/>");
    Response.Write("<input type=\"text\"  name=\"book_content\" value=\"" + bookVo.book_content + "\" /><br/>");
    Response.Write("显示跳转提示:<select name=\"hasmoney\">");
    Response.Write("<option value=\"" + bookVo.hasMoney + "\">" + bookVo.hasMoney + "</option>");
    Response.Write("<option value=\"0\">0_否</option>");
    Response.Write("<option value=\"1\">1_是</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("点击送多少币|点击送多少币|send money") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"sendmoney\" value=\"" + bookVo.sendMoney + "\"/><br/>");
    Response.Write(this.GetLang("送币相隔时间|送币相隔时间|送币相隔时间") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_pub\" value=\"" + bookVo.book_pub + "\"/><br/>");
    Response.Write("(单位小时,0为不送)<br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


