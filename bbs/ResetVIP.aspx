﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetVIP.aspx.cs" Inherits="KeLin.WebSite.bbs.ResetVIP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    Response.Write(WapTool.showTop(this.GetLang("过期VIP变普通会员|过期VIP变普通会员|Change My NickName"), wmlVo));//显示头 
    StringBuilder strhtml = new StringBuilder();
    if (ver == "1")
    {
        strhtml.Append("<p>");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

        Response.Write("<br/><a href=\"" + this.http_start + "bbs/ResetVIP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">进入WAP2.0界面操作</a> <br/>");
   

        strhtml.Append("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
    }
    else
    {
        strhtml.Append("<div class=\"subtitle\">过期VIP变普通会员</div>");
        if (ERROR != "")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(ERROR);
            strhtml.Append("</div>");
        }
        if (INFO == "OK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>操作成功！</b>");
            strhtml.Append("</div>");
        }
        else if (INFO == "NULL")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>我的密码错误！</b>");
            strhtml.Append("</div>");
        }
        
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("将已过期的VIP会员，重置成普通会员。<br/>");

        
        strhtml.Append("<Form name=\"f\" action=\"" + http_start + "bbs/ResetVIP.aspx\" method=\"post\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"godoit\" />");
        strhtml.Append("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
        strhtml.Append("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
        strhtml.Append("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
        strhtml.Append("<input name=\"backurl\"  type=\"hidden\" value=\"" + this.backurl + "\"  />");
        strhtml.Append("我的密码：<br />");
        strhtml.Append("<input type=\"text\" name=\"topw\" value=\"\" maxlength=\"50\" /><br/>");
        strhtml.Append("<input type=\"submit\" id=\"submit\" class=\"btn\" name=\"submit\" value=\"确认执行\" />");
        strhtml.Append("</Form><br/>");

        
       

        
        strhtml.Append("</div>");

     


        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
      
        strhtml.Append("</div></div>");

      
        Response.Write(strhtml);
    }
    

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>



