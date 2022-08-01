<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA_add.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("添加型号|添加型号|add phone model"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "ERR")
    {
        strhtml.Append("<b>*项不能为空！</b><br/>");
        
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>提交成功，感谢您的支持！(数据由超级管理员审核)</b><br/>");
    }

    if (this.INFO != "OK")
    {
        
        strhtml.Append("中文品牌:<br/>");
        strhtml.Append("<select name=\"namecn" + this.r + "\" value=\"\">");
        strhtml.Append(this.band);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("英文品牌:<br/><input type=\"text\" name=\"nameen" + this.r + "\" value=\"" + bookVo.nameEN + "\"/><br/>");
        strhtml.Append("手机型号:<br/><input type=\"text\" name=\"mode" + this.r + "\" value=\"" + bookVo.Mode + "\"/><br/>");
        strhtml.Append("所属系列:<br/>");
        strhtml.Append("<select name=\"series" + this.r + "\" value=\"\">");
        strhtml.Append(this.serial);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");

        strhtml.Append("操作系统:<br/>");
        strhtml.Append("<select name=\"osystem" + this.r + "\" value=\"\">");
        strhtml.Append(this.platform);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");

        strhtml.Append("手机屏幕:<br/>");
        strhtml.Append("<select name=\"screen" + this.r + "\" value=\"0X0\">");
        strhtml.Append(this.screen);
        strhtml.Append("<option value=\"0X0\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
        
        strhtml.Append("浏览器支持:<br/>");
        strhtml.Append("<select name=\"version" + this.r + "\" value=\"" + bookVo.version + "\">");
        strhtml.Append("<option value=\"不清楚\">不清楚</option>");
        strhtml.Append("<option value=\"WAP1.0\">WAP1.0</option>");
        strhtml.Append("<option value=\"WAP2.0\">WAP2.0</option>");
        strhtml.Append("<option value=\"电脑WEB\">电脑WEB</option>");
        strhtml.Append("<option value=\"全支持\">全支持</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "wapstyle/mobileua_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"series\" value=\"$(series" + r + ")\"/>");
        strhtml.Append("<postfield name=\"osystem\" value=\"$(osystem" + r + ")\"/>");
        strhtml.Append("<postfield name=\"screen\" value=\"$(screen" + r + ")\"/>");
        strhtml.Append("<postfield name=\"version\" value=\"$(version" + r + ")\"/>");
        strhtml.Append("<postfield name=\"namecn\" value=\"$(namecn" + r + ")\"/>");
        strhtml.Append("<postfield name=\"nameen\" value=\"$(nameen" + r + ")\"/>");
        strhtml.Append("<postfield name=\"mode\" value=\"$(mode" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/>");

    }

    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");
    strhtml.Append(" ");
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("添加型号|添加型号|add phone model") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "ERR")
    {
        strhtml.Append("<b>提交数据错误，所有项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>提交成功，感谢您的支持！(数据由超级管理员审核)</b><br/>");
    }

    strhtml.Append("</div>");
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "wapstyle/mobileua_add.aspx\" method=\"post\">");
        strhtml.Append("中文品牌*:<br/>");
        strhtml.Append("<select name=\"namecn\">");
        strhtml.Append("<option value=\"" + bookVo.nameCN + "\">" + bookVo.nameCN + "</option>");
        strhtml.Append(this.band);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("英文品牌:<br/><input type=\"text\" name=\"nameen\" value=\"" + bookVo.nameEN + "\"/><br/>");
        strhtml.Append("手机型号:<br/><input type=\"text\" name=\"mode\" value=\"" + bookVo.Mode + "\"/><br/>");
        strhtml.Append("所属系列:<br/>");
        strhtml.Append("<select name=\"series\">");
        strhtml.Append("<option value=\"" + bookVo.Series + "\">" + bookVo.Series + "</option>");
        strhtml.Append(this.serial);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("操作系统:<br/>");
        strhtml.Append("<select name=\"osystem\">");
        strhtml.Append("<option value=\"" + bookVo.OSystem + "\">" + bookVo.OSystem + "</option>");
        strhtml.Append(this.platform);
        strhtml.Append("<option value=\"\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("屏幕宽度:<br/>");
        strhtml.Append("<select name=\"screen\">");
        strhtml.Append("<option value=\"" + bookVo.widthpx + "X" + bookVo.heightpx + "\">" + bookVo.widthpx + "X" + bookVo.heightpx + "</option>");
        strhtml.Append(this.screen);
        strhtml.Append("<option value=\"0X0\">留空-暂时不知道</option>");
        strhtml.Append("</select><br/>");
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
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/>");

        strhtml.Append("</form></div>");

    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append(" ");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");

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


