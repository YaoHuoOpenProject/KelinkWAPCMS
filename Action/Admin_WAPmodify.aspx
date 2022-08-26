<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.action.admin_WAPmodify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("不能为空！|不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }
    
    //Response.Write("<a href=\"" + this.http_start + "action/admin_wapmodifyadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面续传|进入WAP2.0界面续传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("任务代号:"+bookVo.actionID+"<br/>");
    Response.Write("任务名称*:<br/>");
    Response.Write("<input type=\"text\" name=\"actionName" + r + "\" value=\"" + bookVo.actionName + "\"/><br/>");
    Response.Write("任务路径:<br/>");
    Response.Write("<input type=\"text\" name=\"actionPath" + r + "\" value=\"" + bookVo.actionPath + "\"/><br/>");
    Response.Write("(从/开头或http://开头，要加，&amp;不用改成&amp;amp;)<br/>");
    Response.Write("本任务量:<br/>");
    Response.Write("<input type=\"text\" name=\"num" + r + "\" value=\"" + bookVo.num + "\" size=\"2\"/><br/>");
    Response.Write("本任务随机率:<br/>");
    Response.Write("<input type=\"text\"  name=\"per"+r+"\" value=\""+bookVo.per+"\" size=\"2\"/>%<br/>");
    Response.Write("(0不会随机到，100优先随机到)<br/>");
    Response.Write("<anchor><go href=\""+http_start+"action/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"actionName\" value=\"$(actionName" + r + ")\"/>");
    Response.Write("<postfield name=\"actionPath\" value=\"$(actionPath" + r + ")\"/>");
    Response.Write("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");
    Response.Write("<postfield name=\"per\" value=\"$(per" + r + ")\"/>");
   
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + strInfo + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("标题不能为空！|標題不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
   
    Response.Write("<div class=\"content\">");   
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "action/admin_WAPmodify.aspx\" method=\"post\">");
    Response.Write("任务代号:" + bookVo.actionID + "<br/>");
    Response.Write("任务名称*:<br/>");
    Response.Write("<input type=\"text\" name=\"actionName\" value=\"" + bookVo.actionName + "\"/><br/>");
    Response.Write("任务路径:<br/>");
    Response.Write("<input type=\"text\" name=\"actionPath\" value=\"" + bookVo.actionPath + "\"/><br/>");
    Response.Write("(从/开头或http://开头，要加，&amp;不用改成&amp;amp;)<br/>");
    Response.Write("本任务量:<br/>");
    Response.Write("<input type=\"text\" name=\"num\" value=\"" + bookVo.num + "\" size=\"2\"/><br/>");
    Response.Write("本任务随机率:<br/>");
    Response.Write("<input type=\"text\"  name=\"per\" value=\"" + bookVo.per + "\" size=\"2\"/>%<br/>");
    Response.Write("(0不会随机到，100优先随机到)<br/>");
 
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + strInfo+"\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


