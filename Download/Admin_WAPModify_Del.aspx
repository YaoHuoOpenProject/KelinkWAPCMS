<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPModify_del.aspx.cs" Inherits="KeLin.WebSite.download.admin_WAPModify_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("删除贴子|刪除貼子|Delete posts"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {

        Response.Write("<a href=\"" + this.http_start + "download/admin_wapmodify_del.aspx?action=godel&amp;id=" + this.id + "&amp;delid=" + delid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        
        
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }
   
    
    Response.Write("<a href=\"" + this.http_start + "download/admin_wapmodify.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("删除操作|刪除操作|delete") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        
            Response.Write("<a href=\"" + this.http_start + "download/admin_wapmodify_del.aspx?action=godel&amp;id=" + this.id + "&amp;delid="+delid+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
       
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        Response.Write("</div>");

    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");

    Response.Write("<a href=\"" + this.http_start + "download/admin_wapmodify.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


