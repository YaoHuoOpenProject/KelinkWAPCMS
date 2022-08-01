<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_add.aspx.cs" Inherits="KeLin.WebSite.download.Report_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("报告错误|报告错误|tip-off"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("报告成功！");
        Response.Write("</b><br/>");
      
    }
    else
    {


        //选择
        Response.Write("报错类型:<br/>");
        Response.Write("<select name=\"reporttype\">");
        Response.Write("<option value=\"发现病毒\">发现病毒</option>");
        Response.Write("<option value=\"无法下载\">无法下载</option>");
        Response.Write("<option value=\"文件损坏\">文件损坏</option>");
        Response.Write("<option value=\"版本过旧\">版本过旧</option>");
        Response.Write("<option value=\"扣费软件\">扣费软件</option>");
        Response.Write("<option value=\"其它错误\">其它错误</option>");       
        Response.Write("</select><br/>");
        Response.Write("报错内容:<br/>");
        Response.Write("<input type=\"text\" name=\"reportwhy\" value=\"\"/><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "download/Report_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"sp\" value=\"" + sp + "\"/>");
        Response.Write("<postfield name=\"reporttype\" value=\"$(reporttype)\"/>");
        Response.Write("<postfield name=\"reportwhy\" value=\"$(reportwhy)\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "download/book_view.aspx?sp="+this.sp+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to post") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
   
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("报告错误|报告错误|tip-off") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>");
        Response.Write("报告成功！");
        Response.Write("</b>");
        Response.Write("</div>");

    }else{

    //选择
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "download/Report_add.aspx\" method=\"post\">");
    Response.Write("报错类型:<br/>");
    Response.Write("<select name=\"reporttype\">");
    Response.Write("<option value=\"发现病毒\">发现病毒</option>");
    Response.Write("<option value=\"无法下载\">无法下载</option>");
    Response.Write("<option value=\"文件损坏\">文件损坏</option>");
    Response.Write("<option value=\"版本过旧\">版本过旧</option>");
    Response.Write("<option value=\"扣费软件\">扣费软件</option>");
    Response.Write("<option value=\"其它错误\">其它错误</option>");
    Response.Write("</select><br/>");
    Response.Write("报错内容:<br/>");
    Response.Write("<input type=\"text\" class=\"txt\" name=\"reportwhy\" value=\"\"/><br/>");


    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sp\" value=\"" + sp + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" class=\"btn\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/>");
    Response.Write("</form></div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back ") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
    

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


