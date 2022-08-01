<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistmy_del.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistmy_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("取消订单|取消订单|Content of the shop"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("确定要取消此条记录吗？是！|確定要刪除此條記錄嗎？是！|Are you sure? YES") + "</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("取消成功！|取消成功！|Deleted successfully!") + "</b><br/>");
        

    }
    else
    {
        Response.Write(this.INFO);
    }

    Response.Write("<br/><a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("取消操作|取消操作|delete") + "</div>");
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\"><a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("确定要取消此条记录吗？是！|確定要取消此條記錄嗎？是！|Are you sure? YES") + "</a></div>");


    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>" + this.GetLang("取消成功！|取消成功！|Deleted successfully!") + "</b></div>");


    }
    else
    {
        Response.Write("<div class=\"tip\">"+this.INFO+"</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");





}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


