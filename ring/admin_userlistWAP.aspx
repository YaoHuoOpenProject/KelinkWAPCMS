<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.ring.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("铃声内容|铃声內容|Content of the ring"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("内容管理.<a href=\"" + this.http_start + "ring/admin_guestlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">评论管理</a><br/>");
    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">一对多批量上传</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadd2.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">一对一批量上传</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPaddText.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">铃声采集接口</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "ring/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">更多栏目属性配置</a><br/>");
   
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid" + r + "\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "ring/admin_userlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor>(ID为0时所有) ");

    strhtml.Append("<br/><a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    //strhtml.Append("<br/>");
    
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
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核</a>]";

        }
        else if (listVo[i].ischeck.ToString() == "2")
        {
            YesOrNo = "投";
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">审核会员上传</a>]";

        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取审</a>]";
       
        }
        strhtml.Append(index + "." + YesOrNo +CheckStr+ "[<a href=\"" + this.http_start + "ring/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "ring/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">修</a>][<a href=\"" + this.http_start + "ring/admin_WAPchange.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">转</a>][<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>]<a href=\"" + http_start + "ring/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click.ToString() + ")</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;gopathname="+HttpUtility.UrlEncode("铃声类")+"&amp;gopath=ring/index.aspx\">返回上级</a> ");
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
    strhtml.Append("内容管理.<a href=\"" + this.http_start + "ring/admin_guestlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">评论管理</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">一对多批量上传</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadd2.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">一对一批量上传</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPaddText.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">铃声采集接口</a><br/>");
    strhtml.Append(" <a href=\"" + this.http_start + "ring/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "ring/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">更多栏目属性配置</a><br/>");
   
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "ring/admin_userlistWAP.aspx\" method=\"get\">");
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("(ID为0时所有)</form>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
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
            YesOrNo="nono.gif";
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">审核</a>]";

        }
        else if (listVo[i].ischeck.ToString() == "2")
        {
            YesOrNo = "2.gif";
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">审核会员上传</a>]";

        }
        else
        {
            YesOrNo = "yes.gif";
            CheckStr = "[<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">取审</a>]";
       
        }
        strhtml.Append(index + ".<img src=\"" + this.http_start + "NetImages/" + YesOrNo + "\" alt=\"YES\"/>" + CheckStr + "[<a href=\"" + this.http_start + "ring/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "ring/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">修</a>][<a href=\"" + this.http_start + "ring/admin_WAPchange.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "\">转</a>][<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "" + "\">" + listVo[i].classname + "</a>]<a href=\"" + http_start + "ring/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click.ToString() + ")</a></div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("铃声类") + "&amp;gopath=ring/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    
    strhtml.Append("</div></div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


