<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyDomain.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyDomain" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("网站域名绑定设置|网站域名绑定设置|Domain Settings"), wmlVo));//显示头       
%>
<% 
    if (ver == "1")
    {
        Response.Write("<p>");

        if (ERROR != "")
        {

            Response.Write(ERROR);
            Response.Write("<br/>");
        }
        if (INFO == "UPOK")
        {

            Response.Write("<b>更新成功！</b>");
            Response.Write("<br/>");
        }
        else if (INFO == "ADDOK")
        {

            Response.Write("<b>保存成功！</b>");
            Response.Write("<br/>");
        }
        else if (INFO == "HASEXIST")
        {

            Response.Write("<b>域名 " + domain + " 已存在！</b>");
            Response.Write("<br/>");
        }
        else if (INFO == "CLOSE")
        {

            Response.Write("<b>暂时关闭域名绑定功能！</b>");
            Response.Write("<br/>");
        }


        if (pd == false)
        {

            Response.Write("我的域名：<br />");
            Response.Write("<input type=\"text\" name=\"domain" + r + "\" value=\"" + domain + "\" /><br/>");

            Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifyDomain.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
            Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
            Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
            Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
            Response.Write("<postfield name=\"domain\" value=\"$(domain" + r + ")\"/>");

            Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
            Response.Write("说明:将我的域名解析IP至 " + this.hostIP + "<br/>");
        }
        else
        {

            Response.Write("说明:将我的域名解析IP至 " + this.hostIP + "，然后登录空间管理后台，绑定域名。<br/>");
        }
       
        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        Response.Write(WapTool.GetVS(wmlVo));


        Response.Write("</p>");
    }
    else
    {
        Response.Write("<div class=\"subtitle\">" + this.GetLang("网站域名绑定设置|网站域名绑定设置|Domain Settings") + "</div>");
        if (ERROR != "")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write(ERROR);
            Response.Write("</div>");
        }
        if (INFO == "UPOK")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write("<b>更新成功！</b>");
            Response.Write("</div>");
        }
        else if (INFO == "ADDOK")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write("<b>保存成功！</b>");
            Response.Write("</div>");
        }
        else if (INFO == "HASEXIST")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write("<b>域名 " + domain + " 已存在！</b>");
            Response.Write("</div>");
        }
        else if (INFO == "CLOSE")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write("<b>暂时关闭域名绑定功能！</b>");
            Response.Write("</div>");
        }
        
        Response.Write("<div class=\"content\">");
        if (pd == false)
        {
            Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifyDomain.aspx\" method=\"post\">");
            Response.Write("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
            Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
            Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
            Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");

            Response.Write("我的域名：<br />");
            Response.Write("<input type=\"text\" name=\"domain\" value=\"" + domain + "\" /><br/>");

            Response.Write("<input type=\"submit\" name=\"submit\" value=\"确 定\" /><br/>");
            Response.Write("</form>");
            Response.Write("</div>");

            Response.Write("</form></div>");
            Response.Write("<div class=\"tip\">");
            Response.Write("说明:将我的域名解析IP至 " + this.hostIP);
        }
        else
        {
                      

            Response.Write("说明:将我的域名解析IP至 " + this.hostIP + "，然后登录空间管理后台，绑定域名。<br/>");
        

        }
        Response.Write("</div>");
        Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
 
        Response.Write("</div></div>");
        
        
        

          
    }


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>