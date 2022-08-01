<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SysSetDefaultWEB00.aspx.cs" Inherits="KeLin.WebSite.admin.SysSetDefaultWEB00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("系统WEB设置|系统WEB设置|system web setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }

    Response.Write("<b>WEB界面显示</b><br/>");
    Response.Write("建站系统网站标题：<br/>");
    Response.Write("<input type=\"text\" name=\"title" + r + "\" value=\"" + bookVo.title + "\"/><br/>");

    Response.Write("网站LOGO(175X85)：<br/>");
    Response.Write("<input type=\"text\" name=\"siteimg" + r + "\" value=\"" + bookVo.siteimg + "\"/><br/>");

    Response.Write("网站横标图(500X80)：<br/>");
    Response.Write("<input type=\"text\" name=\"sitebanner" + r + "\" value=\"" + bookVo.sitebanner + "\"/><br/>");

    Response.Write("网站底部信息：<br/>");
    Response.Write("<input type=\"text\" name=\"copyright" + r + "\" value=\"" + bookVo.copyright + "\"/><br/>");

    Response.Write("<b>以下联系方式很重要，网站锁定或过期时显示</b><br/>");

    Response.Write("系统邮件：<br/>");
    Response.Write("<input type=\"text\" name=\"email" + r + "\" value=\"" + bookVo.email + "\"/><br/>");

    Response.Write("联系电话：<br/>");
    Response.Write("<input type=\"text\" name=\"tel" + r + "\" value=\"" + bookVo.tel + "\"/><br/>");

    
    Response.Write("<anchor><go href=\""+http_start+"admin/syssetdefaultweb00.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"title\" value=\"$(title" + r + ")\"/>");
    Response.Write("<postfield name=\"siteimg\" value=\"$(siteimg" + r + ")\"/>");
    Response.Write("<postfield name=\"sitebanner\" value=\"$(sitebanner" + r + ")\"/>");
    Response.Write("<postfield name=\"copyright\" value=\"$(copyright" + r + ")\"/>");
    Response.Write("<postfield name=\"email\" value=\"$(email" + r + ")\"/>");
    Response.Write("<postfield name=\"tel\" value=\"$(tel" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
    Response.Write("说明:图片直接在WEB电脑IE后台上传操作！<br/>");
    Response.Write("------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("系统WEB设置|系统WEB设置|system web setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/syssetdefaultweb00.aspx\" method=\"post\">");
    Response.Write("<b>WEB界面显示</b><br/>");
    Response.Write("建站系统网站标题：<br/>");
    Response.Write("<input type=\"text\" name=\"title\" value=\"" + bookVo.title + "\"/><br/>");

    Response.Write("网站LOGO(175X85)：<br/>");
    Response.Write("<input type=\"text\" name=\"siteimg\" value=\"" + bookVo.siteimg + "\"/><br/>");

    Response.Write("网站横标图(500X80)：<br/>");
    Response.Write("<input type=\"text\" name=\"sitebanner\" value=\"" + bookVo.sitebanner + "\"/><br/>");

    Response.Write("网站底部信息：<br/>");
    Response.Write("<input type=\"text\" name=\"copyright\" value=\"" + bookVo.copyright + "\"/><br/>");

    Response.Write("<b>以下联系方式很重要，网站锁定或过期时显示</b><br/>");

    Response.Write("系统邮件：<br/>");
    Response.Write("<input type=\"text\" name=\"email\" value=\"" + bookVo.email + "\"/><br/>");

    Response.Write("联系电话：<br/>");
    Response.Write("<input type=\"text\" name=\"tel\" value=\"" + bookVo.tel + "\"/><br/>");


    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");

    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"tip\">");
    Response.Write("说明:图片直接在WEB电脑IE后台上传操作！</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


