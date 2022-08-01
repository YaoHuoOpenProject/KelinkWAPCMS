<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAPmod.aspx.cs" Inherits="KeLin.WebSite.album.admin_guestlistWAPmod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改回复|修改回复|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "album/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
        
    Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_content"+r+"\" value=\""+bookVo.content+"\" /><br/>");
    Response.Write("<anchor><go href=\""+http_start+"album/admin_guestlistWAPmod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");	
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "album/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write("<a href=\"" + this.http_start + "album/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "album/admin_guestlistWAPmod.aspx\" method=\"post\">");
    
    Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
    Response.Write("<textarea name=\"book_content\" rows=\"12\" style=\"width:100%\">" + bookVo.content + "</textarea><br/>");    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "album/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


