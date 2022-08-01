<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConfig_Code.aspx.cs" Inherits="KeLin.WebSite.admin.WebConfig_Code" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("伪验证码设置|伪验证码设置|website setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
%>
<b>伪验证码</b>是指：WEB后台登录中“验证码”，WAP后台“第一次需要录入我的密码”需要输入此值，达到更高安全级别。<br />
KL_CHECKCODE="" 默认为空。<br />
如果你设置了此值，那么超级管理员进入WEB和WAP管理后台都需要验证此值。一旦被人知道，可以考虑你的空间已被人入侵！


<br /><br />
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

    Response.Write("<div class=\"subtitle\">" + this.GetLang("伪验证码设置|伪验证码设置|website setup") + "</div>");
    Response.Write("<div class=\"content\">");
   %>
<b>伪验证码</b>是指：WEB后台登录中“验证码”，WAP后台“第一次需要录入我的密码”需要输入此值，达到更高安全级别。<br />
KL_CHECKCODE="" 默认为空。<br />
如果你设置了此值，那么超级管理员进入WEB和WAP管理后台都需要验证此值。一旦被人知道，可以考虑你的空间已被人入侵！
<br /><br />
说明:网站全局配置文件为:web.config 在网站根目录下。需要超级管理员用ftp或远程进入服务器空间，打开此文件进行配置，有详细的中文说明。
   <%
 
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back+".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


