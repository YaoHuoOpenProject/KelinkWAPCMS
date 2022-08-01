<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.link.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                  
if (ver == "1")
{
   
         
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

  
    
   strhtml.Append("<b>网站名称</b>:" + bookVo.book_title + "<br/>");
   strhtml.Append("<b>网站地址</b>:" + bookVo.book_pub + "<br/>");
   strhtml.Append("<a href=\"" +this.http_start+"link/g.aspx?siteid="+this.siteid +"&amp;url="+ bookVo.book_pub + "\">马上访问</a><br/>");
   
   if (this.IsUserManager(this.userid, userVo.managerlvl, classVo.adminusername) == true || isShowLink == "1")
   {
       strhtml.Append("<b>点击次数</b>:" + bookVo.book_click + "<br/>");
       strhtml.Append("<b>链入次数</b>:" + bookVo.book_re + "<br/>");
   }
       if (this.IsUserManager(this.userid, userVo.managerlvl, classVo.adminusername) == true || WapTool.getArryString(classVo.smallimg, '|', 3) != "1")
       {
           strhtml.Append("<b>得票数</b>:" + bookVo.smalltype);
           strhtml.Append("<anchor><go href=\"" + http_start + "link/book_view.aspx\" method=\"post\" accept-charset=\"utf-8\">");
           strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
           strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
           strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
           strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
           strhtml.Append("<postfield name=\"vote\" value=\"yes\"/>");
           strhtml.Append("<postfield name=\"action\" value=\"smalltype\"/>");
           strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
           strhtml.Append("</go>【" + this.GetLang("投票|投票|投票") + "】</anchor><br/>");
           
           string showinfo = "大家快来投我一票："+bookVo.book_title+" "+this.http_start+"link/vote.aspx?id="+this.siteid+"-"+this.classid+"-"+this.id+"";
           strhtml.Append("<input type=\"text\" name=\"v" + this.r + "\" value=\"" + showinfo + "\"/><br/>");
       }

  
   strhtml.Append("<b>网站简介</b>:<br/>" + bookVo.book_content + "<br/>");

   

    
    
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
        strhtml.Append("<a href=\"" + this.http_start + "link/book_list.aspx?action=" + this.action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );


    strhtml.Append("<div class=\"content\">");
   
    //strhtml.Append("<b>网站名称</b>:" + bookVo.book_title + "<br/>");
    strhtml.Append("<b>网站地址</b>:" + bookVo.book_pub + "<br/>");
    strhtml.Append("<b>网站简介</b>:" + bookVo.book_content + "");
    
   

    if (this.IsUserManager(this.userid, userVo.managerlvl, classVo.adminusername) == true || isShowLink == "1")
    {
        strhtml.Append("<br/>");
        strhtml.Append("<b>点击次数</b>:" + bookVo.book_click + "<br/>");
        strhtml.Append("<b>链入次数</b>:" + bookVo.book_re + "<br/>");
        strhtml.Append("<br/>");
    }
    if (this.IsUserManager(this.userid, userVo.managerlvl, classVo.adminusername) == true || WapTool.getArryString(classVo.smallimg, '|', 3) != "1")
        {
            strhtml.Append("<br/>");
            strhtml.Append("<b>得票数</b>:" + bookVo.smalltype);
            strhtml.Append("<form name=\"gt\" action=\"" + http_start + "link/book_view.aspx\" method=\"post\">");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"vote\" value=\"yes\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"smalltype\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("【<input type=\"submit\" value=\"" + this.GetLang("投票|投票|投票") + "\"/>】");
            strhtml.Append("</form><br/>");
            
            string showinfo = "大家快来投我一票：" + bookVo.book_title + " " + this.http_start + "link/vote.aspx?id=" + this.siteid + "-" + this.classid + "-" + this.id + "";
            strhtml.Append("<input type=\"text\" name=\"v" + this.r + "\" value=\"" + showinfo + "\"/><br/>");
            strhtml.Append("<br/>");
    }

    strhtml.Append("<div class=\"bt1\"><a href=\"" + this.http_start + "link/g.aspx?siteid=" + this.siteid + "&amp;url=" + bookVo.book_pub + "\">马上访问</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("</div>");


    //显示电脑版
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
        strhtml.Append("<a href=\"" + this.http_start + "link/book_list.aspx?action=" + this.action + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
    
    
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
