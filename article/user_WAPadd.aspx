<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_WAPadd.aspx.cs" Inherits="KeLin.WebSite.article.user_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("投稿|投稿|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("投稿成功！");
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能为空！");
        Response.Write("</b><br/>");

    }
    if (this.userid == "0")
    {
        Response.Write("<b>您还没有登录，登录后提交有以下奖励：</b>");
    }
    else
    {
        Response.Write(nickname + "您好，");
    }
    Response.Write("<b>一经采纳，送" + tomoney + "个币,送经验:" + toexpr + "个！</b><br/>");

    Response.Write("<a href=\"" + this.http_start + "article/user_wapaddfileTXT.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0\">" + this.GetLang("TXT上传投稿|TXT上传投稿|TXT上传投稿") + "</a>|直接投稿<br/>");
    
    if (this.INFO != "OK")
    {
        num = 1;
        //选择栏目
        Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.classid + "\">");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");


        for (int i = 0; i < this.num; i++)
        {
            Response.Write("----- " + (i + 1) + " -------<br/>");
            Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"book_author" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"book_pub" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
            Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"\" /><br/>");

        }



        Response.Write("<anchor><go href=\"" + http_start + "article/user_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
        Response.Write("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
        Response.Write("<postfield name=\"book_author\" value=\"$(book_author" + r + ")\"/>");
        Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub" + r + ")\"/>");
        Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "article/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\"><a href=\"" + this.http_start + "article/user_wapaddfileTXT.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=0\">" + this.GetLang("TXT上传投稿|TXT上传投稿|TXT上传投稿") + "</a>|直接投稿</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("投稿成功！");
        Response.Write("</b>");

    }
    else if (this.INFO == "NULL")
    {

        Response.Write("<b>");
        Response.Write("标题和内容不能为空！");
        Response.Write("</b>");
    }

    Response.Write("</div>");
    Response.Write("<div class=\"tip\">");
    if (this.userid == "0")
    {
        Response.Write("您还没有登录，登录后提交有以下奖励：");
    }
    else
    {
        Response.Write(nickname + "您好，");
    }
    Response.Write("一经采纳，送" + tomoney + "个币,送经验:" + toexpr + "个！</div>");

    
    if (this.INFO != "OK")
    {

        Response.Write("<div class=\"content\">");
        //选多少个
        num = 1;

        //选择栏目
        Response.Write("<form name=\"gt\" action=\"" + http_start + "article/user_WAPadd.aspx\" method=\"post\">");
        Response.Write("<select name=\"toclassid\" value=\"" + this.classid + "\">");
        Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");



        for (int i = 0; i < this.num; i++)
        {
            Response.Write("----- " + (i + 1) + " -------<br/>");
            Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"book_title\" value=\"\"/><br/>");
            Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"book_author\" value=\"\"/><br/>");
            Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"book_pub\" value=\"\"/><br/>");
            Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
            Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\"></textarea><br/>");


        }




        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/></form>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "article/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


