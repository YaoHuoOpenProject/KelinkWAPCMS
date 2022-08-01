<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_back.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_back" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("论坛回收站|论坛回收站|Content of the bbs"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
    

    strhtml.Append("标题关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid" + r + "\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_list_back.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor>(ID为0时所有) ");
    

    strhtml.Append("<br/>");
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        

        if (listVo[i].book_top.ToString() == "1")
        {
            YesOrNo = YesOrNo + "<b>顶</b>";
            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gotop&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取顶</a>]";
        }
        else
        {

            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gotop&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">置顶</a>]";
        }
        if (listVo[i].book_good.ToString() == "1")
        {
            YesOrNo = YesOrNo + "<b>荐</b>";
            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gogood&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取荐</a>]";
        }
        else
        {

            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gogood&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">推荐</a>]";
        }
        strhtml.Append(index + "." + YesOrNo + CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back_del.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">删</a>][<a href=\"" + this.http_start + "bbs/book_list_back_reback.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">还原</a>][<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>]<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click.ToString() + ")</a><br/>[" + listVo[i].book_author + "]" + listVo[i].book_date + "<br/>");
        YesOrNo = "";
        CheckStr = "";
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<br/>说明:批量删除登录WEB后台。<br/>");
    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "\">返回上级</a> ");
    }
       strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");
    //显示搜索
    
    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "bbs/book_list_back.aspx\" method=\"get\">");
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("(ID为0时所有)</form>");

    strhtml.Append("</div>");

    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
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


        

        if (listVo[i].book_top.ToString() == "1")
        {
            YesOrNo = YesOrNo + "<b>顶</b>";
            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gotop&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取顶</a>]";
        }
        else
        {

            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gotop&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">置顶</a>]";
        }
        if (listVo[i].book_good.ToString() == "1")
        {
            YesOrNo = YesOrNo + "<b>荐</b>";
            //CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gogood&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取荐</a>]";
        }
        else
        {

           // CheckStr = CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=gogood&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">推荐</a>]";
        }
        strhtml.Append(index + "." + YesOrNo + CheckStr + "[<a href=\"" + this.http_start + "bbs/book_list_back_del.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">删</a>][<a href=\"" + this.http_start + "bbs/book_list_back_reback.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">还原</a>][<a href=\"" + this.http_start + "bbs/book_list_back.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>]<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click.ToString() + ")</a><br/>[" + listVo[i].book_author + "]" + listVo[i].book_date + "</div>");
        YesOrNo = "";
        CheckStr = "";
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );

    strhtml.Append("<div class=\"tip\">说明:批量删除登录WEB后台。</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");

    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "\">返回上级</a> ");
    } 
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


