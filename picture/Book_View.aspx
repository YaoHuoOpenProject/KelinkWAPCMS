<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.picture.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><% 
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");

   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

    
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");
   if (WapTool.getArryString(classVo.smallimg, '|', 18) != "1")
   {

       strhtml.Append("<b>[上传时间]:</b>" + string.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "<br/>");
   }
        if (showMakerID == "1")
   {
       if (bookVo.MakerID == 0)
       {
           strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname + "(" + this.siteid + ")</a><br/>");

       }
       else
       {
           KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
           touserVo = WapTool.getUserInfo(bookVo.MakerID.ToString(), this.siteid);
           strhtml.Append("<b>[上传会员]:</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname + "(" + bookVo.MakerID + ")</a><br/>");
       }
   }
   strhtml.Append("共" + pageCount + "张/人气:" + bookVo.book_click + "<br/>");
    

    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
        {
            strhtml.Append("<img src=\"" +  filelist[i].book_file + "\" alt=\"load...\"/><br/>");
            strhtml.Append("<a href=\"" + filelist[i].book_file + "\">下载(" + filelist[i].book_ext + ")</a><br/>");
        }
        else
        {
            strhtml.Append("<img src=\"" + this.http_start + "picture/" + filelist[i].book_file + "\" alt=\"" + bookVo.book_title + "\"/><br/>");
            strhtml.Append("<a href=\"" + this.http_start + "picture/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"picture\" + filelist[i].book_fileOri) + "\">自定义下载(" + filelist[i].book_ext + ")</a><br/>");
        }
        strhtml.Append(filelist[i].book_fileINFO);
        strhtml.Append("<br/>");
    }

    strhtml.Append(linkURL);
    
    if (content.Trim() != "" && this.CurrentPage == 1)
    {
        strhtml.Append("简介:" + content + "<br/>");

    }
    
    
    
    //显示上一页下一页
    strhtml.Append(preNextTitle);

    if (showShare != "1")
    {
        strhtml.Append("[<a href=\"" + this.http_start + "picture/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a>/<a href=\"" + this.http_start + "picture/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "picture/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a>]<br/>");

    }
    
    //显示最新回复
    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 0)))
    {
        strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "picture/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
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
            strhtml.Append("<a href=\"" + http_start + "picture/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "picture/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a>-");
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
    
    //strhtml.Append("<div class=\"title\">" + bookVo.book_title +"</div>" );
    strhtml.Append("<!--webStart-->");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<h2 class=\"titleview\">" + bookVo.book_title + "</h2> ");

    
    
    if (WapTool.getArryString(classVo.smallimg, '|', 18) != "1")
    {
        strhtml.Append("<span class=\"subtitleview\">");
        strhtml.Append(string.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "  (" + bookVo.book_click + ") ");
        strhtml.Append("</span>");
    }
    if (showMakerID == "1")
    {
        strhtml.Append("<span class=\"right\">");
        if (bookVo.MakerID == 0)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname + "(" + this.siteid + ")</a> ");

        }
        else
        {
            KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
            touserVo = WapTool.getUserInfo(bookVo.MakerID.ToString(), this.siteid);
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname + "(" + bookVo.MakerID + ")</a> ");
        }
        strhtml.Append("</span>");
    }

   
    strhtml.Append("<div id=\"KL_margin\"style=\"margin:8px;\"></div>");

    if (content != "" && this.CurrentPage == 1)
    {
        strhtml.Append(content);
    }

    strhtml.Append("<div id=\"KL_margin\"style=\"margin:8px;\"></div>");
    
    strhtml.Append("<!--listS-->");
    
    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
        {
            strhtml.Append("<img src=\"" + filelist[i].book_file + "\" alt=\"load...\"/><br/>");
            strhtml.Append("<div class=\"bt1\"><a href=\"" + filelist[i].book_file + "\">下载(" + filelist[i].book_ext + ")</a></div><br/>");
        }
        else
        {
            
            strhtml.Append("<img src=\"" + this.http_start + "picture/" + filelist[i].book_file + "\" alt=\"" + bookVo.book_title + "\"/><br/>");
            strhtml.Append("<div class=\"bt2\"><a href=\"" + this.http_start + "picture/picDIY.aspx?action=ori&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"picture\" + filelist[i].book_fileOri) + "\">原图下载</a><a href=\"" + this.http_start + "picture/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"picture\" + filelist[i].book_fileOri) + "\">自定义下载(" + filelist[i].book_ext + ")</a></div><br/>");
        }
        strhtml.Append(filelist[i].book_fileINFO);
        strhtml.Append("<br/>");
    }
  
    strhtml.Append("<!--listE--><span id=\"KL_show_next_list\"></span>");

    strhtml.Append("</div>");

    strhtml.Append(linkURL);


    if (showShare != "1")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        strhtml.Append("<a href=\"" + this.http_start + "picture/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "picture/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "picture/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a> ");
        strhtml.Append("</div></div>");
    }

    strhtml.Append("</div>");
    
    //显示上一页下一页
    strhtml.Append(preNextTitle);

    
    
    //显示最新回复
    if (!"1".Equals(WapTool.getArryString(classVo.smallimg, '|', 0)))
    {
        strhtml.Append("<div class=\"subtitle\">我要评论</div>");
        strhtml.Append("<div class=\"content\">");

        strhtml.Append("<form name=\"re\" action=\"" + http_start + "picture/book_re.aspx\" method=\"post\">");
        strhtml.Append("<span class=\"gray\">文明社会，文明评论</span><br/>");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("picture/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
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
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "picture/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a> ");
            strhtml.Append("</div>");
        }

        strhtml.Append("</div>");
    }

    //显示电脑版
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
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
            strhtml.Append("<a href=\"" + this.http_start + "picturelist-" + classid + "-" + this.lpage + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "picture/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div>");
    }
   
    
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
