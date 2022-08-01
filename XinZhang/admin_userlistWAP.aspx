<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.XinZhang.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");



    strhtml.Append("[<a href=\"" + http_start + "XinZhang/book_view_add.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">上传勋章</a>][<a href=\"" + http_start + "XinZhang/book_view_daoru.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">导入系统勋章</a>]<br/>--------<br/>");

    if (this.ordertype == "1")
    {
        strhtml.Append("按最新");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("按时间");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("按价高");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("按价低");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
    }
    strhtml.Append("<br/>--------<br/>");
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>价格:" + listVo[i].XinZhangJiaGe+" " +siteVo.sitemoneyname );
        strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_mod.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">修改</a>][<a href=\"" + http_start + "XinZhang/book_view_del.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">删除</a>]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
  
    //导航按钮

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("勋章类") + "&amp;gopath=XinZhang/index.aspx\">返回上级</a> ");
   
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







    strhtml.Append("<div class=\"subtitle\">[<a href=\"" + http_start + "XinZhang/book_view_add.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">上传勋章</a>][<a href=\"" + http_start + "XinZhang/book_view_daoru.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">导入系统勋章</a>]</div>");
   
    strhtml.Append("<div class=\"subtitle\">");
    if (this.ordertype == "1")
    {
        strhtml.Append("按最新");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("按时间");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("按价高");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("按价低");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
    }
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
        strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_mod.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">修改</a>][<a href=\"" + http_start + "XinZhang/book_view_del.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">删除</a>]<br/>");
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


    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("勋章类") + "&amp;gopath=XinZhang/index.aspx\">返回上级</a> ");
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
