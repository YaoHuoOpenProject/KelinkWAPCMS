<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_back_Reback.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_back_Reback" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("还原贴子|还原貼子|Delete posts"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
       
            strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_List_back_Reback.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定还原！|确定还原！|submit") + "</a><br/>");
        
        
        

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("还原成功！|还原成功！|Deleted successfully!") + "</b><br/>");
        

    }
    
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    

    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("还原操作|还原操作|delete") + "</div>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
        strhtml.Append("<div class=\"content\">");
        
            strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_List_back_Reback.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定还原！|确定还原！|submit") + "</a><br/>");
       
        strhtml.Append("</div>");

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("还原成功！|还原成功！|Deleted successfully!") + "</b><br/>");
        strhtml.Append("</div>");

    }
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    strhtml.Append("</div></div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


