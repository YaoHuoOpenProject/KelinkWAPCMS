<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteShare.aspx.cs" Inherits="KeLin.WebSite.admin.SiteShare" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("网站资源共享|网站资源共享|Web Share"), wmlVo));//显示头     
%>

<% 
    if (ver == "1")
    {
        strhtml.Append("<p>");

        strhtml.Append("(1)在本站任一地址(除首页)后面加:&amp;siteurl=返回地址<br/>");
        strhtml.Append("(2)访问后，任意页面中的“返回首页”将跳转至siteurl设定地址。<br/>");
        strhtml.Append("(3)siteurl=返回地址中带有参数，请将此地址先进行URLenCode编码。<br/>");
        


        //导航按钮

        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml" + back + ".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
        

    }
    else
    {

        strhtml.Append("<div class=\"subtitle\">网站资源共享</div>");



        strhtml.Append("<div class=\"content\">");
        strhtml.Append("(1)在本站任一地址(除首页)后面加:&amp;siteurl=返回地址<br/>");
        strhtml.Append("(2)访问后，任意页面中的“返回首页”将跳转至siteurl设定地址。<br/>");
        strhtml.Append("(3)siteurl=返回地址中带有参数，请将此地址先进行URLenCode编码。<br/>");
        strhtml.Append("</div>");

    
       



        //导航按钮
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml" + back + ".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append("</div></div>");
        Response.Write(strhtml);
    }
    %>
        
    

<%
Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>