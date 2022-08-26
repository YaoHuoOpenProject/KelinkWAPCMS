<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifySMS_close.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifySMS_close" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("注册开关设置|注册开关设置|close"), wmlVo));//显示头       

if (ver == "1")
{
    Response.Write("<p>");
    
    if (ERROR != "")
    {
        
        Response.Write(ERROR);
        Response.Write("<br/>");
    }
    if (INFO == "UPOK")
    {
        
        Response.Write("<b>更新成功！</b>");
        Response.Write("<br/>");
    }
    else if (INFO == "ADDOK")
    {
       
        Response.Write("<b>保存成功！</b>");
        Response.Write("<br/>");
    }
    
   

    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"isclose" + r + "\" value=\"" + strisclose + "\"><option value=\"0\">0_只开手动注册</option><option value=\"1\">1_只开短信注册</option><option value=\"2\">2_关闭所有注册</option><option value=\"3\">3_显示短信注册和手动注册</option><option value=\"4\">4_只开手动注册+邀请码验证</option><option value=\"5\">5_只开手动注册+邮件验证</option></select><br/>");

    Response.Write("详细说明：<br />");
    Response.Write("<input type=\"text\" name=\"remark" + r + "\" value=\"" + strremark + "\" /><br/>");
    
    Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifySMS_close.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"edit\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"isclose\" value=\"$(isclose" + r + ")\"/>"); 
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
 
    

    Response.Write("<br/>说明：如果关闭网站注册请选 2 ，并写上关闭注册说明！<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));


    Response.Write("</p>");


}
else
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("注册开关设置|注册开关设置|close") + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    if (INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b>");
        Response.Write("</div>");
    }
    else if (INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>保存成功！</b>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifySMS_close.aspx\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"edit\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
    
    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"isclose\" value=\"" + strisclose + "\"><option value=\"" + this.strisclose + "\">" + this.strisclose + "</option><option value=\"0\">0_只开手动注册</option><option value=\"1\">1_只开短信注册</option><option value=\"2\">2_关闭所有注册</option><option value=\"3\">3_显示短信注册和手动注册</option><option value=\"4\">4_只开手动注册+邀请码验证</option><option value=\"5\">5_只开手动注册+邮件验证</option></select><br/>");
    Response.Write("详细说明：<br />");
    Response.Write("<input type=\"text\" name=\"remark\" value=\"" + strremark + "\" /><br/>");
    
    Response.Write("<input type=\"submit\" name=\"submit\" value=\"确 定\" /><br/>");
    Response.Write("</form>");

    Response.Write("<br/>说明：如果关闭网站注册请选 2 ，并写上关闭注册说明！<br/>");
    Response.Write("</div>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
}


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>