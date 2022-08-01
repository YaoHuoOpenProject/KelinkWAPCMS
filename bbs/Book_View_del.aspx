<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_del.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("删除贴子|刪除貼子|Delete posts"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
        if (this.userid == bbsVo.book_pub.ToString()) //自己删除自己的
        {
            strhtml.Append("删除自己贴子扣2倍币和经验<br/>");
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        else
        {
            strhtml.Append("删贴理由:<input type=\"text\" name=\"why\" value=\"" + this.why + "\"/><br/>");
            strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_del.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"godel\" />");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
            strhtml.Append("<postfield name=\"why\" value=\"$(why)\" />");
            strhtml.Append("<postfield name=\"id\" value=\"" + (this.id) + "\" />");
            strhtml.Append("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
            strhtml.Append("<postfield name=\"sub\" value=\"1\" />");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("</go>1.删除贴子扣1倍币和经验</anchor> <br/>");
            strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_del.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"godel\" />");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
            strhtml.Append("<postfield name=\"why\" value=\"$(why)\" />");
            strhtml.Append("<postfield name=\"id\" value=\"" + (this.id) + "\" />");
            strhtml.Append("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
            strhtml.Append("<postfield name=\"sub\" value=\"2\" />");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("</go>2.删除贴子扣2倍币和经验</anchor> <br/>");

            strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_del.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"godel\" />");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
            strhtml.Append("<postfield name=\"why\" value=\"$(why)\" />");
            strhtml.Append("<postfield name=\"id\" value=\"" + (this.id) + "\" />");
            strhtml.Append("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
            strhtml.Append("<postfield name=\"sub\" value=\"0\" />");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("</go>3.删除贴子不扣币和经验</anchor> <br/>");
            
            //strhtml.Append("1.删除贴子扣1倍币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=1&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            //strhtml.Append("2.删除贴子扣2倍币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=2&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            //strhtml.Append("3.删除贴子不扣币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        
        

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    

    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("删除操作|刪除操作|delete") + "</div>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
        strhtml.Append("<div class=\"content\">");
        if (this.userid == bbsVo.book_pub.ToString()) //自己删除自己的
        {
            strhtml.Append("删除自己贴子扣2倍币和经验<br/>");
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        else
        {
            strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_view_del.aspx\" method=\"get\">");

            strhtml.Append("删贴理由:<input type=\"text\" name=\"why\" value=\"" + why + "\" /><br/>");

            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + (this.id) + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + (this.lpage) + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("1.删除贴子扣1倍币和经验<br/>");
            strhtml.Append("<input type=\"submit\" name=\"action\" value=\"Del_1\"/><br/>");
            strhtml.Append("2.删除贴子扣2倍币和经验<br/>");
            strhtml.Append("<input type=\"submit\" name=\"action\" value=\"Del_2\"/><br/>");
            strhtml.Append("3.删除贴子不扣币和经验<br/>");
            strhtml.Append("<input type=\"submit\" name=\"action\" value=\"Del_3\"/><br/>");
            strhtml.Append("</form>");
            //strhtml.Append("1.删除贴子扣1倍币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=1&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            //strhtml.Append("2.删除贴子扣2倍币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=2&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            //strhtml.Append("3.删除贴子不扣币和经验<br/>");
            //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=godel&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        strhtml.Append("</div>");

    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
        strhtml.Append("</div>");

    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
  
    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    strhtml.Append("</div></div>");

    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


