<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.guangbo.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
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
   strhtml.Append("<br/>--------<br/>");
    
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");

   strhtml.Append("发布时间:" + string.Format("{0:MM-dd HH:mm}", bookVo.addtime) + "<br/>");
   strhtml.Append("有效期至:" + string.Format("{0:MM-dd HH:mm}", bookVo.endtime) + "<br/>");
   strhtml.Append("浏览:" + bookVo.book_click + "<br/>");
   strhtml.Append("发布者:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.nickname + "</a><br/>");
 

    strhtml.Append("------------<br/>");
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
   
    
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a ");
    if (this.touserid == "")
    {
        strhtml.Append("class=\"btSelect\" ");
    }

    strhtml.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">所有广播</a>");

    strhtml.Append("<a ");
    if (this.touserid != "")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + this.http_start + "guangbo/Book_List.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">我的广播</a>");


    strhtml.Append("<a ");
    if (totype != "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }

    strhtml.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">正在投放</a>");

    strhtml.Append("<a ");
    if (totype == "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append(" href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">已经过期</a>");



    strhtml.Append("</div></div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "guangbo/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "\">发布广播</a>");

    strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a>");

    strhtml.Append("</div></div>");
  
        strhtml.Append("<div class=\"line1\">");
  
   
    strhtml.Append(bookVo.book_title +"<br/>" );



    strhtml.Append("<span class=\"subtitleview\">" + string.Format("{0:MM-dd}", bookVo.addtime) + "");
    strhtml.Append("至" + string.Format("{0:MM-dd}", bookVo.endtime) + " ");
    strhtml.Append("&nbsp;&nbsp;&nbsp;(" + bookVo.book_click + ") ");
    strhtml.Append("<span class=\"right\"><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_view.aspx?siteid="+this.siteid+"&classid="+this.classid+"&id="+this.id) + "\">" + bookVo.nickname  + "</a>");
    strhtml.Append("</span></span>");
    
    strhtml.Append("<div id=\"KL_margin\" style=\"margin:8px;\"></div>" + content + "");

    strhtml.Append("</div>");
 
  
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);


    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");

        if (s > 0)
        {
            strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);
        }

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
