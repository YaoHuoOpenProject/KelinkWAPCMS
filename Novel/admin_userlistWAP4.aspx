<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP4.aspx.cs" Inherits="KeLin.WebSite.novel.admin_userlistWAP4" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("回复管理|回复管理|Content of "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("<b>" + classVo.classname + "</b><br/>");

    strhtml.Append("管理:<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">书本</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">分卷</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">目录</a>");
    strhtml.Append("/回复");
    
    strhtml.Append("<br/>");
    
    strhtml.Append("关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("书本ID：<input type=\"text\" name=\"bookid" + r + "\" value=\"" + bookid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "novel/admin_userlistWAP4.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"bookid\" value=\"$(bookid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor>(ID为0时所有) ");

    strhtml.Append("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        if (listVo[i].ischeck.ToString() == "1")
        {
            YesOrNo = "×";
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheck&amp;bookid="+this.bookid+"&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核</a>]";

        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheck&amp;bookid=" + this.bookid + "&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取审</a>]";

        }
        strhtml.Append(index + "." + YesOrNo + CheckStr);  
        strhtml.Append("[书本ID:" + listVo[i].bookId + "/章节ID:" + listVo[i].sectionId + "]");

        strhtml.Append("[<a href=\"" + this.http_start + "novel/admin_WAPdel4.aspx?action=go&amp;bookid=" + listVo[i].bookId + "&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd4.aspx?action=go&amp;bookid=" + listVo[i].bookId + "&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">修</a>]");

        strhtml.Append(listVo[i].book_content);
      
        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + classVo.classname + "</div>");
    //显示搜索
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("管理:<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">书本</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">分卷</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">目录</a>");
    strhtml.Append("/回复");
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");   
    
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "novel/admin_userlistWAP4.aspx\" method=\"get\">");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("书本ID：<input type=\"text\" name=\"bookid\" value=\"" + bookid + "\" size=\"5\"/><br/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("(ID为0时所有)</form>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
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

        if (listVo[i].ischeck.ToString() == "1")
        {
            YesOrNo = "×";
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheck&amp;bookid=" + this.bookid + "&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核</a>/";

        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?action=gocheck&amp;bookid=" + this.bookid + "&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取审</a>/";
        }
        strhtml.Append(index + "." + YesOrNo + CheckStr);

        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPdel4.aspx?action=go&amp;bookid=" + listVo[i].bookId + "&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd4.aspx?action=go&amp;bookid=" + listVo[i].bookId + "&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">修</a>/");
        strhtml.Append("书本ID:" + listVo[i].bookId + "/章节ID:" + listVo[i].sectionId + "]");

        strhtml.Append("<br/>"+listVo[i].book_content);
        
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"mylink\">");

    strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


