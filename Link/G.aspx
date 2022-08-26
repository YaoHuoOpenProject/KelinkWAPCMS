<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="g.aspx.cs" Inherits="KeLin.WebSite.link.g" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//设置跳转时间
wmlVo.timer = "1";

//设置跳转地址，必需要跳转一下，才能解决防SID被对方网站获取。
wmlVo.strUrl = this.url ;


                                                                                                           
Response.Write(WapTool.showTop("欢迎光临", wmlVo));//显示头  
                                                                                                                                                                  
if (ver == "1")
{
   
         
    strhtml.Append("<p align=\"" + classVo.position + "\">");  
    //输出错误
    strhtml.Append("正在进入，请稍等... <a href=\""+this.url +"\">等不及了</a>");
    strhtml.Append("</p>");
    
    //输出
    Response.Write(strhtml);
}else{ //2.0



    strhtml.Append("<div class=\"subtitle\">欢迎光临</div>");


    strhtml.Append("<div class=\"content\">");

    strhtml.Append("正在进入，请稍等... <div class=\"bt1\"><a href=\"" + this.url + "\">等不及了</a></div>");
    strhtml.Append("</div>");


    Response.Write(strhtml);

}
Response.Write(WapTool.showDown(wmlVo)); %>