<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_doit.aspx.cs" Inherits="KeLin.WebSite.wabao.Book_View_doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   if (INFO == "LUCKY")
   {
       strhtml.Append("恭喜您挖到宝贝啦，已发送到您站内邮箱了。<br/>");
   }
   else
   {
       strhtml.Append("抱歉，运气差了点，下次再努力挖。<br/>");
   }
    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + this.lpage + "&amp;id="+this.id+"" + "\">返回再试试手气！</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );

    
    strhtml.Append("<div class=\"content\">");
    if (INFO == "LUCKY")
    {
        strhtml.Append("恭喜您挖到宝贝啦，已发送到您站内邮箱了。<br/>");
    }
    else
    {
        strhtml.Append("抱歉，运气差了点，下次再努力挖。<br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "" + "\">返回再试试手气！</a><br/>");
    
    
    strhtml.Append("</div>");


   


    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }



    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
