<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SysSetDefault00.aspx.cs" Inherits="KeLin.WebSite.admin.SysSetDefault00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("系统默认配置|系统默认配置|system setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }

    Response.Write("开放注册站长：<br/>");
    Response.Write("<select name=\"isclose" + r + "\" value=\"" + bookVo.isclose + "\">");
    Response.Write("<option value=\"0\">0_启用</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("注册页面底部说明：<br/>");
    Response.Write("<input type=\"text\" name=\"remark" + r + "\" value=\"" + bookVo.remark + "\"/><br/>");

    Response.Write("注册字符大于：<br/>");
    Response.Write("<select name=\"length" + r + "\" value=\"" + bookVo.length + "\">");
    Response.Write("<option value=\"0\">0</option>");
    Response.Write("<option value=\"1\">1</option>");
    Response.Write("<option value=\"2\">2</option>");
    Response.Write("<option value=\"3\">3</option>");
    Response.Write("<option value=\"4\">4</option>");
    Response.Write("<option value=\"5\">5</option>");
    Response.Write("<option value=\"6\">6</option>");
    Response.Write("<option value=\"7\">7</option>");
    Response.Write("<option value=\"8\">8</option>");
    Response.Write("<option value=\"9\">9</option>");
    Response.Write("<option value=\"10\">10</option>");
    Response.Write("</select><br/>");

    Response.Write("过滤用户名：<br/>");
    Response.Write("<input type=\"text\" name=\"filter" + r + "\" value=\"" + bookVo.filter + "\"/><br/>");
    Response.Write("(如果多个请用|号分开,如wap|888)<br/>");
    
    Response.Write("开放站长域名绑定：<br/>");
    Response.Write("<select name=\"isusedns" + r + "\" value=\"" + bookVo.isUseDNS + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_启用</option>");
    Response.Write("</select><br/>");
    Response.Write("(站长自己在网站后台绑定自己的域名)<br/>");

    Response.Write("默认分配空间：<br/>");
    Response.Write("<input type=\"text\" name=\"sitespace" + r + "\" value=\"" + bookVo.sitespace + "\"/><br/>");

    Response.Write("默认使用天数：<br/>");
    Response.Write("<input type=\"text\" name=\"sitedates" + r + "\" value=\"" + bookVo.siteDates + "\"/><br/>");
    Response.Write("(0为无期限)<br/>");
    
    Response.Write("默认审核网站内容：<br/>");
    Response.Write("<select name=\"ischeck" + r + "\" value=\"" + bookVo.isCheck + "\">");
    Response.Write("<option value=\"0\">0_不要</option>");
    Response.Write("<option value=\"1\">1_需要</option>");
    Response.Write("</select><br/>");
    
    Response.Write("<anchor><go href=\""+http_start+"admin/syssetdefault00.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"isclose\" value=\"$(isclose" + r + ")\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"length\" value=\"$(length" + r + ")\"/>");
    Response.Write("<postfield name=\"filter\" value=\"$(filter" + r + ")\"/>");
    Response.Write("<postfield name=\"isusedns\" value=\"$(isusedns" + r + ")\"/>");
    Response.Write("<postfield name=\"sitespace\" value=\"$(sitespace" + r + ")\"/>");
    Response.Write("<postfield name=\"sitedates\" value=\"$(sitedates" + r + ")\"/>");
    Response.Write("<postfield name=\"ischeck\" value=\"$(ischeck" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
 
    Response.Write("------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("系统默认配置|系统默认配置|system setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/syssetdefault00.aspx\" method=\"post\">");
    Response.Write("开放注册站长：<br/>");
    Response.Write("<select name=\"isclose\" value=\"" + bookVo.isclose + "\">");
    Response.Write("<option value=\"" + bookVo.isclose + "\">" + bookVo.isclose + "</option>");
    Response.Write("<option value=\"0\">0_启用</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("注册页面底部说明：<br/>");
    Response.Write("<input type=\"text\" name=\"remark\" value=\"" + bookVo.remark + "\"/><br/>");

    Response.Write("注册字符大于：<br/>");
    Response.Write("<select name=\"length\" value=\"" + bookVo.length + "\">");
    Response.Write("<option value=\"" + bookVo.length + "\">" + bookVo.length + "</option>");
    Response.Write("<option value=\"0\">0</option>");
    Response.Write("<option value=\"1\">1</option>");
    Response.Write("<option value=\"2\">2</option>");
    Response.Write("<option value=\"3\">3</option>");
    Response.Write("<option value=\"4\">4</option>");
    Response.Write("<option value=\"5\">5</option>");
    Response.Write("<option value=\"6\">6</option>");
    Response.Write("<option value=\"7\">7</option>");
    Response.Write("<option value=\"8\">8</option>");
    Response.Write("<option value=\"9\">9</option>");
    Response.Write("<option value=\"10\">10</option>");
    Response.Write("</select><br/>");

    Response.Write("过滤用户名：<br/>");
    Response.Write("<input type=\"text\" name=\"filter\" value=\"" + bookVo.filter + "\"/><br/>");
    Response.Write("(如果多个请用|号分开,如wap|888)<br/>");
    
    Response.Write("开放站长域名绑定：<br/>");
    Response.Write("<select name=\"isusedns\" value=\"" + bookVo.isUseDNS + "\">");
    Response.Write("<option value=\"" + bookVo.isUseDNS + "\">" + bookVo.isUseDNS + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_启用</option>");
    Response.Write("</select><br/>");
    Response.Write("(站长自己在网站后台绑定自己的域名)<br/>");

    Response.Write("默认分配空间：<br/>");
    Response.Write("<input type=\"text\" name=\"sitespace\" value=\"" + bookVo.sitespace + "\"/><br/>");

    Response.Write("默认使用天数：<br/>");
    Response.Write("<input type=\"text\" name=\"sitedates\" value=\"" + bookVo.siteDates + "\"/><br/>");
    Response.Write("(0为无期限)<br/>");

    Response.Write("默认审核网站内容：<br/>");
    Response.Write("<select name=\"ischeck\" value=\"" + bookVo.isCheck + "\">");
    Response.Write("<option value=\"" + bookVo.isCheck + "\">" + bookVo.isCheck + "</option>");
    Response.Write("<option value=\"0\">0_不要</option>");
    Response.Write("<option value=\"1\">1_需要</option>");
    Response.Write("</select><br/>");

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");

    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("</form></div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


