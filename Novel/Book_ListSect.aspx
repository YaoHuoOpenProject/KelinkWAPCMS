<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_ListSect.aspx.cs" Inherits="KeLin.WebSite.novel.Book_ListSect" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title+ "-"+ classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    if (showindex == true)
    {
        strhtml.Append("<b>");
        strhtml.Append(bookVo.book_title);
        strhtml.Append("</b><br/>");
        
        if (bookVo.book_img != "") strhtml.Append("<img src=\"" + bookVo.book_img + "\" alt=\".\"/><br/>");
        strhtml.Append("[分类]<a href=\"" + this.http_start + "novel/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.classVo.classname + "</a>");
        strhtml.Append("<br/>[作者]<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a>");
        strhtml.Append("<br/>[主角]" + bookVo.Protagonists);
        strhtml.Append("<br/>[字数]" + this.GetChanrNum(bookVo.CharNum) + "字");
        strhtml.Append("<br/>[状态]" + bookVo.Process);
        strhtml.Append("<br/>[授权]" + bookVo.Authorized + "/" + bookVo.Nature);
        strhtml.Append("<br/>[星级]" + bookVo.Star);
        strhtml.Append("<br/>[点击]总:" + bookVo.book_click + "/月:" + bookVo.MonthClick + "/周:" + bookVo.WeekClick + "/日:" + bookVo.DayClick);
        strhtml.Append("<br/>[投票]<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=1\">鲜花(" + bookVo.FlowerClick + ")</a> <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=0\">板砖(" + bookVo.EggClick + ")</a>");
        if (bookVo.book_info.Length > 200) bookVo.book_info = bookVo.book_info.Substring(0, 200) + "...";
        strhtml.Append("<br/>[简介]" + bookVo.book_info);
        strhtml.Append("<br/>[更新时间]" + string.Format("{0:yy-MM-dd HH:MM}", bookVo.LastUpdateTime));
        if (bookVo.LastUpdateBook != "")
        {
            strhtml.Append("<br/>[更新章节]" + bookVo.LastUpdateBook);
        }
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">收藏</a>]" + bookVo.CollectionNum + "人[<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "" + "\">推荐</a>]" + bookVo.RecommendNum + "人[<a href=\"" + this.http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=0&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">评论</a>]" + bookVo.book_re + "人");

        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/shareall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">全本下载</a>][<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">加入书架</a>]");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=0&amp;pn=next\">马上看书</a>]");
        strhtml.Append("<br/><b>【本书分卷】</b><br/>");
     
        for (int i = 0; (listVolumeVo != null && i < listVolumeVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;ordertype=0&amp;volumeid=" + listVolumeVo[i].VolumeId + "\">" + listVolumeVo[i].VolumeName + "</a>");
            if (i != (listVolumeVo.Count - 1)) strhtml.Append("/");
        }
        if (listVolumeVo == null) strhtml.Append("无分卷！");
        strhtml.Append("<br/>");
        strhtml.Append("<b>【本书目录】</b><br/>");


    }
    else
    {
        strhtml.Append("<b>" + bookVo.book_title);
        if (this.volumeid != "0")
        {
            strhtml.Append("." + this.volumeName );
        }
        strhtml.Append("</b><br/>");
    }
    strhtml.Append("排序:");
    if (showindex == false)
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">书页</a>");
    }
    else
    {
        strhtml.Append("书页");
    }
    strhtml.Append("|");
    if (this.orderType == "1")
    {
        strhtml.Append("倒序");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=1\">倒序</a>");
    }
    strhtml.Append("|");

    if (this.orderType == "0")
    {
        strhtml.Append("升序");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0\">升序</a>");
    }
    if (this.volumeid != "0")
    {
        strhtml.Append("|<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=0&amp;ordertype=" + this.orderType + "\">全部</a>");

    }
    else
    {
        strhtml.Append("|全部");
    }
    strhtml.Append("<br/>--------<br/>");
    //显示列表
    strhtml.Append(linkTOP);
  
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".<a href=\"" + http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].BookId + "&amp;id=" + listVo[i].SectionId + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].SectionTitle + "</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
        strhtml.Append(WapTool.GetVS(wmlVo));
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    if (showindex == true)
    {
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append(bookVo.book_title);
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        if (bookVo.book_img != "") strhtml.Append("<img src=\"" + bookVo.book_img + "\" alt=\".\"/><br/>");
        strhtml.Append("[分类]<a href=\""+this.http_start+"novel/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">" + this.classVo.classname+"</a>");
        strhtml.Append("<br/>[作者]<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a>");
        strhtml.Append("<br/>[主角]" + bookVo.Protagonists);
        strhtml.Append("<br/>[字数]" + this.GetChanrNum(bookVo.CharNum) + "字");
        strhtml.Append("<br/>[状态]" + bookVo.Process);
        strhtml.Append("<br/>[授权]" + bookVo.Authorized + "/" + bookVo.Nature);
        strhtml.Append("<br/>[星级]" + bookVo.Star);
        strhtml.Append("<br/>[点击]总:" + bookVo.book_click + "/月:" + bookVo.MonthClick + "/周:" + bookVo.WeekClick + "/日:" + bookVo.DayClick);
        strhtml.Append("<br/>[投票]<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=1\">鲜花(" + bookVo.FlowerClick + ")</a> <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=0\">板砖(" + bookVo.EggClick + ")</a>");
        if (bookVo.book_info.Length > 200) bookVo.book_info = bookVo.book_info.Substring(0, 200) + "...";
        strhtml.Append("<br/>[简介]" + bookVo.book_info);
        strhtml.Append("<br/>[更新时间]" + string.Format("{0:yy-MM-dd HH:MM}", bookVo.LastUpdateTime));
        if (bookVo.LastUpdateBook != "")
        {
            strhtml.Append("<br/>[更新章节]" + bookVo.LastUpdateBook);
        }
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">收藏</a>]" + bookVo.CollectionNum + "人[<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "" + "\">推荐</a>]" + bookVo.RecommendNum + "人[<a href=\"" + this.http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=0&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">评论</a>]" + bookVo.book_re + "人");

        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/shareall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">全本下载</a>][<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">加入书架</a>]");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=0&amp;pn=next\">马上看书</a>]");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">【本书分卷】</div>");
        strhtml.Append("<div class=\"content\">");
        for (int i = 0; (listVolumeVo != null && i < listVolumeVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;ordertype=0&amp;volumeid=" + listVolumeVo[i].VolumeId + "\">" + listVolumeVo[i].VolumeName + "</a>");
            if (i != (listVolumeVo.Count-1)) strhtml.Append("/");
        }
        if (listVolumeVo == null) strhtml.Append("无分卷！");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">【本书目录】</div>");


    }
    else
    {
        strhtml.Append("<div class=\"subtitle\"><b>"+bookVo.book_title);
        if (this.volumeid != "0")
        {
            strhtml.Append("." + this.volumeName );
        }
        strhtml.Append("</b></div>");
    }
    //显示排列
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");



    strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">书页</a>");


    strhtml.Append("<a ");
    if (this.orderType == "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=1\">倒序</a>");


    strhtml.Append("<a ");
    if (this.orderType == "0")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append(" href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0\">升序</a>");


    strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=0&amp;ordertype=" + this.orderType + "\">全部</a>");


    strhtml.Append("</div></div>");
    //显示列表
    //strhtml.Append(linkTOP);
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    strhtml.Append("<!--listS-->");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("<a href=\"" + http_start + "novel/view.aspx?id=" + listVo[i].SectionId + lpagetemp + "\">" + listVo[i].SectionTitle + "</a>");
        
        strhtml.Append("</div>");
            
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml.Append("<!--listE-->");
    //显示导航分页
    strhtml.Append(linkURL);
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
    
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid+ "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
   
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
