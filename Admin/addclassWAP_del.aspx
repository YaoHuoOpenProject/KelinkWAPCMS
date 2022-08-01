<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addclassWAP_del.aspx.cs" Inherits="KeLin.WebSite.admin.addclassWAP_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("删除栏目|刪除栏目|Delete class"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {

        Response.Write("删除此栏目：" + classVo.classname + " 吗？<br/>");
        Response.Write("<a href=\"" + this.http_start + "admin/addclassWAP_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
       
        
        
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }
    Response.Write("<br/>说明:只删除栏目，栏目对应的内容将不删除，需要到内容管理后台删除。<br/>");    
    
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上級|Back to admin") + "</a> ");
    

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("删除操作|刪除操作|delete") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("删除此栏目：" + classVo.classname + " 吗？<br/>");
        Response.Write("<a href=\"" + this.http_start + "admin/addclassWAP_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
       
        
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        Response.Write("</div>");

    }
    Response.Write("<div class=\"tip\">");
    Response.Write("<br/>说明:只删除栏目，栏目对应的内容将不删除，需要到内容管理后台删除。<br/>");    
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上級|Back to admin") + "</a> ");

    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


