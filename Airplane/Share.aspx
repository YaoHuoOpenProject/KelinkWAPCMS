<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.airplane.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("分享信息|分享信息|share Notes"), wmlVo));//显示头 
string title = "你的好友推荐给你一个好信息《" + bookVo.planeNum + "》";
string content = "推荐给你一个好信息《" + bookVo.planeNum + "》,网址是" + http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "";
string content2 = "推荐给你一个好信息《" + bookVo.planeNum + "》,[url=" + http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "]点击进入[/url]";
if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write("信息:<a href=\"" + this.http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.planeNum + "</a><br/>");
        //Response.Write("作者:<a href=\"" + this.http_start + "airplane/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
       
        Response.Write("----------<br/>");
    }
    else
    {
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("----------<br/>");
    }
    
    Response.Write("<anchor><go href=\""+http_start+"bbs/messagelist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"go\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"content\" value=\""+content2+"\"/>");
    Response.Write("<postfield name=\"title\" value=\""+title+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
	Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("airplane/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id+"&amp;lpage="+this.lpage) + "\"/>");
    Response.Write("</go>推荐给站内好友</anchor><br/>");

    Response.Write("<a href=\"ext:sms/"+content+"\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "airplane/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    //Response.Write("----------<br/>");
    

    

    
    Response.Write("<br/><a href=\"" + this.http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回内容|返回内容|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0界面

   // Response.Write("<div class=\"title\">" + this.GetLang("分享信息|分享信息|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");
    }
    if (downloadpath == "")
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write("信息:<a href=\"" + this.http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.planeNum + "</a><br/>");
        //Response.Write("作者:<a href=\"" + this.http_start + "airplane/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        //Response.Write("时间:" + bookVo.yh_date + "<br/>");
        Response.Write("</div>");
    }
    else
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"content\" value=\"" + content2 + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"title\" value=\"" + title + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("airplane/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + this.lpage) + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"推荐给站内好友\"/><br/>");

    Response.Write("<div class=\"btBox\">");
    Response.Write("<div class=\"bt1\">");
    Response.Write("<a href=\"ext:sms/" + content + "\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "airplane/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    Response.Write("</div></div>");



    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "airplane/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回内容|返回内容|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>