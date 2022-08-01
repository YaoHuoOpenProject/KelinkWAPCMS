<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA_mod.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改型号|修改型号|modify phone model"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "ERR")
    {
        strhtml.Append("<b>提交数据错误，所有项不能为空！</b><br/>");
        
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>提交成功，感谢您的支持！(数据由超级管理员审核)</b><br/>");
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?id=" + id + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回</a>");
    }

    if (this.INFO != "OK")
    {
        strhtml.Append("品牌:" + bookVo.nameCN + "(" + bookVo.nameEN + ")<br/>");
        strhtml.Append("型号:" + bookVo.Mode + "<br/>");

        strhtml.Append("所属系列:<br/><input type=\"text\" name=\"series" + this.r + "\" value=\"" + bookVo.Series + "\"/><br/>");
        strhtml.Append("操作系统:<br/><input type=\"text\" name=\"osystem" + this.r + "\" value=\"" + bookVo.OSystem + "\"/><br/>");
        strhtml.Append("屏幕宽度:<br/><input type=\"text\" name=\"widthpx" + this.r + "\" value=\"" + bookVo.widthpx + "\"/><br/>");
        strhtml.Append("屏幕高度:<br/><input type=\"text\" name=\"heightpx" + this.r + "\" value=\"" + bookVo.heightpx + "\"/><br/>");
        strhtml.Append("浏览器支持:<br/>");
        strhtml.Append("<select name=\"version" + this.r + "\" value=\"" + bookVo.version + "\">");
        strhtml.Append("<option value=\"不清楚\">不清楚</option>");
        strhtml.Append("<option value=\"WAP1.0\">WAP1.0</option>");
        strhtml.Append("<option value=\"WAP2.0\">WAP2.0</option>");
        strhtml.Append("<option value=\"电脑WEB\">电脑WEB</option>");
        strhtml.Append("<option value=\"全支持\">全支持</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "wapstyle/mobileua_mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"series\" value=\"$(series" + r + ")\"/>");
        strhtml.Append("<postfield name=\"osystem\" value=\"$(osystem" + r + ")\"/>");
        strhtml.Append("<postfield name=\"widthpx\" value=\"$(widthpx" + r + ")\"/>");
        strhtml.Append("<postfield name=\"heightpx\" value=\"$(heightpx" + r + ")\"/>");
        strhtml.Append("<postfield name=\"version\" value=\"$(version" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/>");

    }

    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?id="+id+"&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("修改型号|修改型号|modify phone model") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "ERR")
    {
        strhtml.Append("<b>提交数据错误，所有项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>提交成功，感谢您的支持！(数据由超级管理员审核)</b><br/>");
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?id=" + id + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回</a>");
    }
    strhtml.Append("</div>");

    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("品牌:" + bookVo.nameCN + "(" + bookVo.nameEN + ")<br/>");
        strhtml.Append("型号:" + bookVo.Mode + "<br/>");

        strhtml.Append("<form name=\"f\" action=\"" + http_start + "wapstyle/mobileua_mod.aspx\" method=\"post\">");
        strhtml.Append("所属系列:<br/><input type=\"text\" name=\"series\" value=\"" + bookVo.Series + "\"/><br/>");
        strhtml.Append("操作系统:<br/><input type=\"text\" name=\"osystem\" value=\"" + bookVo.OSystem + "\"/><br/>");
        strhtml.Append("屏幕宽度:<br/><input type=\"text\" name=\"widthpx\" value=\"" + bookVo.widthpx + "\"/><br/>");
        strhtml.Append("屏幕高度:<br/><input type=\"text\" name=\"heightpx\" value=\"" + bookVo.heightpx + "\"/><br/>");
        strhtml.Append("浏览器支持:<br/>");
        strhtml.Append("<select name=\"version\">");
        strhtml.Append("<option value=\"不清楚\">不清楚</option>");
        strhtml.Append("<option value=\"WAP1.0\">WAP1.0</option>");
        strhtml.Append("<option value=\"WAP2.0\">WAP2.0</option>");
        strhtml.Append("<option value=\"电脑WEB\">电脑WEB</option>");
        strhtml.Append("<option value=\"全支持\">全支持</option>");
        strhtml.Append("</select><br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/>");
        strhtml.Append("</form></div>");
    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  
  
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?id=" + id + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");
    strhtml.Append(" ");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    
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
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


