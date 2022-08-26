<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.guessbook.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
if (bookVo.ishidden == 1 && this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == false )
{
    bookVo.book_title = "悄悄话...";
    content = "悄悄话...";
}                                                                                                                                                                     
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");
   
   
   strhtml.Append("日期:"+bookVo.book_date+"<br/>");


   strhtml.Append("来自:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode("guessbook/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.book_author + "</a><br/>");
 

    strhtml.Append("------------<br/>");
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    //显示最新回复
    strhtml.Append("文明社会，文明回复<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"" + reShowInfo + "\" maxlength=\"200\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"guessbook/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+ id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
	strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("guessbook/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("</go>发表回复</anchor><br/>");
      
    for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
    {
        strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
        //if (relistVo[i].content.Length > 10)
        //{
        //    strhtml.Append(relistVo[i].content.Substring(0, 9) + "...(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        //}
        //else
        //{
            strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        //}
        k = k + 1;
    }

    if (relistVo == null)
    {
        strhtml.Append("暂无回复！<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "guessbook/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多回复(" + bookVo.book_re + ")</a><br/>");
    }
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "guessbook/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<span class=\"subtitleview\">" + bookVo.book_date + "&nbsp;&nbsp;&nbsp;&nbsp;(" + bookVo.book_click + ") ");


    strhtml.Append("</span> <span class=\"right\">来自<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode("guessbook/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.book_author + "</a>");
 


    strhtml.Append("</span><br/>");
 
    strhtml.Append(content + "</div>");
    
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    //显示最新回复
    strhtml.Append("<div class=\"subtitle\">我来回复</div>");

    strhtml.Append("<div class=\"content\">");


    strhtml.Append("<form name=\"re\" action=\"" + http_start + "guessbook/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\"  rows=\"5\" class=\"KL_textarea\" style=\"width:100%\">" + this.reShowInfo + "</textarea><br/>");
      
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("guessbook/book_view.aspx?siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\" 提 交 \"/></form></div>");

    for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }

        strhtml.Append("[" + (bookVo.book_re - k) + "楼] ");
        strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");

        strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span>");
        strhtml.Append("</div>");
        k = k + 1;
    }

    if (relistVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无回复！</div>");
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + http_start + "guessbook/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多回复(" + bookVo.book_re + ")</a> ");
        strhtml.Append("</div></div>");
    }
    

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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "guessbook/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
   
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
