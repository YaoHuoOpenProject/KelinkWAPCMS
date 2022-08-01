<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="KeLin.WebSite.video.download" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("下载文件", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   Response.Write("<p align=\"" + classVo.position + "\">");
   Response.Write(ERROR);

    Response.Write("正在下载中...<br/>");
    Response.Write("<a href=\"" + this.http_start + "video/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;lpage="+this.lpage+"" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    

}else{ //2.0



    Response.Write("<div class=\"subtitle\">下载文件</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(ERROR);
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("正在下载中...");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "video/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
     
    Response.Write("</div></div>");

    
    



}
Response.Write(WapTool.showDown(wmlVo)); %>
