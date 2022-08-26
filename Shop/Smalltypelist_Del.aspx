<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist_del.aspx.cs" Inherits="KeLin.WebSite.shop.smalltypelist_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%


Response.Write(WapTool.showTop(this.GetLang("删除|删除|delete"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + http_start + "shop/smalltypelist_del.aspx?action=go" + action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + this.GetLang("确定要删除吗？是！|確定要刪除嗎？是！|Are you sure? YES") + "</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }



    Response.Write("<a href=\"" + http_start + "shop/smalltypelist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回上级</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("删除|删除|delete") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + http_start + "shop/smalltypelist_del.aspx?action=go" + action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + this.GetLang("确定要删除吗？是！|確定要刪除嗎？是！|Are you sure? YES") + "</a><br/>");


    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");


    }

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + http_start + "shop/smalltypelist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回上级</a>");

    Response.Write("</div></div>");
    
    


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


