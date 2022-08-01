<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.yuehui.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.yh_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>["+bookVo.yh_type+"]"+bookVo.yh_title +"</b><br/>");
   strhtml.Append("发 起 人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + bookVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode("yuehui/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "" + "\">" + bookVo.nickname + "</a><br/>");
   strhtml.Append("约会日期:"+bookVo.yh_time+"<br/>");
   strhtml.Append("性别要求:" + bookVo.yh_sex + "<br/>");
   strhtml.Append("年龄要求:" + bookVo.yh_age + "<br/>");
   strhtml.Append("约会人数:" + bookVo.yh_people + "<br/>");
   strhtml.Append("约会城市:" + bookVo.yh_city + "<br/>");
   strhtml.Append("约会地点:" + bookVo.yh_address + "<br/>");
   strhtml.Append("主题类型:" + bookVo.yh_type + "<br/>");
   strhtml.Append("人气:" + bookVo.yh_click + "<br/>");
   strhtml.Append("参加名单:" + joinCount + "(<a href=\"" + http_start + "yuehui/book_view_join.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看</a>)<br/>");
   strhtml.Append("我要参加:");
   if (joinCount < bookVo.yh_people)
   {
       strhtml.Append("<a href=\"" + http_start + "yuehui/book_view_join.aspx?action=add&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">GO</a><br/>");
   }
   else
   {
       strhtml.Append("报名已满！<br/>");
   }
    strhtml.Append("------------<br/>");
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    //显示最新回复
    strhtml.Append("[<a href=\"" + this.http_start + "yuehui/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a>][<a href=\"" + this.http_start + "yuehui/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
    strhtml.Append("文明社会，文明评论<br/><input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"yuehui/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+ id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
	strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("yuehui/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("</go>发表评论</anchor><br/>");
      
    for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
    {
        strhtml.Append("[" + (bookVo.yh_re - k) + "楼]");
        if (relistVo[i].content.Length > 10)
        {
            strhtml.Append(relistVo[i].content.Substring(0, 9) + "...(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        }
        else
        {
            strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
        }
        k = k + 1;
    }

    if (relistVo == null)
    {
        strhtml.Append("暂无评论！<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "yuehui/book_re.aspx?pageback=&amp;getTotal=" + bookVo.yh_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.yh_re + ")</a><br/>");
    }
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
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
    strhtml.Append("<div class=\"subtitle\">[<b>" + bookVo.yh_type + "</b>]" + bookVo.yh_title +"</div>" );
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("发 起 人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + bookVo.userid + "&amp;backurl="+HttpUtility.UrlEncode("yuehui/book_view.aspx?siteid="+this.siteid+"&classid="+this.classid+"&id="+this.id)+"" + "\">" + bookVo.nickname + "</a><br/>");
    strhtml.Append("约会日期:" + bookVo.yh_time + "<br/>");
    strhtml.Append("性别要求:" + bookVo.yh_sex + "<br/>");
    strhtml.Append("年龄要求:" + bookVo.yh_age + "<br/>");
    strhtml.Append("约会人数:" + bookVo.yh_people + "<br/>");
    strhtml.Append("约会城市:" + bookVo.yh_city + "<br/>");
    strhtml.Append("约会地点:" + bookVo.yh_address + "<br/>");
    strhtml.Append("主题类型:" + bookVo.yh_type + "<br/>");
    strhtml.Append("人气:" + bookVo.yh_click + "<br/>");
    strhtml.Append("参加名单:" + joinCount + " <a class=\"urlbtn\" href=\"" + http_start + "yuehui/book_view_join.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看</a> <br/>");
    strhtml.Append("我要参加:");
    if (joinCount < bookVo.yh_people)
    {
        strhtml.Append("<a class=\"urlbtn\" href=\"" + http_start + "yuehui/book_view_join.aspx?action=add&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">点击此加入</a><br/>");
    }
    else
    {
        strhtml.Append("报名已满！<br/>");
    }
   
 
    strhtml.Append(""+content + "");
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\"><a href=\"" + this.http_start + "yuehui/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "yuehui/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a></div></div> ");


    strhtml.Append("</div>");
    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    //显示最新回复
    strhtml.Append("<div class=\"subtitle\">我要评论</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("<form name=\"re\" action=\"" + http_start + "yuehui/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
            
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("yuehui/book_view.aspx?siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"发表评论\"/></form><br/>");

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

        strhtml.Append("[" + (bookVo.yh_re - k) + "楼] ");
        strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");

        strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span>");
        strhtml.Append("</div>");
        k = k + 1;
    }

    if (relistVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无评论！</div>");
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + http_start + "yuehui/book_re.aspx?pageback=&amp;getTotal=" + bookVo.yh_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.yh_re + ")</a></div></div>");
    }
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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
