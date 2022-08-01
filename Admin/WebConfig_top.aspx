<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConfig_top.aspx.cs" Inherits="KeLin.WebSite.admin.WebConfig_top" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("全局顶和底部内容|全局顶和底部内容|website setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
%>
全局顶和底部内容是指：所有页面最顶部和最底部处显示内容，支持UBB方法。配置在web.config中。<br />
KL_PAGE_TOP:所有网站页面顶部内容。<br />
KL_PAGE_DOWN:所有网站页面底部内容。<br />
KL_PAGE_NOTVIP_TOP:所有非VIP网站页面顶部内容。<br />
KL_PAGE_NOTVIP_DOWN:所有非VIP网站页面底部内容。<br />
配置网站是否为VIP网站，登录WEB后台，超级管理员区，配置网站。<br /><br />
说明:网站全局配置文件为:web.config 在网站根目录下。需要超级管理员用ftp或远程进入服务器空间，打开此文件进行配置，有详细的中文说明。

<%  
    Response.Write("<br/>----------<br/>");
    Response.Write("<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back+".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("全局顶和底部内容|全局顶和底部内容|website setup") + "</div>");
    Response.Write("<div class=\"content\">");
   %>
全局顶和底部内容是指：所有页面最顶部和最底部处显示内容，支持UBB方法。配置在web.config中。<br />
KL_PAGE_TOP:所有网站页面顶部内容。<br />
KL_PAGE_DOWN:所有网站页面底部内容。<br />
KL_PAGE_NOTVIP_TOP:所有非VIP网站页面顶部内容。<br />
KL_PAGE_NOTVIP_DOWN:所有非VIP网站页面底部内容。<br />
配置网站是否为VIP网站，登录WEB后台，超级管理员区，配置网站。<br /><br />
说明:网站全局配置文件为:web.config 在网站根目录下。需要超级管理员用ftp或远程进入服务器空间，打开此文件进行配置，有详细的中文说明。
   <%
 
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back+".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


