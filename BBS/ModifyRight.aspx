<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyRight.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyRight" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("角色权限访问设置|角色权限访问设置|close"), wmlVo));//显示头       

if (ver == "1")
{
    Response.Write("<p>");
    
    if (ERROR != "")
    {
        
        Response.Write(ERROR);
        Response.Write("<br/>");
    }

    else if (INFO == "OK")
    {
       
        Response.Write("<b>保存成功！</b>");
        Response.Write("<br/>");
    }
    
   

    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"siteright" + r + "\" value=\"" + siteright + "\"><option value=\"0\">0_关闭</option><option value=\"1\">1_启用</option></select><br/>");



    Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifyRight.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"siteright\" value=\"$(siteright" + r + ")\"/>"); 
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");



    Response.Write("<br/>说明：此功能是按角色对应的权限进行访问栏目，请慎用。详细设置请登录IE管理后台，【用户管理】→【角色管理】有详细的配置！<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));


    Response.Write("</p>");


}
else
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("角色权限访问设置|角色权限访问设置|close") + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }

    else if (INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>保存成功！</b>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifyRight.aspx\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
    
    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"siteright\" value=\"" + siteright + "\"><option value=\"" + this.siteright + "\">" + this.siteright + "</option><option value=\"0\">0_关闭</option><option value=\"1\">1_启用</option></select><br/>");

    Response.Write("<input type=\"submit\" name=\"submit\" value=\"确 定\" /><br/>");
    Response.Write("</form>");

    Response.Write("<br/>说明：此功能是按角色对应的权限进行访问栏目，请慎用。详细设置请登录IE管理后台，【用户管理】→【角色管理】有详细的配置！<br/>");
    Response.Write("</div>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  
    Response.Write("</div></div>");
}


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>