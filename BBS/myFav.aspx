<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myFav.aspx.cs" Inherits="KeLin.WebSite.bbs.myFav" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
           StringBuilder strhtml=new StringBuilder ();                                                                                                                                                                    
    Response.Write(WapTool.showTop(this.GetLang("我的收藏|我的收藏|my fav"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("--最新收藏--<br/>");
    //显示列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + listVo[i].url+  "" + "\">" + listVo[i].title + "</a><br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }

    strhtml.Append("--我的分类--<br/>");
    strhtml.Append("<a href=\"" + http_start + "bbs/favlist.aspx?siteid="+this.siteid+"&amp;classid=0&amp;favtypeid=0&amp;backurl="+HttpUtility.UrlEncode(backurl)+"" + "\">默认分类所有</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid="+sublistVo[i].id+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建分类，请先建立<br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist_add.aspx?siteid="+this.siteid+"&amp;classid=0" + "\">添加收藏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/myfav_admin.aspx?siteid=" + siteid + "&amp;classid=0" + "\">添加分类</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{
    strhtml.Append("<div class=\"title\">" + this.GetLang("我的收藏|我的收藏|my fav") + "</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("最新收藏");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    //显示列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + listVo[i].url + "" + "\">" + listVo[i].title + "</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("我的收藏");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=0&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">查看所有收藏</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        //strhtml.Append("没有建分类，请先建立<br/>");
    }
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    //strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist_add.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">添加收藏</a> ");
    //strhtml.Append("<a href=\"" + this.http_start + "bbs/myfav_admin.aspx?siteid=" + siteid + "&amp;classid=0" + "\">添加分类</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    if (isWebHtml == "")
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append(WapTool.GetVS(wmlVo));
    }
    strhtml.Append("</div></div>");
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);
}
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>