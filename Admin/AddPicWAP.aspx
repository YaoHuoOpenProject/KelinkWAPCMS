<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPicWAP.aspx.cs" Inherits="KeLin.WebSite.admin.AddPicWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改LOGO|修改LOGO|修改LOGO"), wmlVo));//显示头                                                                                                                                                                       
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
    else
    {


        Response.Write("当前图片效果:<br/>");
        Response.Write("<img src=\"" + this.http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");

        Response.Write("--------<br/>");
        Response.Write("当前图片URL地址:<br/>");     
        Response.Write(this.http_start + "<input type=\"text\" name=\"path" + r + "\" value=\"" + classVo.siteimg + "\"/><br/>");
        Response.Write("输入相对路径(域名开头有了):<br/>");


        Response.Write("<anchor><go href=\"" + http_start + "admin/addpicwap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"path\" value=\"$(path" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>1." + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
        Response.Write("--------<br/>");
        Response.Write("<anchor><go href=\"" + http_start + "admin/addpicwap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"path\" value=\"NetImages/no.gif\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>2." + this.GetLang("不显示|不显示|不显示") + "</anchor><br/>");

    }
    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "admin/addpicwapupload.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">3." + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改LOGO|修改LOGO|修改LOGO") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        Response.Write("</div>");

    }
    else
    {

        
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"go\" action=\"" + this.http_start + "admin/addpicwap.aspx\" method=\"post\">");
        Response.Write("当前图片效果:<br/>");
        Response.Write("<img src=\"" + this.http_start + classVo.siteimg+ "\" alt=\"LOGO\"/><br/>");

        Response.Write("</div><div class=\"content\">");
        Response.Write("当前图片URL地址:<br/>");
        Response.Write(this.http_start + "<input type=\"text\" name=\"path\" value=\"" + classVo.siteimg + "\"/><br/>");
        Response.Write("输入相对路径(域名开头有了):<br/>");



        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"bt\" value=\"1." + this.GetLang("保 存|保 存|Update") + "\"/>");

        Response.Write("</form></div>");
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"go\" action=\"" + this.http_start + "admin/addpicwap.aspx\" method=\"post\">");
        Response.Write("<input type=\"hidden\" name=\"path\" value=\"NetImages/no.gif\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"bt\" value=\"2." + this.GetLang("不显示|不显示|不显示") + "\"/>");

        Response.Write("</form></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<a href=\"" + this.http_start + "admin/addpicwapupload.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">3." + this.GetLang("上传LOGO|上传LOGO|上传LOGO") + "</a><br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


