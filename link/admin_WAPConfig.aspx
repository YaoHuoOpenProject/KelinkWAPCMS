<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPConfig.aspx.cs" Inherits="KeLin.WebSite.link.admin_WAPConfig" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("本栏目配置|本栏目配置|Manage Ads"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }


    Response.Write(this.GetLang("页面跳转|页面跳转|是否跳转t") + "*:<br/>");
    Response.Write("<select name=\"top0" + r + "\" value=\"" + top0 + "\">");
    Response.Write("<option value=\"0\">0_是</option>");
    Response.Write("<option value=\"1\">1_不跳转</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("自动审核|自动审核|自动审核") + "*:<br/>");
    Response.Write("<select name=\"top1" + r + "\" value=\"" + top1 + "\">");
    Response.Write("<option value=\"0\">0_是</option>");
    Response.Write("<option value=\"1\">1_否</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("显示链入链出量|显示链入链出量|显示链入链出量") + "*:<br/>");
    Response.Write("<select name=\"top2" + r + "\" value=\"" + top2 + "\">");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    Response.Write("<anchor><go href=\""+http_start+"link/admin_WAPConfig.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"top0\" value=\"$(top0" + r + ")\"/>");
    Response.Write("<postfield name=\"top1\" value=\"$(top1" + r + ")\"/>");
    Response.Write("<postfield name=\"top2\" value=\"$(top2" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.GetLang("本栏目配置|本栏目配置|Manage Ads") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\""+this.http_start+"link/admin_WAPConfig.aspx\" method=\"post\">");
    Response.Write(this.GetLang("页面跳转|页面跳转|是否跳转t") + "*:<br/>");
    Response.Write("<select name=\"top0\">");
    Response.Write("<option value=\"" + top0 + "\">" + top0 + "</option>");
    Response.Write("<option value=\"0\">0_是</option>");
    Response.Write("<option value=\"1\">1_不跳转</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("自动审核|自动审核|自动审核") + "*:<br/>");
    Response.Write("<select name=\"top1\">");
    Response.Write("<option value=\"" + top1 + "\">" + top1 + "</option>");
    Response.Write("<option value=\"0\">0_是</option>");
    Response.Write("<option value=\"1\">1_否</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("显示链入链出量|显示链入链出量|显示链入链出量") + "*:<br/>");
    Response.Write("<select name=\"top2\">");
    Response.Write("<option value=\""+top2+"\">"+top2+"</option>");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
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
    Response.Write("<br/><a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


