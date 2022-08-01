<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attack.aspx.cs" Inherits="KeLin.WebSite.clan.attack" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("发动攻击|发动攻击|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("攻击成功！|攻击成功！|Successfully Update"));
        Response.Write("</b><br/>");

    }
    Response.Write("<br/><a href=\"" + this.http_start + "clan/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
   
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("发动攻击|发动攻击|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("攻击成功！|攻击成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
        Response.Write("<a href=\"" + this.http_start + "clan/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

        Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


