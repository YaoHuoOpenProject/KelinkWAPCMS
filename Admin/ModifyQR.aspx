<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyQR.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyQR" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Buffer = true;
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
Response.Expires = 0;
Response.CacheControl = "no-cache"; 
    
Response.Write(WapTool.showTop(this.GetLang("生成二维码|生成二维码|close"), wmlVo));//显示头       

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

    Response.Write("以下为本网站二维码图，通过手机二维码识别软件拍图后能自动打开您的网站，免去录入网站域名。主要用于印刷宣传用。<br/>");

    Response.Write("<a href=\"" + QR + "\"><img src=\"" + QR + "\" alt=\"二维码图\"/></a><br/>");

    Response.Write("<br/>");

    Response.Write("录入我的域名:http://<input type=\"text\" name=\"domain" + r + "\" value=\"" + domain + "\"/><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "admin/ModifyQR.aspx?r=" + r + "\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"edit\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"domain\" value=\"$(domain"+r+")\"/>");    
    Response.Write("</go>重新生成</anchor>");



    Response.Write("<br/>说明：如果有不对，请重新生成，生成后需要可能需要清理缓存才更新哦。或点击图片进去，刷新！<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));


    Response.Write("</p>");


}
else
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("生成二维码|生成二维码|close") + "</div>");
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
    Response.Write("以下为本网站二维码图，通过手机二维码识别软件拍图后能自动打开您的网站，免去录入网站域名。主要用于印刷宣传用。<br/>");

    Response.Write("<a href=\"" + QR + "\"><img src=\"" + QR + "\" alt=\"二维码图\"/></a><br/>");

    Response.Write("<br/>");

    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/ModifyQR.aspx?r=" + r + "\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"edit\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
    
    Response.Write("录入我的域名：http://");
    Response.Write("<input type=\"text\" name=\"domain\" value=\"" + domain + "\" /><br/>");
    
    Response.Write("<input type=\"submit\" name=\"submit\" value=\"重新生成\" /><br/>");
    Response.Write("</form>");

    Response.Write("<br/>说明：如果有不对，请重新生成，生成后需要可能需要清理缓存才更新哦。或点击图片进去，刷新！<br/>");

    Response.Write("</div>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
}


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>