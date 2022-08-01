<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitedCount.aspx.cs" Inherits="KeLin.WebSite.visiteCount.visitedCount" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    Response.Write(WapTool.showTop(this.GetLang("流量统计|流量统计|Visite"), wmlVo));//显示头   
%>

<%
    if (ver == "1")
    {
        strhtml.Append("<p align=\"" + classVo.position + "\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"edit\" />");
        strhtml.Append("访问总量PV：" + vtotal + "<br/>");
        strhtml.Append("访问总量UV：" + vtotal1 + "<br/>");
        
        strhtml.Append("当前在线人数：<a href=\"" + this.http_start + "bbs/onlist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=0\">" + WapTool.ToWML("[online]", wmlVo) + "</a><br/>");
        strhtml.Append("开始统计时间：" + vstarttime + "<br/>");
        strhtml.Append("总共统计天数：" + vdatecount + "<br/>");
        strhtml.Append("<hr/><table class=\"tableBorder\" cellspacing=\"1\" cellpadding=\"3\" border=\"0\" width=\"100%\">");
        strhtml.Append("<tr>");
        strhtml.Append("<td class=\"column\" width=\"10%\">.  </td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">PV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">UV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">VV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">IP.</td>");
        strhtml.Append("</tr>");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            string cl = "f";
            if (i % 2 == 0)
            {
                cl = "fh";

            }
            strhtml.Append("<tr>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].ReportName + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].PV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].UV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].VV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].IP + ".</td>");
            strhtml.Append("</tr>");

        }
        strhtml.Append("</table><br/>");

        strhtml.Append("说明:更多详细统计请登录WEB后台，有每日的地区，网络，终端等统计，还有3D图型报表哦！");
        strhtml.Append("<br/>--------<br/>");
        strhtml.Append("浏览量(PV)： 页面浏览量（Page View），访客每打开一次页面记录为 1 个PV。<br />--------<br/>");
        strhtml.Append("独立访客(UV)：独立访客数（Unique Visitor），1 天内相同访客多次访问您的网站记录为 1 个UV。<br />--------<br/>");
        strhtml.Append("访问次数(VV)：访客访问次数（Visit View），从访客来到网站到最终关闭网站的所有页面，记录为 1 次访问；若访问超过 30 分钟，则计算为本次访问结束。<br />--------<br/>");
        strhtml.Append("独立IP(IP)： 1 天内相同的IP地址访问，记录为 1 个IP。同一地区移动网关的IP地址可能是一样的。<br />");
        strhtml.Append("--------<br/>");
        strhtml.Append("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        //输出
        Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));  
    }
    else
    {
        strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");
        
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "visiteCount/visiteCount.aspx\" method=\"get\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"edit\" />");
        //strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("访问总量PV：" + vtotal + "<br/>");
        strhtml.Append("访问总量UV：" + vtotal1 + "<br/>");
        strhtml.Append("当前在线人数：<a href=\""+this.http_start+"bbs/onlist.aspx?action=class&amp;siteid="+this.siteid+"&amp;classid=0&amp;sid="+this.sid+"\">" + WapTool.ToWML("[online]", wmlVo) + "</a><br/>");
        strhtml.Append("开始统计时间：" + vstarttime + "<br/>");
        strhtml.Append("总共统计天数：" + vdatecount + "<br/>");

        strhtml.Append("<hr/><table class=\"tableBorder\" cellspacing=\"1\" cellpadding=\"3\" border=\"0\" width=\"100%\">");
        strhtml.Append("<tr>");
        strhtml.Append("<td class=\"column\" width=\"10%\">  .</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">PV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">UV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">VV.</td>");
        strhtml.Append("<td class=\"column\" width=\"10%\">IP.</td>");
        strhtml.Append("</tr>");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            string cl = "f";
            if (i % 2 == 0)
            {
                cl = "fh";

            }
            strhtml.Append("<tr>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].ReportName + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].PV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].UV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].VV + ".</td>");
            strhtml.Append("<td class=\"" + cl + "\"> " + listVo[i].IP + ".</td>");
            strhtml.Append("</tr>");

        }
        strhtml.Append("</table><br/>");

        strhtml.Append("说明:更多详细统计请登录WEB后台，有每日的地区，网络，终端等统计，还有3D图型报表哦！");
        strhtml.Append("<br/>--------<br/>");
        strhtml.Append("浏览量(PV)： 页面浏览量（Page View），访客每打开一次页面记录为 1 个PV。<br />--------<br/>");
        strhtml.Append("独立访客(UV)：独立访客数（Unique Visitor），1 天内相同访客多次访问您的网站记录为 1 个UV。<br />--------<br/>");
        strhtml.Append("访问次数(VV)：访客访问次数（Visit View），从访客来到网站到最终关闭网站的所有页面，记录为 1 次访问；若访问超过 30 分钟，则计算为本次访问结束。<br />--------<br/>");
        strhtml.Append("独立IP(IP)： 1 天内相同的IP地址访问，记录为 1 个IP。同一地区移动网关的IP地址可能是一样的。<br />");
        strhtml.Append("--------<br/>");
        strhtml.Append("</form></div>");

        
        //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
        //导航按钮
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
     
        strhtml.Append("</div></div>");

        //输出
        Response.Write(strhtml);     
    }
     %>

<%
Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>