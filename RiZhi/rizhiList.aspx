<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rizhiList.aspx.cs" Inherits="KeLin.WebSite.rizhi.rizhiList" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    string title = "";
    if (smalltypeid == "0")
    {
        title = this.GetLang("默认分类所有||");
    }
    else if(bookVo!=null)
    {
        title = bookVo.subjectname;
    }
    StringBuilder strhtml = new StringBuilder();                                                                                                                                                                             
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.touserid == this.userid)
    {
        strhtml.Append("我要发表<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">微博</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">日志</a><br/>");
    }
    strhtml.Append(this.GetLang("类型|类型|类型") + ":");
    strhtml.Append("<select name=\"book_type" + r + "\" value=\"" + book_type + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_微博</option>");
    strhtml.Append("<option value=\"1\">1_日志</option>");
    strhtml.Append("</select><br/>");
    if (userid != "0" && this.touserid == userid)
    {
        strhtml.Append(this.GetLang("公开|公开|公开") + ":");
        strhtml.Append("<select name=\"ishidden" + r + "\" value=\"" + ishidden + "\">");
        strhtml.Append("<option value=\"\">所有</option>");
        strhtml.Append("<option value=\"0\">0_是</option>");
        strhtml.Append("<option value=\"1\">1_否</option>");
        strhtml.Append("</select><br/>");
    }
    strhtml.Append("关键字:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "rizhi/rizhilist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"class\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"touserid\" value=\"" + touserid + "\" />");
        strhtml.Append("<postfield name=\"key\" value=\"$(key)\" />");
        strhtml.Append("<postfield name=\"book_type\" value=\"$(book_type"+r+")\" />");
        strhtml.Append("<postfield name=\"ishidden\" value=\"$(ishidden"+r+")\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"smalltypeid\" value=\"" + (this.smalltypeid) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
        
    
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].book_type == 0)
        {
            strhtml.Append("[微]");
        }
       
        if (listVo[i].ishidden == 1)
        {
            strhtml.Append("[隐]");
        }
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click + "阅/" + listVo[i].book_re + "评)</a><br/>");
        
        if (listVo[i].book_img != "")
        {
            strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
        if (this.userid == this.touserid)
        {
            strhtml.Append("[<a href=\"" + http_start + "rizhi/rizhilist_change.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + listVo[i].smalltype + "&amp;id=" + listVo[i].id + "&amp;toclassid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">转</a>.<a href=\"" + http_start + "rizhi/rizhilist_mod.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=&amp;page=" + this.CurrentPage + "" + "\">修</a>.<a href=\"" + http_start + "rizhi/rizhilist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "" + "\">删</a>]");
        }
        strhtml.Append("发表于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    strhtml.Append("<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid="+this.touserid+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{


    if (this.touserid == this.userid)
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">发表微博</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">发表日志</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "rizhi/rizhilist.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("类型|类型|类型") + ":");
    strhtml.Append("<select name=\"book_type\">");
    strhtml.Append("<option value=\"" + book_type + "\">" + book_type + "</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_微博</option>");
    strhtml.Append("<option value=\"1\">1_日志</option>");
    strhtml.Append("</select> ");
    if (userid != "0" && this.touserid == userid)
    {
        strhtml.Append(this.GetLang("公开|公开|公开") + ":");
        strhtml.Append("<select name=\"ishidden\">");
        strhtml.Append("<option value=\"" + ishidden + "\">" + ishidden + "</option>");
        strhtml.Append("<option value=\"\">所有</option>");
        strhtml.Append("<option value=\"0\">0_是</option>");
        strhtml.Append("<option value=\"1\">1_否</option>");
        strhtml.Append("</select><br/>");
    }
    strhtml.Append("关键字:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
  
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"touserid\" value=\"" + touserid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"smalltypeid\" value=\"" + (this.smalltypeid) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"f\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");
    strhtml.Append(linkTOP);
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        index = index + kk;
        strhtml.Append(index + ".");

        if (listVo[i].book_type == 0)
        {
            strhtml.Append("[微]");
        }
        
        if (listVo[i].ishidden == 1)
        {
            strhtml.Append("[隐]");
        }
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].book_title + "(" + listVo[i].book_click + "阅/" + listVo[i].book_re + "评)</a><br/>");
        
        if (listVo[i].book_img != "")
        {
            strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
        if (this.touserid == this.userid)
        {
            strhtml.Append("[<a href=\"" + http_start + "rizhi/rizhilist_change.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + listVo[i].smalltype + "&amp;id=" + listVo[i].id + "&amp;toclassid=" + listVo[i].book_classid + "&amp;page=" + this.CurrentPage + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">转</a>.<a href=\"" + http_start + "rizhi/rizhilist_mod.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=&amp;page=" + this.CurrentPage + "" + "\">修</a>.<a href=\"" + http_start + "rizhi/rizhilist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + this.smalltypeid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "" + "\">删</a>]");
        }
            strhtml.Append("发表于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码  

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");


    strhtml.Append("<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //显示电脑版
      
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    Response.Write(strhtml);



}

Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


