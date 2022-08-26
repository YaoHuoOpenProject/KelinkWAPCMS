<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPClassList.aspx.cs" Inherits="KeLin.WebSite.album.admin_WAPClassList" %>


<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    Response.Write(WapTool.showTop(this.GetLang("相册分类|相册分类|Class of the album"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("分类管理.<a href=\"" + this.http_start + "album/admin_guestlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">评论管理</a><br/>");
    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "album/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">批量新增</a> ");
    strhtml.Append(" <a href=\"" + this.http_start + "album/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");
   
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid" + r + "\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "album/admin_userlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
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
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        
        strhtml.Append(index + "." + YesOrNo + "[<a href=\"" + this.http_start + "album/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "album/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].siteid + "&amp;page=" + this.CurrentPage + "\">修</a>][<a href=\"" + this.http_start + "album/admin_WAPchange.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].siteid + "&amp;page=" + this.CurrentPage + "\">转</a>][<a href=\"" + this.http_start + "album/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].siteid + "" + "\">" + listVo[i].subclassName + "</a>]<a href=\"" + http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].siteid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].subclassName + "</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;gopathname="+HttpUtility.UrlEncode("文章类")+"&amp;gopath=album/index.aspx\">返回上级</a> ");
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
    strhtml.Append("分类管理<br/>");

    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "album/admin_WAPClassList.aspx\" method=\"get\">");
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
        
        
        
        strhtml.Append(index + "[<a href=\"" + this.http_start + "album/admin_WAPClassdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "album/admin_WAPClassmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].siteid + "&amp;page=" + this.CurrentPage + "\">修</a>][<a href=\"" + this.http_start + "album/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].id + "" + "\">" + listVo[i].subclassName + "</a>]<a href=\"" + http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].siteid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].subclassName + "</a></div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无分类！</div>");
    }
    //增加分类
    strhtml.Append("<div class=\"topre\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "album/admin_WAPClassList.aspx\" method=\"post\">分类名称：<br/><input type=\"text\" name=\"content\" value=\"\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("album/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"新增分类\"/></form><br/>");
    strhtml.Append("</div>");
    
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("文章类") + "&amp;gopath=album/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


