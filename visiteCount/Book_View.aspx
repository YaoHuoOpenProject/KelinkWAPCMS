<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.visiteCount.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.vtitle, wmlVo));//显示头  
                                                                                                                                                                  
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>站点名称：</b>" + bookVo.vtitle + "<br/>");
   strhtml.Append("<b>站点地址：</b>" + bookVo.vurl + "(");
   strhtml.Append("<b><a href=\""+ bookVo.vurl + "\">访问</a>)</b><br/>");
   strhtml.Append("<b>站长名称：</b>" + bookVo.vbanzhu + "<br/>");
   strhtml.Append("<b>站长邮箱：</b>" + bookVo.vemail + "<br/>");
   strhtml.Append("<b>注册时间：</b>" + bookVo.vregtime + "<br/>");
   strhtml.Append("<b>总访问量：</b>" + bookVo.vtotal + "<br/>");
   strhtml.Append("<b>网站简介：</b>" + bookVo.vcontent + "<br/>");

   
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "visiteCount/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.vtitle + "</div>");

 
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<b>站点名称：</b>" + bookVo.vtitle + "<br/>");
    strhtml.Append("<b>站点地址：</b>" + bookVo.vurl + "(");
    strhtml.Append("<b><a href=\"" + bookVo.vurl + "\">访问</a></b>)<br/>");
    strhtml.Append("<b>站长名称：</b>" + bookVo.vbanzhu + "<br/>");
    strhtml.Append("<b>站长邮箱：</b>" + bookVo.vemail + "<br/>");
    strhtml.Append("<b>注册时间：</b>" + bookVo.vregtime + "<br/>");
    strhtml.Append("<b>总访问量：</b>" + bookVo.vtotal + "<br/>");
    strhtml.Append("<b>网站简介：</b>" + bookVo.vcontent + "<br/>");
    
    strhtml.Append("</div>");
   

 
    
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
    strhtml.Append("<div class=\"myvisiteCount\">");
    strhtml.Append("<a href=\"" + this.http_start + "visiteCount/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
