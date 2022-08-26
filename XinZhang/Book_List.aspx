<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.XinZhang.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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

    strhtml.Append("我的勋章：" + WapTool.GetMedal(userVo.moneyname, http_start) + "[<a href=\"" + http_start + "XinZhang/book_view_my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">管理</a>]<br/>--------<br/>");

    if (this.ordertype == "1")
    {
        strhtml.Append("按最新");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("按时间");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("按价高");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("按价低");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
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
        strhtml.Append("[<a href=\"" + http_start + "XinZhang/book_view_buy.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">购买</a>]<br/>");
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
    if (classid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    }
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
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">我的勋章</div>");
    strhtml.Append("<div class=\"content\">" + WapTool.GetMedal(userVo.moneyname, http_start) + "<br/></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a");
    if (this.ordertype == "1")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">按最新</a>");


    strhtml.Append("<a");
    if (this.ordertype == "2")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">按时间</a>");


    strhtml.Append("<a");

    if (this.ordertype == "3")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">按价高</a>");

    strhtml.Append("<a");
    if (this.ordertype == "4")
    {
        strhtml.Append(" class=\"btSelect\"");

    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">按价低</a>");
 
    strhtml.Append("</div></div>");
    //显示列表
    //strhtml.Append(linkTOP);

    strhtml.Append("<!--listS-->");
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
        strhtml.Append(" <a class=\"urlbtn\" href=\"" + http_start + "XinZhang/book_view_buy.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage=" + CurrentPage + "&amp;ordertype="+this.ordertype +"" + "\">购买</a><br/>");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml.Append("<!--listE-->");
    //显示导航分页
    strhtml.Append(linkURL);

    //显示电脑版
    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    if (classid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    }
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
