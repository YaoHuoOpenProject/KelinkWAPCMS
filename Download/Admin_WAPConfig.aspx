<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPConfig.aspx.cs" Inherits="KeLin.WebSite.download.admin_WAPConfig" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("栏目配置|栏目配置|Manage Ads"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel"+r+"\" value=\""+classVo.ismodel+"\"/><br/>");
    Response.Write(this.GetLang("列表是否显示栏目名称|列表是否显示栏目名称|Two top of the list") + "*:<br/>");
    Response.Write("<select name=\"articlenum" + r + "\" value=\"" + classVo.articlenum + "\">");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("默认机型适配|默认机型适配|默认机型适配") + "*:<br/>");
    Response.Write("<select name=\"sp" + r + "\" value=\"" + classVo.topicID + "\">");
    Response.Write("<option value=\"0\">0_关闭自动适配</option>");
    Response.Write("<option value=\"1\">1_按平台适配</option>");
    Response.Write("<option value=\"2\">2_按分辨率适配</option>");
    Response.Write("<option value=\"3\">3_按游戏系列适配</option>");
    Response.Write("<option value=\"4\">4_按平台+分辨率适配</option>");
    Response.Write("<option value=\"5\">5_按1,2,3条件或适配</option>");
    Response.Write("<option value=\"6\">6_按1,2,3条件与适配</option>");
    Response.Write("</select><br/>");
    Response.Write("<anchor><go href=\""+http_start+"download/admin_WAPConfig.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"articlenum\" value=\"$(articlenum" + r + ")\"/>");
    Response.Write("<postfield name=\"ismodel\" value=\"$(ismodel" + r + ")\"/>");
    Response.Write("<postfield name=\"sp\" value=\"$(sp" + r + ")\"/>");
    
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.GetLang("栏目配置|栏目配置|Manage Ads") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\""+this.http_start+"download/admin_WAPConfig.aspx\" method=\"post\">");
    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel\" value=\"" + classVo.ismodel + "\"/><br/>");
    
    Response.Write(this.GetLang("列表是否显示栏目名称|列表是否显示栏目名称|Two top of the list") + ":<br/>");
    
    Response.Write("<select name=\"articlenum\">");
    Response.Write("<option value=\"" + classVo.articlenum + "\">" + classVo.articlenum + "</optiong>");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("默认机型适配|默认机型适配|默认机型适配") + "*:<br/>");
    Response.Write("<select name=\"sp\">");
    Response.Write("<option value=\"" + classVo.topicID + "\">" + classVo.topicID + "</option>");
    Response.Write("<option value=\"0\">0_关闭自动适配</option>");
    Response.Write("<option value=\"1\">1_按平台适配</option>");
    Response.Write("<option value=\"2\">2_按分辨率适配</option>");
    Response.Write("<option value=\"3\">3_按游戏系列适配</option>");
    Response.Write("<option value=\"4\">4_按平台+分辨率适配</option>");
    Response.Write("<option value=\"5\">5_按1,2,3条件或适配</option>");
    Response.Write("<option value=\"6\">6_按1,2,3条件与适配</option>");
    Response.Write("</select><br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/><br/>");
    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("</form></div>");
    Response.Write("<div class=\"mylink\">");
    Response.Write("<br/><a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


