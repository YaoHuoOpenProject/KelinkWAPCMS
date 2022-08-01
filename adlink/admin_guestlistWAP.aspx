<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAP.aspx.cs" Inherits="KeLin.WebSite.adlink.admin_guestlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("点击明细|点击明细|re of the adlink"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">内容管理</a>.点击明细<br/>");
    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
    
   
    strhtml.Append("广告ID：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid" + r + "\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "adlink/admin_guestlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    
    strhtml.Append("<br/>");
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        
        strhtml.Append(index + ".[广告ID"+listVo[i].bookid+"][<a href=\"" + this.http_start + "adlink/admin_guestlistWAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "adlink/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].bookid + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">看</a>]<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=\">"+listVo[i].nickname+"</a>已获"+listVo[i].myGetMoney+"币<br/>("+ listVo[i].content + "/" + listVo[i].redate + ")<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;gopathname="+HttpUtility.UrlEncode("留言板类")+"&amp;gopath=adlink/index.aspx\">返回上级</a> ");
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
    strhtml.Append("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">内容管理</a>.点击明细<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "adlink/admin_guestlistWAPdel.aspx?action=goall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">清空记录</a><br/>");
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "adlink/admin_guestlistWAP.aspx\" method=\"get\">");
    strhtml.Append("广告ID：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/><br/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    strhtml.Append("</div>");

    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
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


        strhtml.Append(index + ".[广告ID" + listVo[i].bookid + "][<a href=\"" + this.http_start + "adlink/admin_guestlistWAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "adlink/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].bookid + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">看</a>]<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=\">" + listVo[i].nickname + "</a>已获" + listVo[i].myGetMoney + "币<br/>(" + listVo[i].content + "/" + listVo[i].redate + ")");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("留言板类") + "&amp;gopath=adlink/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    //Response.Write(strhtml);
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           



}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


