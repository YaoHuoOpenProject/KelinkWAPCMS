<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.novel.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    if (action == "" || action == "class")
    {
        strhtml.Append("排序:<select name=\"sort\" value=\"1\">");
        strhtml.Append("<option value=\"0\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">升序</option>");
        strhtml.Append("<option value=\"1\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=1&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</option>");
        strhtml.Append("<option value=\"2\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=2&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">收藏</option>");
        strhtml.Append("<option value=\"3\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=3&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">推荐</option>");
        strhtml.Append("<option value=\"4\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=4&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">字数</option>");
        strhtml.Append("<option value=\"5\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=5&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击</option>");
        strhtml.Append("<option value=\"6\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=6&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">鲜花</option>");
        strhtml.Append("<option value=\"7\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=7&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">板砖</option>");
        strhtml.Append("<option value=\"8\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=8&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">连载</option>");
        strhtml.Append("<option value=\"9\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=9&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">全本</option>");
        strhtml.Append("<option value=\"10\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=10&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">月点击</option>");
        strhtml.Append("<option value=\"11\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=11&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">周点击</option>");
        strhtml.Append("<option value=\"12\" onpick=\"" + http_start + "novel/book_list.aspx?ordertype=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">日点击</option>");

        strhtml.Append("</select><br/>");
        if (WapTool.getArryString(classVo.smallimg, '|', 3) == "1")
        {
            strhtml.Append("【<a href=\"" + this.http_start + "novel/admin_WAPadd5.aspx?goback=book_list&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我要添加小说</a>】<br/>");
        }
    }
    //显示列表
    strhtml.Append(linkTOP);
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        
        strhtml.Append(index + ".<a href=\"" + http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;bookid=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?key=" +HttpUtility.UrlEncode(listVo[i].book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + listVo[i].book_author + "</a>/");
        strhtml.Append(listVo[i].Process + "(");
        if (this.orderType == "2")
        {
            strhtml.Append(listVo[i].CollectionNum);
        }
        else if (this.orderType == "3")
        {
            strhtml.Append(listVo[i].RecommendNum);
        }
        else if (this.orderType == "4")
        {
            strhtml.Append(listVo[i].CharNum);
        }
        else if (this.orderType == "6")
        {
            strhtml.Append(listVo[i].FlowerClick);
        }
        else if (this.orderType == "7")
        {
            strhtml.Append(listVo[i].EggClick);
        }
        else if (this.orderType == "10")
        {
            strhtml.Append(listVo[i].MonthClick);
        }
        else if (this.orderType == "11")
        {
            strhtml.Append(listVo[i].WeekClick);
        }
        else if (this.orderType == "12")
        {
            strhtml.Append(listVo[i].DayClick);
        }
        else
        {
            strhtml.Append(listVo[i].book_click);
        }

        strhtml.Append(")");
        if (listVo[i].book_info.Length > 30) listVo[i].book_info = listVo[i].book_info.Substring(0, 30) + "...";
        strhtml.Append("<br/>简介:" + listVo[i].book_info);
        strhtml.Append("<br/>--------<br/>");

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


    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB对应代码
    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示排列
    if (action == "" || action == "class")
    {
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt5\">");
        strhtml_list.Append("<a ");
        if (this.orderType == "1")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append("href=\"" + this.http_start + "novel/book_list.aspx?ordertype=1&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "0")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">升序</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "2")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=2&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">收藏</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "3")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=3&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">推荐</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "4")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=4&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">字数</a>");
       
        strhtml_list.Append("</div></div>");

        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt5\">");
        strhtml_list.Append("<a ");
        if (this.orderType == "5")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=5&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "6")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=6&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">鲜花</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "7")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=7&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">板砖</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "8")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=8&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">连载</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "9")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=9&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">全本</a>");
        
        strhtml_list.Append("</div></div>");

        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt3\">");
        strhtml_list.Append("<a ");
        if (this.orderType == "10")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=10&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">月点击</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "11")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=11&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">周点击</a>");
        strhtml_list.Append("<a ");
        if (this.orderType == "12")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "novel/book_list.aspx?ordertype=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">日点击</a>");
       
        strhtml_list.Append("</div></div>");
        
       
        if (WapTool.getArryString(classVo.smallimg, '|', 3) == "1")
        {
            strhtml_list.Append("<div class=\"btBox\"><div class=\"bt1\">");
            strhtml_list.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd5.aspx?goback=book_list&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我要添加小说</a>");
            strhtml_list.Append("</div></div>");
        }
       
    }
    //显示列表
   // strhtml_list.Append(linkTOP);
    strhtml_list.Append("<!--listS-->");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        strhtml_list.Append("<a href=\"" + http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;bookid=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "</a>/");
        strhtml_list.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(listVo[i].book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + listVo[i].book_author + "</a>/");
        strhtml_list.Append(listVo[i].Process + "(");
        if (this.orderType == "2")
        {
            strhtml_list.Append(listVo[i].CollectionNum);
        }
        else if (this.orderType == "3")
        {
            strhtml_list.Append(listVo[i].RecommendNum);
        }
        else if (this.orderType == "4")
        {
            strhtml_list.Append(listVo[i].CharNum);
        }
        else if (this.orderType == "6")
        {
            strhtml_list.Append(listVo[i].FlowerClick);
        }
        else if (this.orderType == "7")
        {
            strhtml_list.Append(listVo[i].EggClick);
        }
        else if (this.orderType == "10")
        {
            strhtml_list.Append(listVo[i].MonthClick);
        }
        else if (this.orderType == "11")
        {
            strhtml_list.Append(listVo[i].WeekClick);
        }
        else if (this.orderType == "12")
        {
            strhtml_list.Append(listVo[i].DayClick);
        }
        else 
        {
            strhtml_list.Append(listVo[i].book_click);
        }
        
        strhtml_list.Append(")");
        if (listVo[i].book_info.Length > 30) listVo[i].book_info = listVo[i].book_info.Substring(0, 30) + "...";
        strhtml_list.Append("<br/><span class=\"subtitleview\">" + listVo[i].book_info);
        strhtml_list.Append("</span></div>");
            
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml_list.Append("<!--listE-->");
    //显示导航分页
    strhtml_list.Append(linkURL);

    if (isWebHtml == "")
    {
        strhtml.Append(strhtml_list);

    }
    else  //显示电脑html
    {
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list.ToString()), wmlVo));
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
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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
