<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="AddRowInfoWAP.aspx.cs" Inherits="KeLin.WebSite.admin.AddRowInfoWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("栏目前排版内容|栏目前排版内容|class Content"), wmlVo));//显示头                                                                                                                                                                       
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



        Response.Write(classVo.classname+"(ID:"+this.classid+")前内容:<br/>");
        Response.Write("<input type=\"text\" name=\"path" + r + "\" value=\"" + classVo.siterowremark + "\"/><br/>");

        Response.Write("<a href=\"/admin/ubb2.aspx\">点击此查看UBB方法</a><br/>");



        Response.Write("<anchor><go href=\"" + http_start + "admin/addrowinfowap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"path\" value=\"$(path" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("栏目前排版内容|栏目前排版内容|class Content") + "</div>");
    
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
        Response.Write("<form name=\"go\" action=\"" + this.http_start + "admin/addrowinfowap.aspx\" method=\"post\">");

        Response.Write(classVo.classname+"(ID:"+this.classid+")前内容:<br/>");
        Response.Write("<textarea name=\"path\" rows=\"12\" style=\"width:100%\">" + classVo.siterowremark + "</textarea><br/>");

        Response.Write("<a href=\"/admin/ubb2.aspx\">点击此查看UBB方法</a><br/>");
        

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Update") + "\"/>");

        Response.Write("</form></div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


