<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_wapClasslist.aspx.cs" Inherits="KeLin.WebSite.admin.admin_wapClasslist" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

string str = this.http_start + gopath + "?action=wapAdmin" + "&amp;siteid=" + siteid ;

Response.Write(WapTool.showTop(this.GetLang("栏目列表|欄目列表|menu-list"), wmlVo));//显示头   


if (ver == "1")
{
    Response.Write("<p>");
    Response.Write("栏目ID_栏目名称：<br />");
    Response.Write("0_<a href=\"" + str + "&amp;classid=0" + "\">所有" + gopathname + "栏目</a><br />");

    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write(classList[i].classid + "_<a href=\"" + str + "&amp;classid=" + classList[i].classid + "\">" + classList[i].classname + "(" + classList[i].total + "条)</a><br/>");

    }

    Response.Write("<br/>----------<br/>");
    Response.Write("<a href=\"" + http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "&amp;userid=" + userid + "" + "\">返回上级</a>-<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">");
    Response.Write("栏目ID_栏目名称：</div>");    
    Response.Write("<div class=\"content\">");
    Response.Write("0_<a href=\"" + str + "&amp;classid=0" + "\">所有" + gopathname + "栏目</a><br/>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write(classList[i].classid + "_<a href=\"" + str + "&amp;classid=" + classList[i].classid + "\">" + classList[i].classname + "("+classList[i].total+"条)</a><br/>");

    }
    
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "&amp;userid=" + userid + "" + "\">返回上级</a> <a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>");
    Response.Write("</div></div>");

}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>
