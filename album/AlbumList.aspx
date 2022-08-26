<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumList.aspx.cs" Inherits="KeLin.WebSite.album.AlbumList" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    string title = "";
    StringBuilder strhtml = new StringBuilder();
    if (smalltypeid == "0")
    {
        title = this.GetLang("我的相册||");
    }
    else if(bookVo!=null)
    {
        title = bookVo.subjectname;
    }

    Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.touserid == this.userid)
    {
        strhtml.Append("<a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "" + "\">上传本分类相片</a><br/>");
    }
    strhtml.Append("关键字:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "album/albumlist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"class\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"touserid\" value=\"" + touserid + "\" />");
        strhtml.Append("<postfield name=\"key\" value=\"$(key)\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"smalltypeid\" value=\"" + (this.smalltypeid) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
        
    
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].ishidden == 1)
        {
            strhtml.Append("[隐]");
        }
        strhtml.Append("<a href=\"" + http_start + "album/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid+ "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click + "阅/" + listVo[i].book_re + "评)</a><br/>");
        if (this.userid == this.touserid)
        {
            strhtml.Append("[<a href=\"" + http_start + "album/albumlist_change.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + listVo[i].smalltype + "&amp;id=" + listVo[i].id + "&amp;toclassid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">转</a>.<a href=\"" + http_start + "album/albumlist_mod.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=&amp;page=" + this.CurrentPage + "" + "\">修</a>.<a href=\"" + http_start + "album/albumlist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "" + "\">删</a>]<br/>");
        }
        strhtml.Append("<img src=\"" + this.http_start + "album/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append("上传于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    strhtml.Append("<a href=\"" + http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid="+this.touserid+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a> ");
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
    if (this.touserid == this.userid)
    {
        strhtml.Append("<div class=\"bt1\"><a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "" + "\">上传相片</a></div><br/>");
    }
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "album/albumlist.aspx\" method=\"post\">");
    strhtml.Append("关键字 <input type=\"text\" style=\"width:20%\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"touserid\" value=\"" + touserid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"smalltypeid\" value=\"" + (this.smalltypeid) + "\" />");
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
        if (listVo[i].ishidden == 1)
        {
            //strhtml.Append("[隐]");
        }
        strhtml.Append("<a href=\"" + http_start + "album/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "</a> [<a class=\"urlbtn\" href=\"" + http_start + "album/albumlist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "" + "\">删除</a>]<br/>");
        if (this.touserid == this.userid)
        {
            //strhtml.Append("<a class=\"urlbtn\" href=\"" + http_start + "album/albumlist_mod.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=&amp;page=" + this.CurrentPage + "" + "\">修改</a>");
            //strhtml.Append("<span class=\"right\">上传于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span>");
        }
        strhtml.Append("<p align=\"left\"><img src=\"" + this.http_start + "album/" + listVo[i].book_img + "\" alt=\"load...\"/></p></div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"/myfile.aspx\">返回上级</a>");
    strhtml.Append("<a href=\"/\">返回首页</a>");
    strhtml.Append("</div></div>");

    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    Response.Write(strhtml);
}
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>