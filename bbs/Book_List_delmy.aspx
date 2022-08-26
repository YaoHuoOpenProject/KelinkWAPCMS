<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_delmy.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_delmy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("清空回复|清空回複|del all Replies"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO != "OK")
    {
        if (this.INFO == "PASSERROR")
        {
            Response.Write("<b>*" + this.GetLang("密码错误！|密码错误！|NO PASS !") + "</b><br/>");

        }
        //Response.Write("<a href=\"" + this.http_start + "bbs/book_list_delmy.aspx?action=godel&amp;reid=" + this.reid + "&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要清空TA的回复吗？是！|確定要清空TA的回複嗎？是！|Are you sure? YES") + "</a><br/>");
        Response.Write("删贴理由:<input type=\"text\" name=\"why\" value=\"" + this.why + "\"/><br/>");
        Response.Write("我的密码:<input type=\"text\" name=\"pw\" value=\"" + this.pw + "\"/><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "bbs/book_list_delmy.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"godel\" />");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<postfield name=\"why\" value=\"$(why)\" />");
        Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />");
        Response.Write("<postfield name=\"reid\" value=\"" + (this.reid) + "\" />");
        Response.Write("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
        Response.Write("<postfield name=\"page\" value=\"" + (this.page) + "\" />");
        Response.Write("<postfield name=\"touserid\" value=\"" + (this.touserid) + "\" />");
        Response.Write("<postfield name=\"ot\" value=\"" + (this.ot) + "\" />");
        Response.Write("<postfield name=\"sub\" value=\"1\" />");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("</go>1.清空TA的所有贴子（不清币和经验）</anchor> <br/>");
        Response.Write("<anchor><go href=\"" + http_start + "bbs/book_list_delmy.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"godel\" />");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<postfield name=\"why\" value=\"$(why)\" />");
        Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />");
        Response.Write("<postfield name=\"reid\" value=\"" + (this.reid) + "\" />");
        Response.Write("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
        Response.Write("<postfield name=\"page\" value=\"" + (this.page) + "\" />");
        Response.Write("<postfield name=\"touserid\" value=\"" + (this.touserid) + "\" />");
        Response.Write("<postfield name=\"ot\" value=\"" + (this.ot) + "\" />");
        Response.Write("<postfield name=\"sub\" value=\"2\" />");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("</go>2.清空TA的所有贴子（清币）</anchor> <br/>");
        Response.Write("<anchor><go href=\"" + http_start + "bbs/book_list_delmy.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"godel\" />");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<postfield name=\"why\" value=\"$(why)\" />");
        Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />");
        Response.Write("<postfield name=\"reid\" value=\"" + (this.reid) + "\" />");
        Response.Write("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
        Response.Write("<postfield name=\"page\" value=\"" + (this.page) + "\" />");
        Response.Write("<postfield name=\"touserid\" value=\"" + (this.touserid) + "\" />");
        Response.Write("<postfield name=\"ot\" value=\"" + (this.ot) + "\" />");
        Response.Write("<postfield name=\"sub\" value=\"3\" />");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("</go>3.清空TA的所有贴子（清币+清经验值）</anchor> <br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("清空成功！|清空成功！|Deleted successfully!") + "</b><br/>");


    }
    
   

    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + this.touserid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("清空操作|清空操作|delete") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        if (this.INFO == "PASSERROR")
        {
            Response.Write("<b>*" + this.GetLang("密码错误！|密码错误！|NO PASS !") + "</b><br/>");

        }
        
       // Response.Write("<a href=\"" + this.http_start + "bbs/book_list_delmy.aspx?action=godel&amp;reid=" + this.reid + "&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要清空此回复吗？是！|確定要刪除此回複嗎？是！|Are you sure? YES") + "</a><br/>");
        Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/book_list_delmy.aspx\" method=\"post\">");

        Response.Write("删贴理由：<input type=\"text\" name=\"why\" value=\"" + why + "\" /><br/>");
        Response.Write("我的密码：<input type=\"text\" name=\"pw\" value=\"" + pw + "\" /><br/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"reid\" value=\"" + (this.reid) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + (this.lpage) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + (this.page) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"ot\" value=\"" + (this.ot) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + (this.touserid ) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("1.清空TA的所有贴子（不清币和经验）<br/>");
        Response.Write("<input type=\"submit\" name=\"action\" value=\"Del_1\"/><br/>");
        Response.Write("2.清空TA的所有贴子（清币）<br/>");
        Response.Write("<input type=\"submit\" name=\"action\" value=\"Del_2\"/><br/>");
        Response.Write("3.清空TA的所有贴子（清币+清经验值）<br/>");
        Response.Write("<input type=\"submit\" name=\"action\" value=\"Del_3\"/><br/>");
        Response.Write("</form>");
        
        
        
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("清空成功！|清空成功！|Deleted successfully!") + "</b><br/>");
        Response.Write("</div>");

    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + this.touserid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


