<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadvertise.aspx.cs" Inherits="KeLin.WebSite.games.admin_WAPadvertise" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("管理广告|管理廣告|Manage Ads"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }


    Response.Write(this.GetLang("二级列表顶部|二級列表頂部|Two top of the list") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"secondShowTop" + r + "\" value=\"" + adVo.secondShowTop + "\"/><br/>");
    Response.Write(this.GetLang("二级列表底部|二級列表底部|Two down of the list") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"secondShowDown" + r + "\" value=\"" + adVo.secondShowDown + "\"/><br/>");
    Response.Write(this.GetLang("三级内容顶部|三級內容頂部|Three top of the list") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"threeShowTop" + r + "\" value=\"" + adVo.threeShowTop + "\"/><br/>");
    Response.Write(this.GetLang("三级内容底部|三級內容底部|Three down of the list") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"threeShowDown" + r + "\" value=\"" + adVo.threeShowDown + "\" /><br/>");
    Response.Write("<anchor><go href=\""+http_start+"games/admin_WAPadvertise.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"secondShowTop\" value=\"$(secondShowTop" + r + ")\"/>");
    Response.Write("<postfield name=\"secondShowDown\" value=\"$(secondShowDown" + r + ")\"/>");
    Response.Write("<postfield name=\"threeShowTop\" value=\"$(threeShowTop" + r + ")\"/>");
    Response.Write("<postfield name=\"threeShowDown\" value=\"$(threeShowDown" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\""+this.http_start+"games/admin_WAPadvertise.aspx\" method=\"post\">");
    Response.Write(this.GetLang("二级列表顶部|二級列表頂部|Two top of the list") + "*:<br/>");
    Response.Write("<textarea name=\"secondShowTop\" rows=\"5\" style=\"width:100%\">" + adVo.secondShowTop + "</textarea><br/>"); 
    Response.Write(this.GetLang("二级列表底部|二級列表底部|Two down of the list") + ":<br/>");
    Response.Write("<textarea name=\"secondShowDown\" rows=\"5\" style=\"width:100%\">" + adVo.secondShowDown + "</textarea><br/>"); 
    Response.Write(this.GetLang("三级内容顶部|三級內容頂部|Three top of the list") + ":<br/>");
    Response.Write("<textarea name=\"threeShowTop\" rows=\"5\" style=\"width:100%\">" + adVo.threeShowTop + "</textarea><br/>"); 
    Response.Write(this.GetLang("三级内容底部|三級內容底部|Three down of the list") + "*:<br/>");
    Response.Write("<textarea name=\"threeShowDown\" rows=\"5\" style=\"width:100%\">" + adVo.threeShowDown + "</textarea><br/>");

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


