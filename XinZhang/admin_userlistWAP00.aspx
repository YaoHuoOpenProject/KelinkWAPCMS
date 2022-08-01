<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP00.aspx.cs" Inherits="KeLin.WebSite.XinZhang.admin_userlistWAP00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");



    
    if (this.ordertype == "1")
    {
        strhtml.Append("按最新");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("按时间");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("按价高");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("按价低");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
    }


    strhtml.Append("<br/>网站ID：<input type=\"text\" name=\"tositeid" + r + "\" value=\"" + this.tositeid + "\" size=\"5\"/><br/>");



    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "xinzhang/admin_userlistWAP00.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"ischeck\" value=\"$(ischeck" + r + ")\" />");
    strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");

    strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_del00all.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">批量删除操作</a>]");
    strhtml.Append("<br/>--------<br/>");
    
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>价格:" + listVo[i].XinZhangJiaGe+" " +siteVo.sitemoneyname );
        strhtml.Append("<br/>网站ID:"+listVo[i].siteid +"[<a href=\"" + http_start + "XinZhang/book_view_del00.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">删除</a>]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
  
    //导航按钮

    strhtml.Append("<a href=\"" + this.http_start + "/admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("勋章类") + "&amp;gopath=XinZhang/index.aspx\">返回上级</a> ");
   
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
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







   
    strhtml.Append("<div class=\"subtitle\">");
    if (this.ordertype == "1")
    {
        strhtml.Append("按最新");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("按时间");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("按价高");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("按价低");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
    }


    strhtml.Append("<br/><form name=\"f\" aciont=\"" + http_start + "xinzhang/admin_userlistWAP00.aspx\" method=\"post\">");
    strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/> ");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form>");
    strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_del00all.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">批量删除操作</a>]");
    
    strhtml.Append("</div>");
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>价格:" + listVo[i].XinZhangJiaGe +" "+siteVo.sitemoneyname );
        strhtml.Append("<br/>网站ID:" + listVo[i].siteid + "[<a href=\"" + http_start + "XinZhang/book_view_del00.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">删除</a>]<br/>");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);

    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");


    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("勋章类") + "&amp;gopath=XinZhang/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");
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
