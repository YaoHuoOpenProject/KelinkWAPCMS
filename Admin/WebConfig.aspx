<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConfig.aspx.cs" Inherits="KeLin.WebSite.admin.WebConfig" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("网站全局配置|网站全局配置|website setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
%>
网站全局配置文件为:web.config 在网站根目录下。需要超级管理员用ftp或远程进入服务器空间，下载此文件，并用UE软件打开此文件进行配置，有详细的中文说明。
<%  
    Response.Write("<br/>----------<br/>" + TXT);
    Response.Write("<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back+".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("网站全局配置|网站全局配置|website setup") + "</div>");
    Response.Write("<div class=\"content\">");
   %>
   网站全局配置文件为:web.config 在网站根目录下。需要超级管理员用ftp或远程进入服务器空间，下载此文件，并用UE软件打开此文件进行配置，有详细的中文说明。
   
   
   <%
    Response.Write("<hr/>"+TXT);
    Response.Write("<hr/></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back+".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


