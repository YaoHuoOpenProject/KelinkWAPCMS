<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.album.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><% 
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");

   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

   if (this.INFO == "OK")
   {
       strhtml.Append("<b>将第一张图片设置成我的头像成功！</b><br/>");
   } 
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");

   strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("album/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.book_author + "</a>上传于" + string.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "<br/>");
   strhtml.Append("[<a href=\"" + this.http_start + "album/myalbum.aspx?siteid="+this.siteid+"&amp;classid=0&amp;touserid=" + bookVo.makerid + "&amp;backurl="+HttpUtility.UrlEncode("album/book_view.aspx?siteid="+this.siteid+"&classid="+this.classid+"&amp;id="+this.id+"")+"\">TA的相册</a>] "); 
    strhtml.Append("人气:"+bookVo.book_click+"<br/>");
    if (content.Trim() != "")
    {
        strhtml.Append("简介:" + content + "<br/>");
        strhtml.Append(linkURL);
    }

    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (i == 0 && this.userid == bookVo.makerid.ToString()) strhtml.Append("[<a href=\"" + this.http_start + "album/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;action=addhead\">设为我的头像</a>]<br/>");
        strhtml.Append("<img src=\"" + this.http_start + "album/" + filelist[i].book_file + "\" alt=\"load...\"/><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"album\" + filelist[i].book_file) + "\">自定义下载(" + filelist[i].book_ext + ")</a><br/><br/>");
    }
    
    //显示上一页下一页
    strhtml.Append(preNextTitle);
    //显示最新回复

    strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"album/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+ id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
	strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("album/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("</go>发表评论</anchor><br/>");
      
    for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
    {
        strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
        if (relistVo[i].content.Length > 10)
        {
            strhtml.Append(relistVo[i].content.Substring(0, 9) + "...(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        }
        else
        {
            strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        }
        k = k + 1;
    }

    if (relistVo == null)
    {
        strhtml.Append("暂无评论！<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "album/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a><br/>");
    }
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    if (this.userid == bookVo.makerid.ToString())
    {
        strhtml.Append("<a href=\"" + this.http_start + "album/myalbum.aspx?siteid="+this.siteid+"&amp;classid=0&amp;touserid=" + bookVo.makerid + "\">我的相册</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "album/albumlist.aspx?siteid="+this.siteid+"&amp;classid=0&amp;touserid=" + bookVo.makerid + "&amp;smalltypeid=" + bookVo.smalltype + "" + "\">列表管理</a><br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "album/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0

    strhtml.Append("<!--web-->");
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">将第一张图片设置成我的头像成功！</div>");
    }
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );
    strhtml.Append("<div class=\"content\">");
   
    strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("album/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.book_author + "</a> 上传于" + string.Format("{0:MM-dd HH:mm}", bookVo.book_date) + " ");
    strhtml.Append("&nbsp;&nbsp; (" + bookVo.book_click + ")<span class=\"right\"><a class=\"urlbtn\" href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("album/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&amp;id=" + this.id + "") + "\">TA的相册</a></span><br/>");

   
        strhtml.Append("" + content + "<br/>");
   
   
    strhtml.Append(linkURL);

   // strhtml.Append("<br/>");
    strhtml.Append("<div id=\"KL_margin\"style=\"margin:8px;\"></div>");

    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        strhtml.Append("<img src=\"" + this.http_start + "album/" + filelist[i].book_file + "\" alt=\"load...\"/><br/>");

        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"album\" + filelist[i].book_file) + "\">自定义下载(" + filelist[i].book_ext + ")</a><br/><br/>");
        strhtml.Append("</div></div>");
        if (i == 0 && this.userid == bookVo.makerid.ToString())
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
            strhtml.Append("<a href=\"" + this.http_start + "album/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;action=addhead\">设为我的头像</a><br/>");
            strhtml.Append("</div></div>");
        }
    }

   
    strhtml.Append("</div>");

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    //显示最新回复
    strhtml.Append("<div class=\"subtitle\">我要评论</div>");
    strhtml.Append("<div class=\"content\">");


    strhtml.Append("<form name=\"re\" action=\"" + http_start + "album/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\"  rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
       
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("album/book_view.aspx?siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");
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
        strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span>");
        strhtml.Append("</div>");
        k = k + 1;
    }

    if (relistVo == null) 
    {
        strhtml.Append("<div class=\"tip\">暂无评论！</div>");
    }
    else
    {
        strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "album/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a></div>");
    }
    strhtml.Append("</div>");


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
   
    if (this.userid == bookVo.makerid.ToString())
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "album/myalbum.aspx?siteid="+this.siteid+"&amp;classid=0&amp;touserid="+this.userid+"\">我的相册</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "album/albumlist.aspx?siteid="+this.siteid+"&amp;classid=0&amp;touserid="+this.userid+"&amp;smalltypeid=" + bookVo.smalltype + "" + "\">列表管理</a><br/>");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "album/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
