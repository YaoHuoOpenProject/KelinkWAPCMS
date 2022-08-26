<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.novel.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("书本管理|书本管理|Content of "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
    
    strhtml.Append("管理:书本");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">分卷</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">目录</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">回复</a>");
    
    
    strhtml.Append("<br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "novel/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">添加书本</a> ");
    strhtml.Append(" <a href=\"" + this.http_start + "novel/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "novel/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">参数属性配置</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd5.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">采集接口新增</a><br/>");
    
    strhtml.Append("关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid" + r + "\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "novel/admin_userlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor>(ID为0时所有) ");


    strhtml.Append("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    
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
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核</a>]";
        
        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取审</a>]";
       
        }
        strhtml.Append(index + "." + YesOrNo + CheckStr);
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">修</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPchange.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">转</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">分卷</a>(" + listVo[i].VolumeNum + ")/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">目录</a>(" + listVo[i].SectionsNum + ")/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">回复</a>(" + listVo[i].book_re + ")");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>");
        strhtml.Append("/ID" + listVo[i].id + "]");
        strhtml.Append("<a href=\"" + http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;bookid=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "</a>");
        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无书本！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;gopathname="+HttpUtility.UrlEncode("小说类")+"&amp;gopath=novel/index.aspx\">返回上级</a> ");
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
    strhtml.Append("管理:书本");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">分卷</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">目录</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=0\">回复</a>");
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");   
    strhtml.Append(" <a href=\"" + this.http_start + "novel/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">添加书本</a> ");
    strhtml.Append(" <a href=\"" + this.http_start + "novel/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "novel/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">参数属性配置</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd5.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">采集接口新增</a><br/>");
    
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "novel/admin_userlistWAP.aspx\" method=\"get\">");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("(ID为0时所有)</form>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
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
            CheckStr = "<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核</a>/";
        
        }
        else
        {
            YesOrNo = "√";
            CheckStr = "<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取审</a>/";
       
        }

        strhtml.Append(index + "." + YesOrNo + CheckStr);    
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPadd.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">修</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_WAPchange.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">转</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">分卷</a>(" + listVo[i].VolumeNum + ")/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">目录</a>(" + listVo[i].SectionsNum + ")/");
        strhtml.Append("<a href=\"" + this.http_start + "novel/admin_userlistWAP4.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].id + "\">回复</a>(" + listVo[i].book_re + ")");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>");
        strhtml.Append("/ID" + listVo[i].id + "]");
        strhtml.Append("<a href=\"" + http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;bookid=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "</a>");
        
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

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("小说类") + "&amp;gopath=novel/index.aspx\">返回上级</a> ");
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


