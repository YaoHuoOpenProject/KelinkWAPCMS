<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myrizhi.aspx.cs" Inherits="KeLin.WebSite.rizhi.myrizhi" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%                                                                                                                                                                                                                                                                                                                                                   
Response.Write(WapTool.showTop(this.GetLang(tonickname+"的博客|的博客|My ablum"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("--最新微博--<br/>");
    //显示列表
    StringBuilder sl = new StringBuilder();
    for (int i = 0; (slistVo != null && i < slistVo.Count); i++)
    {
        index = index + kk;
        sl.Append(index + ".");
        sl.Append("" + slistVo[i].book_title + "(" + string.Format("{0:MM-dd HH:mm}", slistVo[i].book_date) + ")<br/>");

        if (slistVo[i].book_img != "")
        {
            sl.Append("<img src=\"" + this.http_start + "rizhi/" + slistVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
    }
    if (sl.ToString() != "")
    {
        strhtml.Append(WapTool.ToWML(sl.ToString(),wmlVo));
    }
    
    if (slistVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    strhtml.Append("--最新日志--<br/>");
    //显示列表
    index = 0; kk = 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id.ToString() + "" + "\">" + listVo[i].book_title + "</a>(" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + ")<br/>");

        if (listVo[i].book_img != "")
        {
            strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }

    strhtml.Append("--博客分类--<br/>");
    strhtml.Append("<a href=\"" + http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0"+ "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">默认分类所有</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + sublistVo[i].id + "&amp;touserid="+this.touserid+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("还没有建分类。<br/>");
    }
    strhtml.Append("----------<br/>");
    if (this.userid == this.touserid)
    {
        strhtml.Append("发表<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">微博</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">日志</a>/");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/myrizhi_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">分类</a><br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "rizhi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">浏览所有</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + this.GetLang(tonickname + "的博客|的博客|My ablum") + "</div>");
   
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("最新微博");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    StringBuilder sl = new StringBuilder();
    for (int i = 0; (slistVo != null && i < slistVo.Count); i++)
    {
        index = index + kk;
        sl.Append(index + ".");
        sl.Append("" + slistVo[i].book_title + " <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", slistVo[i].book_date) + "</span><br/>");
        if (slistVo[i].book_img != "")
        {
            sl.Append("<img src=\"" + this.http_start + "rizhi/" + slistVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
    }
    if (sl.ToString() != "")
    {
        strhtml.Append(WapTool.ToWML(sl.ToString(),wmlVo));
    }
    if (slistVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("最新日志");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    //显示列表
    index = 0; kk = 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id.ToString() + "" + "\">" + listVo[i].book_title + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span><br/>");
        if (listVo[i].book_img != "")
        {
            strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        }
        
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("博客分类");

    if (this.userid == this.touserid)
    {
        strhtml.Append("<span class=\"right\">");
       strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "rizhi/myrizhi_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">分类管理</a>");
       strhtml.Append("</span>");
    }
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0" + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">默认分类所有</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + sublistVo[i].id.ToString() + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("还没有建分类。<br/>");
    }
    strhtml.Append("</div>");
    
    if (this.userid == this.touserid)
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">发表微博</a> ");    
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">发表日志</a> ");
        strhtml.Append("</div></div>");
    }
    
    
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码 

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "rizhi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">浏览所有</a> ");
    strhtml.Append("</div></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
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


