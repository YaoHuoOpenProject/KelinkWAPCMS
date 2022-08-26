<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_ViewUA.aspx.cs" Inherits="KeLin.WebSite.download.Book_ViewUA" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">返回内容</a><br/>");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
    
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");

    
    //显示内容列表
    //strhtml.Append("<br/>");
   strhtml.Append("当前适配机型:<b>" + WapTool.GetUAUBB(this.myua, ver, lang,this.sid, 0) + "</b> <a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?sp=" + sp + "&amp;id=" + this.id + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">更改</a><br/>");
    
    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) < 0)
        {
            strhtml.Append(filelist[i].book_title);
            strhtml.Append("." + filelist[i].book_ext + "(" + filelist[i].book_size + ")<br/>");
            strhtml.Append("<a href=\"" + this.http_start + "download/download.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;book_id=" + this.id + "&amp;id=" + filelist[i].ID + "&amp;RndPath=" + siteVo.SaveUpFilesPath + "&amp;n=" + HttpUtility.UrlEncode(filelist[i].book_title + "." + filelist[i].book_ext.Replace(".", "")) + "\">点击下载</a>(已下:" + filelist[i].book_click + "次)<br/>");
            strhtml.Append(filelist[i].book_content + "<br/>----------<br/>");
        }
    }
    if (filelist == null)
    {
        if (this.myua != "" && this.myua != "0")
        {
            strhtml.Append("暂无适合此机型的记录！<br/>");
        }

    }
    



    
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    strhtml.Append("<div class=\"title\">" + bookVo.book_title +"</div>" );
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">返回内容</a><br/>");
    strhtml.Append("</div>");
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop);
    }

   

    //显示内容列表
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("当前适配机型:<b>" + WapTool.GetUAUBB(this.myua, ver, lang,this.sid, 0) + "</b> <a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?sp=" + sp + "&amp;id=" + this.id + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">更改</a><br/>");

    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) < 0)
        {
            strhtml.Append(filelist[i].book_title);
            strhtml.Append("." + filelist[i].book_ext + "(" + filelist[i].book_size + ")<br/>");
            strhtml.Append("<a href=\"" + this.http_start + "download/download.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;book_id=" + this.id + "&amp;id=" + filelist[i].ID + "&amp;RndPath=" + siteVo.SaveUpFilesPath + "&amp;n=" + HttpUtility.UrlEncode(filelist[i].book_title + "." + filelist[i].book_ext.Replace(".", "")) + "\">点击下载</a>(已下:" + filelist[i].book_click + "次)<br/>");
            strhtml.Append(filelist[i].book_content + "<hr/>");
        }
    }
    if (filelist == null)
    {
        if (this.myua != "" && this.myua != "0")
        {
            strhtml.Append("暂无适合此机型的记录！<br/>");
        }

    }



    strhtml.Append("</div>");



    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
