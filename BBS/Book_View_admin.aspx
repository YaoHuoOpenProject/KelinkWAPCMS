<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_admin.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_admin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("管理帖子|管理貼子|Management Notes"), wmlVo));//显示头 
if(ver=="1"){

    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append("标题:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
    strhtml.Append("作者:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    strhtml.Append("时间:"+bookVo.book_date+"<br/>");
    strhtml.Append("所属:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    strhtml.Append("----------<br/>");
 
    strhtml.Append("楼主可选择操作：<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">修改帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">文字续帖</a>]<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件续传|文件续传|upload file") + "</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">删除帖子</a>]<br/>");
    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除结帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">结束帖子</a>] ");
    }
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">查看加黑</a>] ");

    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">附件管理</a>]<br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("版主可选择操作：<br/>");
 

    if (bookVo.book_top == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消置顶</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">置顶帖子</a>] ");
    }


    if (bookVo.book_good == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消加精</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">加精帖子</a>] ");
    }
    
    

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">修改帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_check.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">审核帖子</a>] ");
    
    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">文字续帖</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件续传|文件续传|upload file") + "</a>] ");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_change.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">转移帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">删除帖子</a>] ");



    strhtml.Append("<br/>");

    if (bookVo.islock == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除锁帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">锁定帖子</a>] ");
    }


    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除结帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">结束帖子</a>] ");
    }
    
    


    strhtml.Append("<br/>");

    if (bookVo.isdown == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除沉帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">设置沉帖</a>] ");
    }

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">加黑用户</a>] ");
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">附件管理</a>]<br/>");
    
    if (bookVo.book_top == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消全区置顶</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">置顶为全区帖子</a>] ");
    }
    
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtoDown.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">附件帖推送到下载模块</a>]<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtopic.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">设为专题</a>] 所属:" + WapTool.getSmallTypeName(siteid, bookVo.topic.ToString()));
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
    strhtml.Append(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
    
}else{ //2.0界面

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("管理帖子|管理貼子|Management Notes") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("标题：<a href=\"" + this.http_start + "bbs-" + id + ".html\">" + bookVo.book_title + "</a><br/>");
    strhtml.Append("作者：<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    strhtml.Append("时间：" + bookVo.book_date + "<br/>");
    strhtml.Append("所属：<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("楼主可选择操作");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">修改帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">文字续帖</a>]<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件续传|文件续传|upload file") + "</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">删除帖子</a>]<br/>");
    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除结帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">结束帖子</a>] ");
    }
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">附件管理</a>] ");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("版主可选择操作");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"content\">");

    if (bookVo.book_top == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消置顶</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">置顶帖子</a>] ");
    }


    if (bookVo.book_good == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消加精</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">加精帖子</a>] ");
    }



    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">修改帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_check.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">审核帖子</a>] ");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">文字续帖</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件续传|文件续传|upload file") + "</a>] ");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_change.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">转移帖子</a>] ");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">删除帖子</a>] ");



    strhtml.Append("<br/>");

    if (bookVo.islock == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除锁帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">锁定帖子</a>] ");
    }


    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除结帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">结束帖子</a>] ");
    }




    strhtml.Append("<br/>");

    if (bookVo.isdown == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">解除沉帖</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">设置沉帖</a>] ");
    }

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;touserid=" + bookVo.book_pub + "\">加黑用户</a>] ");
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">附件管理</a>] ");
    if (bookVo.book_top == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">取消全顶</a>] ");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">全区置顶</a>] ");
    }
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs-" + id + ".html\">返回主题</a>");
    strhtml.Append(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>