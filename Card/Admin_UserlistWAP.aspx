﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.card.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("栏目名称管理|栏目名称管理|Check Content of the class"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    strhtml.Append("<b>由于内容比较多，请用电脑IE浏览器访问WEB后台【用户管理】→【用户资料管理】，比较直观，方便管理！</b><br/>");

   


    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?sid="+sid+"&amp;siteid="+siteid +"\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">提示：</div>");


    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("<b>由于内容比较多，请用电脑IE浏览器访问WEB后台【用户管理】→【用户资料管理】，比较直观，方便管理！</b><br/>");
    strhtml.Append("</div>");
    
    


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>