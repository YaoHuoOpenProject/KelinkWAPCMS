<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.guangbo.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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

    if (action == "" || action == "class")
    {

       
        if (this.touserid == "")
        {
            strhtml.Append("所有广播/<a href=\"" + this.http_start + "guangbo/Book_List.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">我的广播</a>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">所有广播</a>/我的广播");

        }

        strhtml.Append("/<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a><br/>");
        
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "\">发布广播</a>");
        if (totype == "1")
        {

            strhtml.Append("/<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">正在投放</a>/已经过期");
        }
        else
        {
            strhtml.Append("/正在投放/<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">已经过期</a>");
        }
        strhtml.Append("<br/>");

    }
    
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }
        DateTime dt_end = System.DateTime.Now;
        TimeSpan ts = listVo[i].endtime - dt_end;
        string del = "";
        if (this.touserid == this.userid)
        {
            del = "[<a href=\"" + this.http_start + "guangbo/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">删</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodify.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">修</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodifyadd.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">续</a>]";
        }
        
        strhtml.Append(index + "."+del+"<a href=\"" + http_start + "guangbo/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].book_title + book_click+"</a>");
        strhtml.Append("<br/>(<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_list.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&amp;sid=" + this.sid) + "\">" + listVo[i].nickname + "</a>于" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "发布," );
        if (ts.TotalSeconds > 0)
        {
            strhtml.Append(ts.TotalSeconds.ToString("f0") + "秒后过期)");
        }
        else
        {
            strhtml.Append("已过" + ts.TotalSeconds.ToString("f0") + "秒)");
        }
        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无广播记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("--------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a><br/>");
        strhtml.Append("--------<br/>");
    }
    
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
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

    strhtml.Append("<div class=\"subtitle\">"+classVo.classname+"</div>");

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
    {

        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt4\">");        
        strhtml_list.Append("<a ");
        if (this.touserid == "")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }

        strhtml_list.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">所有广播</a>");

        strhtml_list.Append("<a ");
        if (this.touserid != "")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append("href=\"" + this.http_start + "guangbo/Book_List.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">我的广播</a>");


        strhtml_list.Append("<a ");
        if (totype != "1")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }

        strhtml_list.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">正在投放</a>");

        strhtml_list.Append("<a ");
        if (totype == "1")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">已经过期</a>");



        strhtml_list.Append("</div></div>");


        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt2\">");  
        strhtml_list.Append("<a href=\"" + this.http_start + "guangbo/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "\">发布广播</a>");
      
        strhtml_list.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a>");

        strhtml_list.Append("</div></div>");
    }
    //显示列表
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    strhtml_list.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].book_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        string del = "";
        if (this.touserid == this.userid)
        {
            del = "[<a href=\"" + this.http_start + "guangbo/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">删</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodify.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">修</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodifyadd.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">续</a>]";
        }

        DateTime dt_end = System.DateTime.Now;
        TimeSpan ts = listVo[i].endtime - dt_end;

        strhtml_list.Append("" + del + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_list.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&amp;sid=" + this.sid) + "\">" + listVo[i].nickname + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</span><br/>");
        strhtml_list.Append("<a href=\"" + http_start + "guangbo/view.aspx?id=" + listVo[i].id + lpagetemp + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "" + "\">" + listVo[i].book_title + book_click + "</a> ");

        strhtml_list.Append(" <span class=\"subtitleview\">");
        if(ts.TotalSeconds>0){
         strhtml_list.Append(ts.TotalSeconds.ToString("f0") + "秒后过期");
        }else{
            strhtml_list.Append("已过" + ts.TotalSeconds.ToString("f0") + "秒");
        }
        strhtml_list.Append("</span>");
        strhtml_list.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无广播记录！</div>");
    }
    
    //显示导航分页
    strhtml_list.Append(linkURL);
    //strhtml_list.Append("--->" + isWebHtml+"-->");
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
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
         strhtml.Append("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a><br/>");
         strhtml.Append("</div>");
    }
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
     strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>");
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
