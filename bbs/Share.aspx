<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.bbs.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("分享贴子|分享貼子|share Notes"), wmlVo));//显示头 
string title = "你的好友推荐给你一篇好文章《"+bookVo.book_title+"》";
string content = "推荐给你一篇好文章《"+bookVo.book_title+"》,网址是"+http_start+"bbs/view.aspx?id="+this.id+"";
string content2="推荐给你一篇好文章《"+bookVo.book_title+"》,[url="+http_start+"bbs/view.aspx?id="+this.id+"]点击进入[/url]";
if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write("标题:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
        Response.Write("作者:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        Response.Write("时间:" + bookVo.book_date + "<br/>");
        Response.Write("----------<br/>");
    }
    else
    {
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("----------<br/>");
    }
    
    Response.Write("<anchor><go href=\""+http_start+"bbs/messagelist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"go\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"content\" value=\""+content2+"\"/>");
    Response.Write("<postfield name=\"title\" value=\""+title+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
	Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id+"&amp;stype="+bookVo.topic+"&amp;lpage="+this.lpage) + "\"/>");
    Response.Write("</go>推荐给站内好友</anchor><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/share.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"goclan\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"vpage\" value=\"" + vpage + "\"/>");
    Response.Write("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>推荐到我的家族</anchor><br/>");

    Response.Write("<a href=\"" + this.http_start + "bbs/sharetomail.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">推荐到朋友邮箱</a><br/>");


    Response.Write("<a href=\"ext:sms/"+content+"\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    Response.Write("----------<br/>");
    Response.Write("分享至<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">新浪</a>.<a href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">腾讯</a>.<a href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">搜狐</a>.<a href=\"http://t.163.com/article/user/checkLogin.do?source=&amp;info=" + HttpUtility.UrlEncode(bookVo.book_title) + " " + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">网易</a><br/>");
    Response.Write("<a href=\"http://share.renren.com/share/buttonshare.do?link=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">人人网</a>.<a href=\"http://s.jiathis.com/?webid=kaixin001&amp;url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;uid=1&amp;jtss=1\">开心网</a><br/>");
    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成JAR下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成UMD下载</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成CHM下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成PDF下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EPUB(iphone格式)下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EML(邮件格式)下载</a><br/>");



    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0界面

    Response.Write("<div class=\"title\">" + this.GetLang("分享贴子|分享貼子|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");
    }
    if (downloadpath == "")
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write("标题:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
        //Response.Write("作者:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        //Response.Write("时间:" + bookVo.book_date + "<br/>");
        Response.Write("</div>");
    }
    else
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"content\" value=\"" + content2 + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"title\" value=\"" + title + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;stype=" + bookVo.topic + "&amp;lpage=" + this.lpage) + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"推荐给站内好友\"/></form><br/>");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/share.aspx\" method=\"get\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"goclan\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"vpage\" value=\"" + vpage + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" class=\"btn\" name=\"g\" value=\"推荐到我的家族\"/></form><br/>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\""+this.http_start +"bbs/sharetomail.aspx?siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;backurl=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">推荐到朋友邮箱</a><br/>");

    Response.Write("<a href=\"ext:sms/" + content + "\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    Response.Write("</div></div>");

    Response.Write("<div class=\"linkbtn\">");
    Response.Write("分享至<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">新浪</a>.<a  href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">腾讯</a>.<a  href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">搜狐</a>.<a href=\"http://t.163.com/article/user/checkLogin.do?source=&amp;info=" + HttpUtility.UrlEncode(bookVo.book_title) + " " + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">网易</a><br/><br/>");
    Response.Write("<a  href=\"http://share.renren.com/share/buttonshare.do?link=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">人人网</a>.<a  href=\"http://s.jiathis.com/?webid=kaixin001&amp;url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;uid=1&amp;jtss=1\">开心网</a>");
    Response.Write(" <a  href=\"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;pic_url=&amp;burl=" + HttpUtility.UrlEncode(this.http_start) + "&amp;g_ut=2\">QQ空间</a> ");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成JAR下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成UMD下载</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成CHM下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成PDF下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EPUB(iphone格式)下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EML(邮件格式)下载</a><br/>");
    Response.Write("</div></div>");

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>