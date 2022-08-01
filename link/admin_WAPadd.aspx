<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.link.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("加入网站|加入网站|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能小于2个字符！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("加入成功！  ");
        if (this.isAutoCheck == "1")
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("请将以下地址加入你的网站：<br/>"+toMylink);
        Response.Write("</b><br/>");

    }
   


  if (this.INFO != "OK"){
        //选择栏目
        Response.Write("选择分类:<br/>");
        Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.toclassid + "\">");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");       
        Response.Write(this.GetLang("网站名称|网站名称|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"" + book_title + "\"/><br/>");
        Response.Write(this.GetLang("网站地址|网站地址|address") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub" + r + "\" value=\"" + book_pub + "\"/><br/>");
          
        Response.Write(this.GetLang("简介|简介|Content") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + book_content + "\" /><br/>");
 
        Response.Write("<anchor><go href=\"" + http_start + "link/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
        Response.Write("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
        Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("加入网站|加入网站|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("标题和内容不能小于2个字符！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "LOCK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        Response.Write("</div>");
    
    }else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("加入成功！  ");
        if (this.isAutoCheck == "1")
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("请将以下地址加入你的网站：<br/>" + toMylink);
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //选择栏目
       
        Response.Write("<form name=\"gt\" action=\"" + http_start + "link/admin_WAPadd.aspx\" method=\"post\">");
        if (classList != null && classList.Count == 1)
        {
            Response.Write("<input type=\"hidden\" name=\"toclassid\" value=\"" + classList[0].classid + "\"/>");
        }
        else
        {
            Response.Write("选择分类:<br/>");
            Response.Write("<select name=\"toclassid\">");
            Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
            for (int i = 0; (classList != null && i < classList.Count); i++)
            {

                Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

            }
            Response.Write("</select><br/>");
        }
        Response.Write(this.GetLang("网站名称|网站名称|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" class=\"txt\" value=\"" + book_title + "\"/><br/>");
        Response.Write(this.GetLang("网站地址|网站地址|address") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub\" class=\"txt\" value=\"" + book_pub + "\"/><br/>");

        Response.Write(this.GetLang("简介|简介|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\">" + book_content + "</textarea><br/>");

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/></form>");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


