<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userGuessbook_re.aspx.cs" Inherits="KeLin.WebSite.bbs.userGuessbook_re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("回复留言|回复留言| Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("回复留言成功！|回复留言成功！| successfully!") + "</b> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "&amp;touserid=" + this.touserid + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("内容要大于2字！|内容要大于2字！|Content to more than 2 words!") + "</b><br/>");
    }


    Response.Write(WapTool.ToWML(bbsReVo.content,wmlVo));
    Response.Write("<br/>--------<br/>");
    Response.Write(this.GetLang("回复内容|回複內容|Reply Content") + "*:<br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook_pic.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "&amp;reid=" + this.reid + "\"><img src=\"" + this.http_start + "bbs/face/" + face + ".gif\" alt=\"表情\"/></a>");
    Response.Write("<input type=\"text\"  name=\"content" + r + "\" value=\"\" /><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/userguessbook_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"reid\" value=\"" + reid + "\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<postfield name=\"ot\" value=\"" + ot + "\"/>");
    Response.Write("<postfield name=\"face\" value=\"" + face + "\"/>");
    Response.Write("<postfield name=\"touserid\" value=\"" + touserid + "\"/>");
    Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/>");

    
    Response.Write("<br/><a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;ot="+this.ot+"&amp;touserid="+this.touserid+"\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("回复留言|回复留言|Replay") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("回复留言成功！|回复留言成功！|replay successfully!") + "</b> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("内容要大于2字！|内容要大于2字！|Content to more than 2 words!") + "</b><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(WapTool.ToWML(bbsReVo.content,wmlVo));
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" aciont=\""+this.http_start+"bbs/userguessbook_re.aspx\" method=\"post\">");
    Response.Write(this.GetLang("回复内容|回複內容|Reply Content") + "：<br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook_pic.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "&amp;reid="+this.reid+"\"><img src=\"" + this.http_start + "bbs/face/" + face + ".gif\" alt=\"表情\"/></a>");
    Response.Write("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
             
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"ot\" value=\"" + ot + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + touserid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"reid\" value=\"" + reid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"face\" value=\"" + face + "\"/>"); 
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/><br/>");
    Response.Write("</form></div>");



    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");   
    Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid="+this.touserid+"&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>"); 
    


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


