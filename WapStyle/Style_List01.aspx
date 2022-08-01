<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Style_List01.aspx.cs" Inherits="KeLin.WebSite.WapStyle.Style_List01" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("CSS样式管理|CSS样式管理|admin CSS"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");

    if (this.INFO == "SETOK")
    {
        Response.Write("<b>设为默认成功！</b><br/>");
    }

    Response.Write("<a href=\"" + this.http_start + "WapStyle/Style_List01_add.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">新增</a> ");
    Response.Write("<a href=\"" + this.http_start + "WapStyle/Style_List01_daoru.aspx?action=daoru&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">导入系统CSS样式</a> ");
    Response.Write("<br/>");
    
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;


        Response.Write(index + "." + "[" + listVo[i].rank + "]" + "[<a href=\"" + this.http_start + "wapstyle/style_list01_del.aspx?action=go&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删</a>][<a href=\"" + this.http_start + "wapstyle/style_list01_mod.aspx?action=go&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">修/看</a>][<a href=\"" + this.http_start + "wapstyle/style_list01.aspx?action=setdefault&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">默认</a>]<img src=\"" + this.http_start + "wapstyle/showColor.aspx?sc=" + listVo[i].style_color + "\" alt=\"pic\"/>" + listVo[i].style_name);

        if (listVo[i].style_type == 1) Response.Write("<img src=\"" + this.http_start + "NetImages/yes.gif\" alt=\"√\"/>");
        Response.Write("<br/>");
    }
    if (listVo == null)
    {
        Response.Write("暂无CSS样式！<br/>");
    }


    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级管理</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");


    
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("CSS样式管理|CSS样式管理|admin CSS") + "</div>");
    if (this.INFO == "SETOK")
    {
        Response.Write("<div class=\"tip\"><b>设为默认成功！</b></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<a href=\"" + this.http_start + "WapStyle/Style_List01_add.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">新增</a> ");
    Response.Write("<a href=\"" + this.http_start + "WapStyle/Style_List01_daoru.aspx?action=daoru&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">导入系统CSS样式</a> ");
    Response.Write("</div>");

    
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            Response.Write("<div class=\"line1\">");
        }
        else
        {
            Response.Write("<div class=\"line2\">");
        }
        index = index + kk;

        Response.Write(index + "." + "[" + listVo[i].rank + "]" + "[<a href=\"" + this.http_start + "wapstyle/style_list01_del.aspx?action=go&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删</a>][<a href=\"" + this.http_start + "wapstyle/style_list01_mod.aspx?action=go&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">修/看</a>][<a href=\"" + this.http_start + "wapstyle/style_list01.aspx?action=setdefault&amp;id=" + listVo[i].ID + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">默认</a>]<img src=\"" + this.http_start + "wapstyle/showColor.aspx?sc=" + listVo[i].style_color + "\" alt=\"pic\"/>" + listVo[i].style_name);

        if (listVo[i].style_type == 1) Response.Write("<img src=\"" + this.http_start + "NetImages/yes.gif\" alt=\"√\"/>");
        Response.Write("</div>");
    }
    if (listVo == null)
    {
        Response.Write("<div class=\"tip\">暂无CSS样式！</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级管理</a>");
    
    Response.Write("</div></div>");   
    
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


