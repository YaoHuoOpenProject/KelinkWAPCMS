<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.novel.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title+"-"+sectionVo.SectionTitle, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>");
   strhtml.Append("《" + bookVo.book_title + "》<br/>");
   strhtml.Append(sectionVo.SectionTitle + "(约" + charnum + "字)");
   
   if (this.volumeName != "") strhtml.Append("-" + this.volumeName);
   strhtml.Append("</b><br/>");

   strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=next&amp;rank=" + sectionVo.rank + "\">下章</a>|<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=pre&amp;rank=" + sectionVo.rank + "\">上章</a>|<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;ordertype=0\">目录</a>|<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>");

   strhtml.Append("<br/>------------<br/>");


   strhtml.Append(content + "<br/>");
   strhtml.Append(linkURL);

    
    //if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    //{
        //显示最新回复
   strhtml.Append("--------<br/>");
   strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=next&amp;rank=" + sectionVo.rank + "\">下章</a>/<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=pre&amp;rank=" + sectionVo.rank + "\">上章</a>/");
   strhtml.Append("<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a>/");
   strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a><br/>");
    
        strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "novel/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"bookid\" value=\"" + bookid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        //strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("</go>发表评论</anchor><br/>");

        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            strhtml.Append("[" + (sectionVo.book_re - k) + "楼]");
            if (relistVo[i].book_content.Length > 10)
            {
                strhtml.Append(relistVo[i].book_content.Substring(0, 9) + "...(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");
            }
            else
            {
                strhtml.Append(relistVo[i].book_content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");
            }
            k = k + 1;
        }

        if (relistVo == null)
        {
            strhtml.Append("暂无评论！<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "novel/book_re.aspx?pageback=&amp;getTotal=0&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + sectionVo.book_re+"/"+bookVo.book_re + ")</a><br/>");
        }
    //}
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
        strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>");
    strhtml.Append("《" + bookVo.book_title + "》");
   
    strhtml.Append("</b></div>");
    
    
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=next&amp;rank=" + sectionVo.rank + "\">下章</a> <a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=pre&amp;rank=" + sectionVo.rank + "\">上章</a> <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;ordertype=0\">目录</a> <a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>");
    strhtml.Append("</div></div>");


    strhtml.Append("<h2 class=\"titleview\">" + sectionVo.SectionTitle + "</h2><span class=\"right\">(约" + charnum + "字)");

    if (this.volumeName != "") strhtml.Append("-" + this.volumeName);

    strhtml.Append("</span><br/>");

    strhtml.Append("<div id=\"KL_margin\" style=\"margin:8px;\"></div>");
    strhtml.Append(content);
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=next&amp;rank=" + sectionVo.rank + "\">下章</a> <a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;id=" + this.id + "&amp;pn=pre&amp;rank=" + sectionVo.rank + "\">上章</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a>");
    strhtml.Append("</div></div>");
    
    strhtml.Append("</div>");
   
    
    //if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    //{
        //显示最新回复
        strhtml.Append("<div class=\"subtitle\">我要评论</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "novel/book_re.aspx\" method=\"post\">");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"bookid\" value=\"" + bookid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"发表评论\"/></form><br/>");

        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
            strhtml.Append("[" + (bookVo.book_re - k) + "楼] ");
            strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");
            strhtml.Append(relistVo[i].book_content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + "</span>");
            strhtml.Append("</div>");
            k = k + 1;
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无评论！</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "novel/book_re.aspx?pageback=&amp;getTotal=0&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + sectionVo.book_re + "/" + bookVo.book_re + ")</a></div>");
        }
        strhtml.Append("</div>");

    //}

        string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
        if (isWebHtml != "")
        {
            string strhtml_list = strhtml.ToString();
            int s = strhtml_list.IndexOf("<!--web-->");
            strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

            Response.Clear();
            Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
            Response.End();
        }
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
   
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
       
    
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
