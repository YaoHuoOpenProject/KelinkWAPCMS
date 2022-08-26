<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.article.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");

   if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 0)))
   {

       strhtml.Append("日期:" + bookVo.book_date + "<br/>");
       if (bookVo.book_author != "")
       {
           strhtml.Append("作者:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "</a>(<a href=\"" + this.http_start + "article/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">更多</a>)<br/>");
       }

       if (bookVo.book_pub != "")
       {
           strhtml.Append("来源:" + bookVo.book_pub + "<br/>");
       }

       strhtml.Append("人气:" + bookVo.book_click + "<br/>");
   }
    strhtml.Append("------------<br/>");

    string strImg = ""; //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    string[] filelist = bookVo.book_file.Split('|');
    string[] fileINFO = (bookVo.book_fileINFO + WapTool.GetRepeatString("|",filelist.Length)).Split('|');
    for (int i = 0; ( i < filelist.Length); i++)
    {
        if (filelist[i].IndexOf(".") > 0)
        {
            String[] temp = filelist[i].Split('.');
            if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(temp[1].ToLower()) >= 0)
            {

                if (filelist[i].Substring(0, 5).ToString() == "http:" || filelist[i].Substring(0, 1).ToString() == "/")
                {
                    strImg = strImg + ("<img src=\"" + filelist[i] + "\" alt=\"load...\"/><br/>");
                }
                else
                {
                    strImg = strImg + ("<a href=\"" + this.http_start + "article/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"article\" + filelist[i]) + "\"><img src=\"" + this.http_start + "article/" + filelist[i] + "\" alt=\"load...\"/></a><br/>");
                }

                if (fileINFO[i] != "")
                {
                    strImg = strImg + (fileINFO[i] + "<br/>");
                }
                ImgList.Add(strImg);
                
                strImg = "";
            }
            else
            {

                strDown.Append("<a href=\"" + this.http_start + "article/" + filelist[i] + "\">点击下载(" + temp[1] + ")</a><br/>");
                strDown.Append(fileINFO[i] + "<br/>");
                strDown.Append( "----------<br/>");
            }
        }
    }

    //对ImgList进行分页
    if (pview == 0)
    {
        for (int i = 0; i < ImgList.Count; i++)
        {
            strhtml.Append(ImgList[i]);
        }

    }else if (ImgList.Count > 1)
    {
        if (pview > ImgList.Count || pview < 1) pview = 1;
        strhtml.Append(ImgList[pview - 1]);
        //生成分页图链接
        strhtml.Append("<a href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=0&amp;view=" + this.view + "&amp;lpage=" + this.lpage + "" + "\">全图</a>:");
        for (int i = 1; i <= ImgList.Count; i++)
        {
            if (pview == i)
            {
                strhtml.Append(i + " ");
            }
            else
            {
                strhtml.Append("<a href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=" + i + "&amp;view="+this.view+"&amp;lpage=" + this.lpage + "" + "\">" + i + "</a> ");
            }

        }
        strhtml.Append("<br/>");

    }
    else if (ImgList.Count == 1)
    {
        strhtml.Append(ImgList[0]);
    }

    strhtml.Append(strDown);
    
    
    
    
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {
        //显示最新回复
        strhtml.Append("<a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">喜(" + bookVo.xi + ")</a> <a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">怒(" + bookVo.nu + ")</a> <a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=3&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">汗(" + bookVo.han + ")</a><br/> ");
        strhtml.Append("[<a href=\"" + this.http_start + "article/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a>/<a href=\"" + this.http_start + "article/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "article/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">投稿</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a>]<br/>");
        strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "article/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("article/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
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
            strhtml.Append("<a href=\"" + http_start + "article/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "article/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
        strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0

    string isWebHtml = this.ShowWEB_view (this.classid ); //看是存在html代码
    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    //strhtml.Append("<div class=\"subtitle\">&nbsp;</div>" );
    strhtml.Append("<!--webStart-->");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<h2 class=\"titleview\">" + bookVo.book_title + "</h2> ");
       
    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 0)))
    {
        strhtml.Append("<span class=\"subtitleview\">");
        strhtml.Append("" + bookVo.book_date.ToString(WapTool.getArryString(classVo.smallimg, '|', 23)) + "&nbsp;&nbsp;");

        if (bookVo.book_author != "")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.makerid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "</a>(<a href=\"" + this.http_start + "article/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">更多</a>)&nbsp;&nbsp;");
       
        }

        if (bookVo.book_pub != "")
        {
            strhtml.Append("" + bookVo.book_pub + "&nbsp;&nbsp;");
        }

        strhtml.Append("(" + bookVo.book_click+")");
        strhtml.Append("</span>");
    }
    strhtml.Append("<div id=\"KL_margin\" style=\"margin:8px;\"></div>");
    strhtml.Append("<p align=\"center\">");
    string strImg = ""; //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    string[] filelist = bookVo.book_file.Split('|');
    string[] fileINFO = (bookVo.book_fileINFO + WapTool.GetRepeatString("|", filelist.Length)).Split('|');
    for (int i = 0; (i < filelist.Length); i++)
    {
        if (filelist[i].IndexOf(".") > 0)
        {
            String[] temp = filelist[i].Split('.');
            if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(temp[1].ToLower()) >= 0)
            {

                if (filelist[i].Substring(0, 5).ToString() == "http:" || filelist[i].Substring(0, 1).ToString() == "/")
                {
                    strImg = strImg + ("<img src=\"" + filelist[i] + "\" alt=\"load...\"><br/>");
                }
                else
                {
                    strImg = strImg + ("<a href=\"" + this.http_start + "article/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"article\" + filelist[i]) + "\"><img src=\"" + this.http_start + "article/" + filelist[i] + "\" alt=\"load...\"/></a><br/>");
                }

                if (fileINFO[i] != "")
                {
                    strImg = strImg + (fileINFO[i] + "<br/><br/>");
                }
                
                ImgList.Add(strImg);
                
                strImg = "";
            }
            else
            {

                strDown.Append("<a href=\"" + this.http_start + "article/" + filelist[i] + "\">点击下载(" + temp[1] + ")</a><br/>");
                if (fileINFO[i] != "") strDown.Append(fileINFO[i] + "<br/>");
                strDown.Append("----------<br/>");
            }
        }
    }

    //对ImgList进行分页
    if (pview == 0)
    {
        for (int i = 0; i < ImgList.Count; i++)
        {
            strhtml.Append(ImgList[i]);
        }

    }
    else if (ImgList.Count > 1)
    {
        if (pview > ImgList.Count || pview < 1) pview = 1;
        strhtml.Append(ImgList[pview - 1]);
        //生成分页图链接
        strhtml.Append("<div style=\"margin:0 auto;width:" + (ImgList.Count * 24 + 48) + "px\"><a style=\"background: url(/NetImages/focusbg3.gif) no-repeat; color:#000; width:50px; float:left; text-align:center; line-height:26px;text-decoration:none;\" href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=0&amp;view=" + this.view + "&amp;lpage=" + this.lpage + "" + "\">全图</a> ");
        for (int i = 1; i <= ImgList.Count; i++)
        {
            if (pview == i)
            {
                strhtml.Append("<span style=\"background:url(/NetImages/focusbg1.gif)  no-repeat;  text-align:center; line-height:26px; color: rgb(255, 255, 255); width:24px; height:26px; float:left;\">"+i + "</span> ");
            }
            else
            {
                strhtml.Append("<a style=\"background: url(/NetImages/focusbg2.gif) no-repeat; color:#000; width:24px; float:left; text-align:center; line-height:26px;text-decoration:none;\" href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=" + i + "&amp;view=" + this.view + "&amp;lpage=" + this.lpage + "" + "\">" + i + "</a> ");
            }

        }
        strhtml.Append("</div><br/>");

    }
    else if (ImgList.Count == 1)
    {
        strhtml.Append(ImgList[0]);
    }
    strhtml.Append(strDown);

    strhtml.Append("</p>");

    
    strhtml.Append(content);
    
    strhtml.Append(linkURL);
    strhtml.Append("</div>");

    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 22)))
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
        strhtml.Append("<a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + http_start + "NetImages/xi.gif\" alt=\"喜\"/>(" + bookVo.xi + ")</a> <a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + http_start + "NetImages/nu.gif\" alt=\"怒\"/>(" + bookVo.nu + ")</a> <a href=\"" + http_start + "article/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=3&amp;gstate=" + gstate + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + http_start + "NetImages/han.gif\" alt=\"汗\"/>(" + bookVo.han + ")</a>  ");
        strhtml.Append("</div></div>");
    }

    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {
        //显示最新回复
       
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        strhtml.Append("<a href=\"" + this.http_start + "article/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a> <a href=\"" + this.http_start + "article/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "article/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">投稿</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a> ");

        strhtml.Append("</div></div>");
    }
    //显示上一条下一条
    strhtml.Append(preNextTitle);

    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {

        strhtml.Append("<div class=\"subtitle\">我要评论</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "article/book_re.aspx\" method=\"post\"><span class=\"gray\">文明社会，文明评论</span><br/>");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");


        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("article/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
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
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "article/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a></div>");
        }
        strhtml.Append("</div>");

    }
    
    //显示电脑版
    if(isWebHtml!=""){
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--webStart-->");
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
            strhtml.Append("<a href=\"" + this.http_start + "articlelist-" + classid + "-" + this.lpage + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");
       
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "article/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
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
