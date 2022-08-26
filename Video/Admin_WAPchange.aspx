<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPchange.aspx.cs" Inherits="KeLin.WebSite.video.admin_WAPchange" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("转移栏目|轉移欄目|Transfer part"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("转移成功！|轉移成功！|Transfer modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=1\">" + this.GetLang("返回转移列表|返回列表|Return to new list") + "</a><br/>");
    }
    else if(this.INFO=="NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("请选择栏目！|請選擇欄目！|Please select the part!"));
        Response.Write("</b><br/>");

    }

    Response.Write(this.GetLang("原栏目ID|原欄目ID|Original classID") + ": "+classid+"<br/>");
    Response.Write(this.GetLang("原栏目名|原欄目名|Class Name") + ": " + classVo.classname + "<br/>");
    Response.Write(this.GetLang("转移后栏目|轉移後欄目|Change ClassID") + "*:<br/>");
    //下拉选择
    Response.Write("<select name=\"toclassid"+r+"\" value=\""+this.classid+"\">");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\""+classList[i].classid + "\">" + classList[i].classid + "_"+classList[i].classname+"</option>");
        
    }
    Response.Write("</select><br/>"); 
    
    Response.Write("<anchor><go href=\""+http_start+"video/admin_WAPchange.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");    	
    Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid"+r+")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("确 定|確 定|sure? really") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);

    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("转移成功！|轉移成功！|Transfer modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=1\">" + this.GetLang("返回转移列表|返回列表|Return to new list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("请选择栏目！|請選擇欄目！|Please select the part!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(this.GetLang("原栏目ID|原欄目ID|Original classID") + ": " + classid + "<br/>");
    Response.Write(this.GetLang("原栏目名|原欄目名|Class Name") + ": " + classVo.classname + "<br/>");
    Response.Write(this.GetLang("转移后栏目|轉移後欄目|Change ClassID") + "*:<br/>");
    //下拉选择
    Response.Write("<form name=\"go\" action=\"admin_WAPchange.aspx\" method=\"post\">");
    Response.Write("<select name=\"toclassid\" value=\"" + this.classid + "\">");
    Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");


    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|確 定|sure? really") + "\"/>");


    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
     
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


