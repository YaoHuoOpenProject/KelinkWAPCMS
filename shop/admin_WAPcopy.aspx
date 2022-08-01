<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPcopy.aspx.cs" Inherits="KeLin.WebSite.shop.admin_WAPcopy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("复制栏目|复制欄目|Transfer part"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("复制成功！|复制成功！|Transfer modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=1\">" + this.GetLang("返回复制列表|返回列表|Return to new list") + "</a><br/>");
    }
    else if(this.INFO=="NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("请选择栏目！|請選擇欄目！|Please select the part!"));
        Response.Write("</b><br/>");

    }
    Response.Write("切换到WAP2.0界面处理。");
    Response.Write("<br/><a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write(this.GetLang("复制成功！|复制成功！|Transfer modified"));
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
   
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("请选择栏目！|請選擇欄目！|Please select the part!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<b>"+ bookVo.book_title + "("+bookVo.book_xinghao +")</b><br/>");
    Response.Write(this.GetLang("原栏目ID|原欄目ID|Original classID") + ": " + classid + "<br/>");
    Response.Write(this.GetLang("原栏目名|原欄目名|Class Name") + ": " + classVo.classname + "<br/>");
    Response.Write(this.GetLang("复制到栏目|复制到欄目|copy ClassID") + "*:<br/>");
    //下拉选择
    Response.Write("<form name=\"go\" action=\"admin_WAPcopy.aspx\" method=\"post\">");

    
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {
        //if (this.toclassid != classList[i].classid.ToString())
        //{
            Response.Write("<input type=\"checkbox\" name=\"toclassid\" value=\"" + classList[i].classid + "\"/>" + classList[i].classid + "_" + classList[i].classname + "<br/>");
        //}
    }
   


    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|確 定|sure? really") + "\"/>");


    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


