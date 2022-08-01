<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyUserName00.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyUserName00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改用户名|修改用户名|domain setup"), wmlVo));//显示头                                                                                                                                                                       
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





    Response.Write("我的用户名(只能英文)：<br/>");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "admin/modifyusername00.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
    Response.Write("说明：单用户建站系统中的个人版，DIY版才可以修改，同时只能修改正超级管理员的用户名！原因用户名即是二级域名域名中最前面的部分，不能随意改动。");
    Response.Write("------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改用户名|修改用户名|domain setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/modifyusername00.aspx\" method=\"post\">");



    Response.Write("我的用户名(只能英文)：<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" value=\"" + this.par0 + "\"/><br/>");
   
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"g\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("</form></div>");

    Response.Write("<div class=\"tip\">");
    Response.Write("说明：单用户建站系统中的个人版，DIY版才可以修改，同时只能修改正超级管理员的用户名！原因用户名即是二级域名域名中最前面的部分，不能随意改动。");
    Response.Write("</div>");
   
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


