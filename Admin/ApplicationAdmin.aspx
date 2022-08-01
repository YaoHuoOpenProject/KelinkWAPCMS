<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationAdmin.aspx.cs" Inherits="KeLin.WebSite.admin.ApplicationAdmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("更新缓存|更新缓存|Clear Log"), wmlVo));//显示头     
%>

<% 
    if (ver == "1")
    {
        strhtml.Append("<p>");
        if (this.INFO == "REMOVEOK")
        {
            strhtml.Append("<b>");
            strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
            strhtml.Append("</b><br/>");

        }
        strhtml.Append("<b>");
        strhtml.Append("本网站缓存状态:" + cacheinfo);        
        strhtml.Append("</b><br/>");
        
        strhtml.Append("<anchor><go href=\"" + http_start + "admin/applicationadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"remove\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("更新本网站|更新本网站|submit") + "</anchor>");
        strhtml.Append("<br />");
        strhtml.Append("<b>");
        strhtml.Append("整个系统缓存状态:" + cacheinfo);
        strhtml.Append("</b><br/>");
        if (userVo.managerlvl == "00")
        {
            strhtml.Append("<anchor><go href=\"" + http_start + "admin/applicationadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"removeall\"/>");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("</go>" + this.GetLang("更新整个系统|更新整个系统|submit") + "</anchor>");
            strhtml.Append("<br />");

        }
        strhtml.Append("<br/>---------<br/>");
        strhtml.Append("说明：缓存功能，在web.config文件中配置KL_OpenCache参数。");
        strhtml.Append("<br/>---------<br/>");

        //导航按钮

        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml" + back + ".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
        

    }
    else
    {
        
        strhtml.Append("<div class=\"subtitle\">更新缓存</div>");
        if (this.INFO == "REMOVEOK")
        {
            strhtml.Append("<div class=\"tip\"><b>");
            strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
            strhtml.Append("</b></div>");

        }
        strhtml.Append("<div class=\"subtitle\"><b>");
        strhtml.Append("本网站缓存状态:" + cacheinfo);       
        strhtml.Append("</b></div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/applicationadmin.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"remove\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"更新本网站\" />");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\"><b>");
        strhtml.Append("整个系统缓存状态:" + cacheinfo);
        strhtml.Append("</b></div>");
            
        if (userVo.managerlvl == "00")
        {
            strhtml.Append("<div class=\"content\">");
            strhtml.Append("<form id=\"form2\" action=\"" + http_start + "admin/applicationadmin.aspx\" method=\"get\">");
            strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"removeall\" />");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"更新整个系统\" />");
            strhtml.Append("</form>");
             strhtml.Append("</div>");

        }


        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("说明：缓存功能，在web.config文件中配置KL_OpenCache参数。");
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