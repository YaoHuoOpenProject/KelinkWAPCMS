<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.paimai.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><% 
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");

   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

   if (bookVo.book_top == 1)
   {
       strhtml.Append("<b>[顶]</b>");

   }
   if (bookVo.book_good == 1)
   {
       strhtml.Append("<b>[精]</b>");

   } 
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");
  
  
   if (bookVo.book_jiage != 0)
   {
       strhtml.Append("一口价:" + bookVo.book_jiage + " ("+siteVo.sitemoneyname+")<br/>");
   }

   strhtml.Append("竞拍低价:" + bookVo.book_yhjiage + " (" + siteVo.sitemoneyname + ")<br/>");
  
   
   strhtml.Append("有效时间:" + bookVo.book_shortmessage+"<br/>");
   if (bookVo.is_valid == 1)
   {
       strhtml.Append("还剩时间:已结束！<br/>");
   }
   else
   {
       strhtml.Append("还剩时间:" + this.leftTime + "<br/>");
   }

   strhtml.Append("[人气:" + bookVo.book_click + "]");
   strhtml.Append("[<a href=\"" + this.http_start + "paimai/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a>][<a href=\"" + this.http_start + "paimai/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
   strhtml.Append("[<a href=\"" + http_start + "paimai/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要出价</a>][<a href=\"" + http_start + "paimai/orderlistmy.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的投标记录</a>]<br/>");
   //出价最记录
   strhtml.Append("==当前最高出价==<br/>");
   if (orderVo == null)
   {
       strhtml.Append("当前没有用户出价!<br/>");
   }
   else
   {
       if (orderVo.iswinner == 1)
       {
           strhtml.Append("[中标]");
       }
       strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + orderVo.nickname + "</a>" + "出价:" + orderVo.productmoney + "(" + string.Format("{0:MM-dd HH:mm}", orderVo.orderdate) + ")<br/>备注:" + orderVo.remark + "<br/>");
       strhtml.Append("<a href=\"" + http_start + "paimai/orderlist_view.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多出价记录&gt;&gt;</a><br/>");
   }

    StringBuilder strImg = new StringBuilder(); //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    for (int i = 0; (CurrentPage==1 && filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
        {

            if (filelist[i].book_file.StartsWith("http://") || filelist[i].book_file.StartsWith("/"))
            {
                strImg.Append("<img src=\"" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
            }
            else
            {
                strImg.Append("<img src=\"" + this.http_start + "paimai/" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
            }

            
        }
        else
        {
            strDown.Append("<img src=\"" + this.http_start + "NetImages/dload.gif\" alt=\"load...\"/>");
            strDown.Append("<a href=\"" + this.http_start + "paimai/download.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"paimai/" + filelist[i].book_file) + "\">点击下载(" + filelist[i].book_ext + ")</a><br/>");
        }
    }

    strhtml.Append(strImg);
    strhtml.Append(strDown);
    if (content.Trim() != "")
    {
        strhtml.Append("简介:" + content + "<br/>");
        strhtml.Append(linkURL);

    }
    
    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    
    
    
    
    
    
    //显示最新回复

    strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"paimai/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+ id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
	strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("paimai/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
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
        strhtml.Append("<a href=\"" + http_start + "paimai/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a><br/>");
    }
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "paimai/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
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

    if (bookVo.book_top == 1)
    {
        strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

    }
    if (bookVo.book_good == 1)
    {
        strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

    }
    strhtml.Append(bookVo.book_title +"</div>" );


 
    
    strhtml.Append("<div class=\"content\">");

    if (bookVo.book_jiage != 0)
    {
        strhtml.Append("一口价:" + bookVo.book_jiage + " (" + siteVo.sitemoneyname + ")<br/>");
    }

    strhtml.Append("竞拍低价:" + bookVo.book_yhjiage + " (" + siteVo.sitemoneyname + ")<br/>");


    strhtml.Append("有效时间:" + bookVo.book_shortmessage + "<br/>");
    if (bookVo.is_valid == 1)
    {
        strhtml.Append("还剩时间:已结束！<br/>");
    }
    else
    {
        strhtml.Append("还剩时间:" + this.leftTime + "<br/>");
    }

    
    strhtml.Append("人气:" + bookVo.book_click + "<br/> ");
    
    
    //出价最记录
    strhtml.Append("<p align=\"center\">==当前最高出价==</p>");
    
    if (orderVo == null)
    {
        strhtml.Append("<div class=\"line1\">");
        strhtml.Append("当前没有用户出价!</div>");
    }
    else
    {
        strhtml.Append("<div class=\"line1\">");
        if (orderVo.iswinner == 1)
        {
            strhtml.Append("[中标]");
        }
        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"\">"+orderVo.nickname+"</a>"+"出价:"+orderVo.productmoney+"("+ string.Format("{0:MM-dd HH:mm}",orderVo.orderdate)+")<br/>备注:"+orderVo.remark+"</div>");
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + http_start + "paimai/orderlist_view.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多出价记录&gt;&gt;</a>");
        strhtml.Append("</div></div>"); 
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "paimai/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要出价</a> <a href=\"" + http_start + "paimai/orderlistmy.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的投标记录</a>");
    strhtml.Append("</div></div>"); 
    StringBuilder strImg = new StringBuilder(); //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载
    for (int i = 0; (CurrentPage == 1 && filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
        {

            if (filelist[i].book_file.StartsWith("http://") || filelist[i].book_file.StartsWith("/"))
            {
                strImg.Append("<img src=\"" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
            }
            else
            {
                strImg.Append("<img src=\"" + this.http_start + "paimai/" + filelist[i].book_file + "\" alt=\"" + filelist[i].book_title + "\"/><br/>");
            }


        }
        else
        {
            strDown.Append("<img src=\"" + this.http_start + "NetImages/dload.gif\" alt=\"load...\"/>");
            strDown.Append("<a href=\"" + this.http_start + "paimai/download.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"paimai/" + filelist[i].book_file) + "\">点击下载(" + filelist[i].book_ext + ")</a><br/>");
        }
    }

    strhtml.Append(strImg);
    strhtml.Append(strDown);
    if (content.Trim() != "")
    {
        strhtml.Append("" + content + "<br/>");
      

    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "paimai/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a  href=\"" + this.http_start + "paimai/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>  ");
    strhtml.Append("</div></div>");
    
    strhtml.Append("</div>");

    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    //显示最新回复
    strhtml.Append("<div class=\"subtitle\">我要评论</div>");
    strhtml.Append("<div class=\"content\">");


    strhtml.Append("<form name=\"re\" action=\"" + http_start + "paimai/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\"  rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
    
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("paimai/book_view.aspx?siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");
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
        strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a> ");
        strhtml.Append( "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span><br/>");
        strhtml.Append(relistVo[i].content);
        strhtml.Append("</div>");
        k = k + 1;
    }

    if (relistVo == null) 
    {
        strhtml.Append("<div class=\"tip\">暂无评论！</div>");
    }
    else
    {
        strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "paimai/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re.ToString() + ")</a></div>");
    }
    strhtml.Append("</div>");

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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "paimai/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
