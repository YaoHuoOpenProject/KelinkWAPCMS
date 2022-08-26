<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FriendList_del.aspx.cs" Inherits="KeLin.WebSite.bbs.FriendList_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml = new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("删除|删除|delete"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
        strhtml.Append("<a href=\"" + http_start + "bbs/friendlist_del.aspx?action=go" + action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + this.GetLang("确定要删除吗？是！|確定要刪除嗎？是！|Are you sure? YES") + "</a><br/>");
 
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
 
    }



    strhtml.Append("<a href=\"" + http_start + "bbs/friendlist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回列表</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("删除|删除|delete") + "</div>");
    strhtml.Append(this.ERROR);
   
    if (this.INFO == "")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + http_start + "bbs/friendlist_del.aspx?action=go" + action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + this.GetLang("确定要删除吗？是！|確定要刪除嗎？是！|Are you sure? YES") + "</a><br/>");
        strhtml.Append("</div></div>");
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        strhtml.Append("</div>");
    }

   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + http_start + "bbs/friendlist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回列表</a>");
    //strhtml.Append(WapTool.GetVS(wmlVo));
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


