<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myalbum.aspx.cs" Inherits="KeLin.WebSite.album.myalbum" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%                                                                                                                                                                                                                                                                                                                                                   
Response.Write(WapTool.showTop(this.GetLang(tonickname+"的相册|的相册|My ablum"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("--最新上传--<br/>");
    //显示列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        //strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id.ToString() + "" + "\"><img src=\"" + http_start + "album/" + listVo[i].book_img + "\" alt=\"" + listVo[i].book_title + "\"/></a> ");

        if (i ==(listVo.Count-1)) strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }

    strhtml.Append("--相册分类--<br/>");
    strhtml.Append("<a href=\"" + http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0"+ "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">默认分类所有</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + sublistVo[i].id + "&amp;touserid="+this.touserid+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("还没有建分类。<br/>");
    }
    strhtml.Append("----------<br/>");
    if (this.userid == this.touserid)
    {
        strhtml.Append("<a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">上传相片</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "album/myalbum_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">添加分类</a><br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "album/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">查看所有</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + this.GetLang(tonickname + "的相册|的相册|My ablum") + "</div>");
  
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("最新上传");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    //显示列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        //strhtml.Append(index + ".");
        strhtml.Append("<a href=\"" + http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id.ToString() + "" + "\"><img src=\"" + http_start + "album/" + listVo[i].book_img + "\" alt=\"" + listVo[i].book_title + "\"/></a> ");

        if (i == (listVo.Count - 1)) strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("相册分类");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0" + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">默认分类所有</a><br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + sublistVo[i].id.ToString() + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + sublistVo[i].subjectname + "</a><br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("还没有建分类。<br/>");
    }
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (this.userid == this.touserid)
    {
        strhtml.Append("<a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">上传相片</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "album/myalbum_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">添加分类</a><br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "album/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">查看所有</a> ");


    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("</div>");


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


