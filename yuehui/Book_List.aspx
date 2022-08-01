<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.yuehui.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    if(action=="" || action=="class")
    strhtml.Append("<b><a href=\"" + this.http_start + "yuehui/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">发起约会</a></b><br/>");
    //显示列表
    strhtml.Append(linkTOP);
    string yh_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].yh_top == 1)
        {
            strhtml.Append("<b>[顶]</b>");

        }
        if (listVo[i].yh_good == 1)
        {
            strhtml.Append("<b>[精]</b>");

        }
        if (this.action == "hot")
        {
            yh_click = "("+listVo[i].yh_click.ToString()+")";
        }
        
        strhtml.Append("["+listVo[i].yh_type+"]<a href=\"" + http_start + "yuehui/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].yh_title + yh_click+"</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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
    
    if (action == "" || action == "class")
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "yuehui/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">发起约会</a></div></div>");
    //显示列表
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            lpagetemp = "?lpage=" + CurrentPage;
        }
        else
        {
            lpagetemp = "&amp;lpage=" + CurrentPage;
        }
    }
    strhtml_list.Append(linkTOP);
    string yh_click = "";
    strhtml_list.Append("<!--listS-->");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            yh_click = "(" + listVo[i].yh_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
       // strhtml_list.Append(index + ".");
        if (listVo[i].yh_top == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

        }
        if (listVo[i].yh_good == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

        }

        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml_list.Append("[<b>" + listVo[i].yh_type + "</b>]<a href=\"" + http_start + "yuehui-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].yh_title + yh_click + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].yh_date) + "</span></div>");
       
        }
        else
        {
            strhtml_list.Append("[<b>" + listVo[i].yh_type + "</b>]<a href=\"" + http_start + "yuehui/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].yh_title + yh_click + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].yh_date) + "</span></div>");
        }
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml_list.Append("<!--listE-->");
    //显示导航分页
    strhtml_list.Append(linkURL);

    //显示电脑版
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
        strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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
