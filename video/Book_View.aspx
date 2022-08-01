<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.video.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><% 
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");

   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

    
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");
   
   if (bookVo.book_director != "")
   {
       strhtml.Append("<b>[导演]:</b>" + bookVo.book_director + "<br/>");
   }
   if (bookVo.book_author != "")
   {
       strhtml.Append("<b>[主演]:</b>" + bookVo.book_author + "<br/>");
   }
   strhtml.Append("<b>[类型]:</b>" + classVo.classname + "<br/>");
   if (bookVo.book_city != "")
   {
       strhtml.Append("<b>[地区]:</b>" + bookVo.book_city + "<br/>");
   }
   if (bookVo.book_year != "")
   {
       strhtml.Append("<b>[年份]:</b>" + bookVo.book_year + "<br/>");
   }
   if (bookVo.book_lang != "")
   {
       strhtml.Append("<b>[语言]:</b>" + bookVo.book_lang + "<br/>");
   }


   strhtml.Append("<b>[评分]:</b>" + WapTool.getStart(bookVo.book_re, bookVo.book_score, "★", "☆", "1") + "<br/>");



   strhtml.Append("<b>[人气]:</b>" + bookVo.book_click + "<br/><b>[下载]:</b>" + bookVo.book_down + "<br/>");
   if (WapTool.IsNumeric(bookVo.book_size) == true)
   {
       strhtml.Append("<b>[大小]:</b>" + bookVo.book_size + " KB<br/>");
   }
   else
   {
       strhtml.Append("<b>[大小]:</b>" + bookVo.book_size + " <br/>");
   }

   if (bookVo.book_lable != "")
   {
       strhtml.Append("<b>[标签]:</b>");
       string[] arrylable = bookVo.book_lable.Split(' ');
       for (int i = 0; i < arrylable.Length; i++)
       {
           if (arrylable[i].Trim() != "")
           {
               strhtml.Append("<a href=\"" + this.http_start + "video/book_list.aspx?action=search&amp;key="+HttpUtility.UrlEncode(arrylable[i])+"&amp;type=lable&amp;siteid="+this.siteid +"&amp;classid=0\">" + arrylable[i] + "</a> ");
           }

       }
       strhtml.Append("<br/>");
       
   }

   strhtml.Append("<b>[发布时间]:</b>" + String.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "<br/>");
   if (showMakerID == "1")
   {
       if (bookVo.makerid == 0)
       {
           strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname + "(" + this.siteid + ")</a><br/>");

       }
       else
       {
           KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
           touserVo = WapTool.getUserInfo(bookVo.makerid.ToString(), this.siteid);
           strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname + "(" + bookVo.makerid + ")</a><br/>");
       }
   }
   if (content != "")
   {
       strhtml.Append("<b>[详情简介]:</b><br/>" + content + "<br/>");
   }

    StringBuilder strImg = new StringBuilder(); //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
        {

            if (filelist[i].book_file.Substring(0, 5).ToString() == "http:" || filelist[i].book_file.Substring(0, 1).ToString() == "/")
            {
                strImg.Append("<img src=\"" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
            }
            else
            {
                strImg.Append("<a href=\"" + this.http_start + "video/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"video\" + filelist[i].book_file) + "\"><img src=\"" + this.http_start + "video/" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/></a><br/>");
            }

            if (filelist[i].book_content != "")
            {
                strImg.Append(filelist[i].book_content + "<br/>");
            }
        }
        else
        {
            string pathdown = "";
            if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
            {
                pathdown = filelist[i].book_file;
            }
            else
            {
                pathdown = @"video/" + filelist[i].book_file;
            }
            strDown.Append("<img src=\"" + this.http_start + "NetImages/dload.gif\" alt=\"load...\"/>");
            strDown.Append("<a href=\"" + this.http_start + "video/download.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(pathdown) + "\">点击下载(" + filelist[i].book_ext + ")</a><br/><br/>");
        }
    }

    strhtml.Append(strImg);
    strhtml.Append(strDown);
    strhtml.Append(linkURL);
    //显示上一页下一页
    strhtml.Append(preNextTitle);
    if (showShare != "1")
    {
        strhtml.Append("[<a href=\"" + this.http_start + "video/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a>/<a href=\"" + this.http_start + "video/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "video/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a>]<br/>");
        
    }
    //显示最新回复
    if (showRe != "1")
    {
        strhtml.Append("文明社会，文明评论<br/>");
        strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
        strhtml.Append("<select name=\"book_score" + r + "\" value=\"" + this.book_score + "\">");
        strhtml.Append("<option value=\"5\">★★★★★</option>");
        strhtml.Append("<option value=\"4\">★★★★</option>");
        strhtml.Append("<option value=\"3\">★★★</option>");
        strhtml.Append("<option value=\"2\">★★</option>");
        strhtml.Append("<option value=\"1\">★</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("评语*:<input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "video/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"book_score\" value=\"$(book_score" + r + ")\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("</go>发表评论</anchor><br/>");

        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
            strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");

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
            strhtml.Append("<a href=\"" + http_start + "video/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a><br/>");
        }

    }
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
        strhtml.Append("<a href=\"" + this.http_start + "video/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a>-");
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );
    strhtml.Append("<div class=\"content\">");
   
    if (bookVo.book_director != "")
    {
        strhtml.Append("<b>[导演]:</b>" + bookVo.book_director + "<br/>");
    }
    if (bookVo.book_author != "")
    {
        strhtml.Append("<b>[主演]:</b>" + bookVo.book_author + "<br/>");
    }
    strhtml.Append("<b>[类型]:</b>" + classVo.classname + "<br/>");
    if (bookVo.book_city != "")
    {
        strhtml.Append("<b>[地区]:</b>" + bookVo.book_city + "<br/>");
    }
    if (bookVo.book_year != "")
    {
        strhtml.Append("<b>[年份]:</b>" + bookVo.book_year + "<br/>");
    }
    if (bookVo.book_lang != "")
    {
        strhtml.Append("<b>[语言]:</b>" + bookVo.book_lang + "<br/>");
    }


    strhtml.Append("<b>[评分]:</b>" + WapTool.getStart(bookVo.book_re, bookVo.book_score, "★", "☆", "1") + "<br/>");


    strhtml.Append("<b>[人气]:</b>" + bookVo.book_click + "<br/><b>[下载]:</b>" + bookVo.book_down + "<br/>");
    if (WapTool.IsNumeric(bookVo.book_size) == true)
    {
        strhtml.Append("<b>[大小]:</b>" + bookVo.book_size + " KB<br/>");
    }
    else
    {
        strhtml.Append("<b>[大小]:</b>" + bookVo.book_size + " <br/>");
    }

    if (bookVo.book_lable != "")
    {
        strhtml.Append("<b>[标签]:</b>");
        string[] arrylable = bookVo.book_lable.Split(' ');
        for (int i = 0; i < arrylable.Length; i++)
        {
            if (arrylable[i].Trim() != "")
            {
                strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "video/book_list.aspx?action=search&amp;key=" + HttpUtility.UrlEncode(arrylable[i]) + "&amp;type=lable&amp;siteid=" + this.siteid + "&amp;classid=0\">" + arrylable[i] + "</a> ");
            }

        }
        strhtml.Append("<br/>");
    }

    strhtml.Append("<b>[发布时间]:</b>" + String.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "<br/>");
    
    if (showMakerID == "1")
    {
        if (bookVo.makerid == 0)
        {
            strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname  + "(" + this.siteid  + ")</a><br/>");
       
        }
        else
        {
            KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
            touserVo = WapTool.getUserInfo(bookVo.makerid.ToString(), this.siteid);
            strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname+ "(" + bookVo.makerid + ")</a><br/>");
        }
    }
    
    if (content != "")
    {
        strhtml.Append("<b>[详情简介]:</b><br/>" + content + "<br/>");
    }
    strhtml.Append("<br/>");

 
    
 
    
    StringBuilder strImg = new StringBuilder(); //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (filelist[i].book_ext.Trim() !="" && ".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
        {

            if (filelist[i].book_file.Substring(0, 5).ToString() == "http:" || filelist[i].book_file.Substring(0, 1).ToString() == "/")
            {
                strImg.Append("<img src=\"" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
               
            }
            else
            {
                strImg.Append("<a href=\"" + this.http_start + "video/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"video\" + filelist[i].book_file) + "\"><img src=\"" + this.http_start + "video/" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/></a><br/>");
                
            }

            if (filelist[i].book_content != "")
            {
                strImg.Append(filelist[i].book_content + "<br/>");
            }
        }
        else
        {
            string pathdown = "";
            
            if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
            {
                pathdown = filelist[i].book_file;
            }
            else
            {
                pathdown = @"/video/" + filelist[i].book_file;
            }
            string poster = "/NetImages/play.gif";

            
            if (filelist[i].book_ext.Trim() == "" )
            {
                strDown.Append("<iframe width=\"300\" height=\"200\" src=\"" + pathdown + "\" frameborder=\"0\" allowfullscreen=\"\" qbiframeattached=\"true\" style=\"line-height: 2em; font-size: 16px; z-index: 1;\"></iframe><br/><br/>");
            }
            else
            {
                strDown.Append("<video id=\"movies\" onclick=\"if(this.paused) { this.play();}else{ this.pause();}\" src=\"" + pathdown + "\" autobuffer=\"true\" width=\"320px\" height=\"180px\" poster=\"" + poster + "\" controls>{抱歉,不支持在线播放，换个HTML5浏览器吧。}</video><br/><br/>");

                strDown.Append("");
                strDown.Append("<div class=\"bt1\"><a href=\"" + this.http_start + "video/download.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(pathdown) + "\"><img src=\"" + this.http_start + "NetImages/dload.gif\" alt=\"load...\"/> 点击下载(" + filelist[i].book_ext + ")</a></div><br/>");
            }
        }
    }
    
    strhtml.Append(strImg);
    strhtml.Append(strDown);

    if (showShare != "1")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        strhtml.Append("<a href=\"" + this.http_start + "video/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "video/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "video/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a> ");
        strhtml.Append("</div></div>");
    }
    
    strhtml.Append("</div>");

    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);

   
    
    if (showRe != "1")
    {
        //显示最新回复
        strhtml.Append("<div class=\"subtitle\">我要评论</div>");
        strhtml.Append("<div class=\"content\">");

        strhtml.Append("<form name=\"re\" action=\"" + http_start + "video/book_re.aspx\" method=\"post\">");
                
        strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
        strhtml.Append("<select name=\"book_score\">");
        strhtml.Append("<option value=\"5\">★★★★★</option>");
        strhtml.Append("<option value=\"4\">★★★★</option>");
        strhtml.Append("<option value=\"3\">★★★</option>");
        strhtml.Append("<option value=\"2\">★★</option>");
        strhtml.Append("<option value=\"1\">★</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("video/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("<input type=\"submit\" class=\"btn\" name=\"go\" value=\"发表评论\"/></form><br/>");

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

            strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span> ");
            strhtml.Append("</div>");
            k = k + 1;
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无评论！</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "video/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a><br/>");
            strhtml.Append("</div>");
        }
        strhtml.Append("</div>");

    }
    //显示电脑版
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
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "videolist-" + classid + "-" + this.lpage + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "video/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div></div>");
    }
  
    
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
