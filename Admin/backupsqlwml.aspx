<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backupsqlwml.aspx.cs" Inherits="KeLin.WebSite.admin.backupsqlwml" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("数据库维护|数据库维护|Clear Log"), wmlVo));//显示头     
%>

<% 
    if (ver == "1")
    {
        strhtml.Append("<p>");
        if (this.INFO == "OK")
        {
            strhtml.Append("<b>");
            strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
            strhtml.Append("</b>");

        }

        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"delmessage\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>1.删除大于15天的站内信息(短信收藏不会删除)(可跳过)</anchor>");
        strhtml.Append("<br />");

        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"deladlink\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>2.删除大于15天广告点击记录(可跳过)</anchor>");
        strhtml.Append("<br />");

        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"delwaplog\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>3.删除大于15天会员操作记录(可跳过)</anchor>");
        strhtml.Append("<br />");
        
        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"log\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>6.压缩和删除数据库自生日志(最后一定要执行)</anchor>");
        

        strhtml.Append("<br/>--------<br/>以下一键清空功能只有超级管员有此权限");
        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"delAndCreatMSG\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>4.一键清空站内信息(短信收藏也会清掉，请三思)</anchor><br/>");

        strhtml.Append("<br/><anchor><go href=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"delAndCreat\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"back\" value=\"" + back + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>5.一键清空点击日志/在线记录/操作日志</anchor><br/>");


        strhtml.Append("<br />");
        strhtml.Append("当网站运行一段时间后，日志就会爆满，网站将无法访问。<br />");
        strhtml.Append("警告：可能因权限不足或超时导致删除失败报错！请直接登录独立主机或虚拟主机数据库管理中操作！<br />");
        strhtml.Append("<b>将此页面加入书签，时常执行之！</b><br/>");
        strhtml.Append("<a href=\"http://www.kelink.com/video/2.通过ftp软件备份网站和数据库.rar\">数据库备份还原视频教程下载(7.4M)</a><br/>");
       

        //导航按钮
       
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back +".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
        

    }
    else
    {
        
        strhtml.Append("<div class=\"subtitle\">数据库维护</div>");
        if (this.INFO == "OK")
        {
            strhtml.Append("<div class=\"tip\"><b>");
            strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
            strhtml.Append("</b></div>");

        }
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"delmessage\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"1.删除大于15天的站内信息(短信收藏不会删除)\" />");
    
        strhtml.Append("</form>");
        //strhtml.Append("</div>");
        strhtml.Append("<div class=\"line\">(可跳过)</div>");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"deladlink\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"2.删除大于15天广告点击记录\" />");
       
        strhtml.Append("</form>");
        //strhtml.Append("</div>");
        strhtml.Append("<div class=\"line\">(可跳过)</div>");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"delwaplog\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"3.删除大于15天会员操作记录\" />");
     
        strhtml.Append("</form>");
        //strhtml.Append("</div>");
        strhtml.Append("<div class=\"line\">(可跳过)</div>");
        
        //strhtml.Append("<div class=\"line1\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"log\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back  + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");        
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"6.压缩和删除数据库自生日志\" />");
        
        strhtml.Append("</form>");
        
        strhtml.Append("<div class=\"line\">(最后一定要执行)</div>");
        strhtml.Append("</div>");
        
        strhtml.Append("<div class=\"subtitle\">以下一键清空功能只有超级管员有此权限。</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"delAndCreatMSG\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<br />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"4.一键清空站内信息(短信收藏也会清掉，请三思)\" />");
        strhtml.Append("</form>");
        strhtml.Append("<br/>");

        //strhtml.Append("<div class=\"line1\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "admin/backupsqlwml.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"delAndCreat\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"back\" value=\"" + back + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<br />");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"\" value=\"5.一键清空点击日志/在线记录/操作日志\" />");
        strhtml.Append("</form>");
        strhtml.Append("</div>");

        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("说明:当网站运行一段时间后，日志就会爆满，网站将无法访问。<br />");
        strhtml.Append("警告：可能因权限不足或超时导致删除失败报错！请直接登录独立主机或虚拟主机数据库管理中操作！<br />");
        strhtml.Append("<b>将此页面加入书签，时常执行之！</b><br/>");
        strhtml.Append("<a href=\"http://www.kelink.com/video/2.通过ftp软件备份网站和数据库.rar\">数据库备份还原视频教程下载(7.4M)</a>");
        strhtml.Append("</div>");

        //导航按钮
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml"+back +".aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append("</div></div>");
        Response.Write(strhtml);
    }
    %>
        
    

<%
Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>