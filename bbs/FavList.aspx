<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FavList.aspx.cs" Inherits="KeLin.WebSite.bbs.FavList" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    string title = "";
    if (favtypeid == "0")
    {
        title = this.GetLang("默认收藏夹||");
    }
    else if(bookVo!=null)
    {
        title = bookVo.subjectname;
    }
StringBuilder strhtml = new StringBuilder();                                                                                                                                                                         
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

   
        strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/favlist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"class\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"key\" value=\"$(key)\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"favtypeid\" value=\"" + (this.favtypeid) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
        
    
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].url.IndexOf("http://") >= 0)
        {
            strhtml.Append("<a href=\"" + listVo[i].url + "\">" + listVo[i].title + "</a>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + listVo[i].url + "" + "\">" + listVo[i].title + "</a>");
        }
        strhtml.Append("[<a href=\"" + http_start + "bbs/favlist_change.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "&amp;id=" + listVo[i].id + "&amp;page="+this.CurrentPage+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">转移</a>.<a href=\"" + http_start + "bbs/favlist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page="+this.CurrentPage+"" + "\">删除</a>]<br/>");        
        strhtml.Append("(" + listVo[i].adddate + ")<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist_add.aspx?siteid="+this.siteid+"&amp;classid=0&amp;favtypeid="+this.favtypeid+"" + "\">添加本分类收藏</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "bbs/favlist_del.aspx?action=delall&amp;siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">清空"+title+"</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/favlist.aspx\" method=\"post\">");
    strhtml.Append("关键字 <input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"22\"/> ");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"favtypeid\" value=\"" + (this.favtypeid) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"f\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");


    strhtml.Append("</form></div>");
    strhtml.Append(linkTOP);
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].url.IndexOf("http://") >= 0)
        {
            strhtml.Append("<a href=\"" +  listVo[i].url +  "\">" + listVo[i].title + "</a>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + listVo[i].url + "" + "\">" + listVo[i].title + "</a>");
        }
        strhtml.Append(" [<a href=\"" + http_start + "bbs/favlist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "" + "\">删除</a>]<br/>");
        strhtml.Append("(" + listVo[i].adddate + ")</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    //strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist_add.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "" + "\">添加收藏</a> ");
    strhtml.Append("<a href=\"" + http_start + "bbs/favlist_del.aspx?action=delall&amp;siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">清空收藏</a>");
    //strhtml.Append("<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
}
Response.Write(ERROR);
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>