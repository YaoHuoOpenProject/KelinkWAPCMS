<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_ShowFile.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_ShowFile" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("查看附件", wmlVo));//显示头


if (bookVo.islock == 1)
{
    content = ""; //锁贴后不显示内容
}                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   if (bookVo.ischeck == 2)
   {
       strhtml.Append("<b>此贴已在回收站！<br/></b>");
   }
   //显示广告
   if(adVo.threeShowTop!=""){
       strhtml.Append(adVo.threeShowTop+"<br/>");
   }
    
   
    
  
    

    
   strhtml.Append(content+"<br/>");
   strhtml.Append(linkURL);

   
    

       strhtml.Append("------------<br/>");
   
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;page=" + this.lpage + this.stypelink + "" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}else{ //2.0

    if (bookVo.ischeck == 2)
    {
        strhtml.Append("<div class=\"tip\"><b>此贴已在回收站！</b></div>");
    }
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看附件|查看附件|查看附件") + "</div>");
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }

    


    strhtml.Append("<div class=\"content\">");
    
    
    strhtml.Append(content + "</div>");
    
    strhtml.Append(linkURL);
    
    
    

   

    
       
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
   
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
     strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;page=" + this.lpage + this.stypelink + "" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
  
 

    //输出错误
    strhtml.Append(ERROR);
    

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
