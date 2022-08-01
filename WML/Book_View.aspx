<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.wml.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(bookVo.book_re!=0){
    wmlVo.timer = (bookVo.book_re).ToString();
    if (bookVo.book_pub != "")
    {
        wmlVo.strUrl = bookVo.book_pub.Replace("[sid]", this.sid);
    }
    else
    {
        wmlVo.strUrl = "wml/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + bookVo.book_classid + "&amp;id=" + bookVo.id;
    }

}
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

    strhtml.Append(bookVo.book_content);

    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append("<br/>" + adVo.threeShowDown);
    }
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "wml/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
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


    strhtml.Append(bookVo.book_content2);
   
    
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wml/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
