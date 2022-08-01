﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyUserName.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyUserName" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    Response.Write(WapTool.showTop(this.GetLang("修改会员用户名|修改会员用户名|Change My NickName"), wmlVo));//显示头 
    StringBuilder strhtml = new StringBuilder();
    if (ver == "1")
    {
        strhtml.Append("<p>");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

        Response.Write("<br/><a href=\"" + this.http_start + "bbs/modifyusername.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">进入WAP2.0界面操作</a> <br/>");
   

        strhtml.Append("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
    }
    else
    {
        strhtml.Append("<div class=\"subtitle\">修改会员用户名</div>");
        if (ERROR != "")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(ERROR);
            strhtml.Append("</div>");
        }
        if (INFO == "OK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>更新成功！</b>");
            strhtml.Append("</div>");
        }
        else if (INFO == "NULL")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>不能为空！</b>");
            strhtml.Append("</div>");
        }
        else if (INFO == "HASEXIST")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>本网站中此用户名:" + tousername + "已存在！对应会员ID：" + getuserid + "</b>");
            strhtml.Append("</div>");
        }
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

        strhtml.Append("第一步：");
        strhtml.Append("<Form name=\"f\" action=\"" + http_start + "bbs/ModifyUserName.aspx\" method=\"post\">");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"search\" />");
        strhtml.Append("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
        strhtml.Append("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
        strhtml.Append("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
        strhtml.Append("<input name=\"backurl\"  type=\"hidden\" value=\"" + this.backurl + "\"  />");
        strhtml.Append("会员ID：<br />");
        strhtml.Append("<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"submit\" value=\"查询\" />");
        strhtml.Append("</Form><br/>");

        
       
        if (toUserVo != null)
        {
            strhtml.Append("----------<br/>");
            strhtml.Append("第二步：");
            strhtml.Append("<Form name=\"f\" action=\"" + http_start + "bbs/ModifyUserName.aspx\" method=\"post\">");
            strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
            strhtml.Append("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
            strhtml.Append("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
            strhtml.Append("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
            strhtml.Append("<input name=\"touserid\"  type=\"hidden\" value=\"" + this.touserid + "\"  />");
            strhtml.Append("<input name=\"backurl\"  type=\"hidden\" value=\"" + this.backurl + "\"  />");
            strhtml.Append("用户名：<br />");
            strhtml.Append("<input type=\"text\" name=\"tousername\" value=\"" + toUserVo.username + "\" maxlength=\"20\" /><br/>");
            strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"submit\" value=\"修 改\" /><br/>");
            strhtml.Append("</Form>");
        }
        else
        {
            if (touserid != "")
            {
                strhtml.Append("会员ID：" + this.touserid + "不存在此记录！<br/>");
            }
            else
            {
               // strhtml.Append("请先查询操作。");
            }

        }

        
        strhtml.Append("</div>");

        string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  


        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
      
        strhtml.Append("</div></div>");

        if (isWebHtml != "")
        {
            //string strhtml_list = strhtml.ToString();
            //int s = strhtml_list.IndexOf("<div class=\"title\">");
            //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

            Response.Clear();
            Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
            Response.End();
        }
        
        Response.Write(strhtml);
    }
    

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>



