<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_BAK.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_BAK" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("历史数据."+bookVo.book_title, wmlVo));//显示头
if (toUserVo.city.Trim() == "")
{
    toUserVo.city = "交友"; //会员城市
}
if (bookVo.islock == 1)
{
    content = ""; //锁贴后不显示内容
}                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   if (bookVo.ischeck == 2)
   {
       strhtml.Append("<b>此贴已在回收站！<br/></b>");
   }
   //显示广告
   if(adVo.threeShowTop!=""){
       //strhtml.Append(adVo.threeShowTop+"<br/>");
   }
    
    //顶部按钮
   strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回</a><br/>");
  
    
   if (bookVo.sendMoney > 0)
   {
       strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");

   }
   if (this.threePageType == "1")
   {
       strhtml.Append("[标题]:" + bookVo.book_title + "-阅(" + bookVo.book_click + ")<br/>");
       strhtml.Append("[时间]:" + bookVo.book_date + "<br/>");
       //显示专题
       if (bookVo.topic > 0)
       {
           strhtml.Append("[专题]:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

       }
       strhtml.Append("[版块]:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a><br/>");
       strhtml.Append("----------<br/>");
       strhtml.Append(content + "<br/>");
       strhtml.Append(linkURL);
       //显示投票选项
       if (bookVo.isVote == 1)
       {
           strhtml.Append("----------<br/>");
           strhtml.Append("投票选项：<br/>");
           for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
           {
               strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
           }
           strhtml.Append("----------<br/>");

       }       
       if (bookVo.whylock != "")
       {
           bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
           string[] arry = bookVo.whylock.Split('|');
           bookVo.whylock = arry[0];
           //strhtml.Append("<div class=\"tip\">");
           strhtml.Append(bookVo.whylock);
           strhtml.Append("<br/>");
           if (arry.Length > 2)
           {
               strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a><br/>");
           }
       }
       strhtml.Append("[楼主]:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
       strhtml.Append("[等级]:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + "<br/>");
       strhtml.Append("[荣誉]:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");
       strhtml.Append("[身份]:" + WapTool.GetMyID(toUserVo.idname, lang) + "<br/>");
       strhtml.Append("[地区]:<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");
       strhtml.Append("[相关]:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + bookVo.book_pub + "&amp;" + "\">回复</a><br/>");
       //strhtml.Append("[操作]:<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>.<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">下载</a>.<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a><br/> ");
       strhtml.Append("[分享]:<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">新浪</a>.<a href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">腾讯</a>.<a href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">搜狐</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">更多</a><br/>");
        
       strhtml.Append("[签名]:<u>" + toUserVo.remark + "</u><br/>");
       strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ")<br/>");
      

   }
   else
   {
       strhtml.Append("标题:" + bookVo.book_title + "-阅(" + bookVo.book_click + ")<br/>");
       strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
       strhtml.Append("等级:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + " 勋章:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");

       strhtml.Append(WapTool.GetMyID(toUserVo.idname, lang) + " 地区: <a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");

       strhtml.Append("" + bookVo.book_date + "<br/>");

       strhtml.Append(content + "<br/>");
       strhtml.Append(linkURL);

       //显示专题
       if (bookVo.topic > 0)
       {
           strhtml.Append("专题:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

       }
       strhtml.Append("所属:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a><br/>");


       //显示投票选项
       if (bookVo.isVote == 1)
       {
           strhtml.Append("----------<br/>");
           strhtml.Append("投票选项：<br/>");
           for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
           {
               strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
           }
           strhtml.Append("----------<br/>");

       }


       if (bookVo.whylock != "")
       {
           bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
           string[] arry = bookVo.whylock.Split('|');
           bookVo.whylock = arry[0];
           //strhtml.Append("<div class=\"tip\">");
           strhtml.Append(bookVo.whylock);
           strhtml.Append("<br/>");
           if (arry.Length > 2)
           {
               strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a><br/>");
           }


       }


       //显示最新回复
       strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ")<br/>");
       strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>/<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>/<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a>/<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
       strhtml.Append("------------<br/>");
       strhtml.Append("楼主:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + bookVo.book_pub + "&amp;" + "\">回复</a><br/>");
       strhtml.Append("<u>签名:" + toUserVo.remark + "</u><br/>");
   }
   strhtml.Append("------------<br/>");
   //显示上一页下一页
   strhtml.Append(preNextTitle);
   if (preNextTitle.ToString() != "")
   {
       strhtml.Append("------------<br/>");
   }
   if (bookVo.islock == 0)
   {
       strhtml.Append("历史数据不能回复<br/>");
       
       strhtml.Append("------------<br/>");
   }
       for (int i = 0; (relistVo != null && i < relistVo.Count && i < 5); i++)
       {
           if (relistVo[i].book_top == 1)
           {
               strhtml.Append("[顶楼]");
           }
           else
           {
               strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
           }
           strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;vpage=" + this.CurrentPage + "&amp;reply=" + (bookVo.book_re - k) + "&amp;id=" + this.id + "\">回</a>]");

           strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;backurl=" + "\">" + relistVo[i].nickname + "(" + relistVo[i].userid + ")</a>");

           if (relistVo[i].reply != 0)
           {
               strhtml.Append("回复" + relistVo[i].reply + "楼");
           }
           strhtml.Append(":");
           strhtml.Append(relistVo[i].content);

           if (relistVo[i].isdown > 0)
           {
               strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + relistVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + relistVo[i].isdown + "个附件</a>}");
           }
           strhtml.Append("(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
           k = k + 1;
       }

       if (relistVo == null)
       {
           //strhtml.Append("暂无回复！<br/>");
       }
       else
       {
           strhtml.Append("<a href=\"" + http_start + "bbs/book_re_bak.aspx?lpage=" + this.lpage + "&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a><br/>");
       }
       strhtml.Append("------------<br/>");
   
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
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}else{ //2.0

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码
    
    if (bookVo.ischeck == 2)
    {
        strhtml.Append("<div class=\"tip\"><b>此贴已在回收站！</b></div>");
    } 
    strhtml.Append("<div class=\"title\">" + this.GetLang("查看贴子|查看贴子|查看贴子") + "</div>");
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }

    
    //顶部按钮
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("历史数据.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回</a> ");
    strhtml.Append("</div>");

    if (this.threePageType == "1")
    {
        strhtml.Append("<div class=\"content\">");
        if (bookVo.sendMoney > 0)
        {
            strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");
        }
        strhtml.Append("[标题]:" + bookVo.book_title + "-阅(" + bookVo.book_click + ")<br/>");
        strhtml.Append("[时间]:" + bookVo.book_date + "<br/>");
        //显示专题
        if (bookVo.topic > 0)
        {
            strhtml.Append("[专题]:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

        }
        strhtml.Append("[版块]:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a><br/>");
        strhtml.Append("----------<br/>");
        strhtml.Append(content + "</div>");
        
        strhtml.Append(linkURL);

       
        //显示投票选项
        if (bookVo.isVote == 1)
        {
            strhtml.Append("<div class=\"content\">");
            strhtml.Append("----------<br/>");
            strhtml.Append("投票选项：<br/>");
            for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
            }
            strhtml.Append("----------<br/>");
            strhtml.Append("</div>");

        }
        
        if (bookVo.whylock != "")
        {
            strhtml.Append("<div class=\"tip\">");
            bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
            string[] arry = bookVo.whylock.Split('|');
            bookVo.whylock = arry[0];
            //strhtml.Append("<div class=\"tip\">");
            strhtml.Append(bookVo.whylock);
            strhtml.Append("");
            if (arry.Length > 2)
            {
                strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a>");
            }
            strhtml.Append("</div>");
        }
       
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("[楼主]:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
        strhtml.Append("[等级]:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + "<br/>");
        strhtml.Append("[荣誉]:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");
        strhtml.Append("[身份]:" + WapTool.GetMyID(toUserVo.idname, lang) + "<br/>");
        strhtml.Append("[地区]:<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");
        strhtml.Append("[相关]:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + bookVo.book_pub + "&amp;" + "\">回复</a><br/>");
        //strhtml.Append("[操作]:<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>.<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">下载</a>.<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a><br/> ");
        strhtml.Append("[分享]:<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">新浪</a>.<a href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">腾讯</a>.<a href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view_bak.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">搜狐</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">更多</a><br/>");
        
        strhtml.Append("[签名]:<u>" + toUserVo.remark + "</u><br/>");
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ")<br/>");
        strhtml.Append("</div>");

    }
    else
    {

        strhtml.Append("<div class=\"content\">");
        if (bookVo.sendMoney > 0)
        {
            strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");

        }

        strhtml.Append("标题:<b>" + bookVo.book_title + "-阅(" + bookVo.book_click + ")</b><br/>");


        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
        strhtml.Append("等级:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + " 勋章:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");

        strhtml.Append(WapTool.GetMyID(toUserVo.idname, lang) + " 地区: <a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");

        strhtml.Append("" + bookVo.book_date);

        strhtml.Append("<br/>");

        strhtml.Append(content + "</div>");

        strhtml.Append(linkURL);

        strhtml.Append("<div class=\"content\">");

        //显示专题
        if (bookVo.topic > 0)
        {
            strhtml.Append("专题:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

        }
        strhtml.Append("所属:<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a>");

        strhtml.Append("</div>");

        //显示投票选项
        if (bookVo.isVote == 1)
        {
            strhtml.Append("<div class=\"content\">");
            strhtml.Append("----------<br/>");
            strhtml.Append("投票选项：<br/>");
            for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
            }
            strhtml.Append("----------<br/>");

            strhtml.Append("</div>");
        }




        if (bookVo.whylock != "")
        {
            bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
            string[] arry = bookVo.whylock.Split('|');
            bookVo.whylock = arry[0];
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(bookVo.whylock);
            if (arry.Length > 2)
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a>");
            }
            strhtml.Append("</div>");
        }


        strhtml.Append("<div class=\"subtitle\">");

        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ")<br/>");
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>/<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>/<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a>/<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
        strhtml.Append("楼主:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + bookVo.book_pub + "&amp;" + "\">回复</a><br/>");
        strhtml.Append("<u>签名:" + toUserVo.remark + "</u><br/>");
        strhtml.Append("</div>");
        
    }
    //显示上一页下一页
        strhtml.Append(preNextTitle);
        
        //显示最新回复
        strhtml.Append("<div class=\"content\">");
        if (bookVo.islock == 0)
        {
         strhtml.Append("历史数据不能回复<br/>");
    }
        for (int i = 0; (relistVo != null && i < relistVo.Count && i < 5); i++)
        {
            if (relistVo[i].book_top == 1)
            {
                strhtml.Append("[顶楼]");
            }
            else
            {
                strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;vpage=" + this.CurrentPage + "&amp;reply=" + (bookVo.book_re - k) + "&amp;id=" + this.id + "\">回</a>]");

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;backurl=" + "\">" + relistVo[i].nickname + "(" + relistVo[i].userid + ")</a>");
            if (relistVo[i].reply != 0)
            {
                strhtml.Append("回复" + relistVo[i].reply + "楼");
            }
            strhtml.Append(":");
            strhtml.Append(relistVo[i].content);

            if (relistVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + relistVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + relistVo[i].isdown + "个附件</a>}");
            }
            strhtml.Append("(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
            k = k + 1;
        }

        if (relistVo == null)
        {
            //strhtml.Append("暂无回复！<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "bbs/book_re_bak.aspx?lpage=" + this.lpage + "&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a><br/>");
        }

        strhtml.Append("</div>");

        //显示电脑版
        if (isWebHtml != "")
        {
            string strhtml_list = strhtml.ToString();
            int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
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
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
   

    //输出错误
    strhtml.Append(ERROR);
    

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
