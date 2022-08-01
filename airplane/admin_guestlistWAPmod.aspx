<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAPmod.aspx.cs" Inherits="KeLin.WebSite.airplane.admin_guestlistWAPmod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("处理订单|处理订单|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("处理成功！|处理成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("回复不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("订单号:"+this.id+"<br/>");
    Response.Write("状态：<select name=\"state" + r + "\" value=\"" + bookVo.state + "\">");
    Response.Write("<option value=\"1\">成功</option>");
    Response.Write("<option value=\"0\">进行中</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("我的回复|我的回复|Content") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"remark"+r+"\" value=\""+bookVo.remark+"\" /><br/>");
    Response.Write("<anchor><go href=\""+http_start+"airplane/admin_guestlistWAPmod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"state\" value=\"$(state" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("确定|确定|submit") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "airplane/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("处理操作|处理操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("处理成功！|处理成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("回复不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "airplane/admin_guestlistWAPmod.aspx\" method=\"post\">");
    Response.Write("订单号:" + this.id + "<br/>");
    Response.Write("状态：<select name=\"state\">");
    Response.Write("<option value=\"" + bookVo.state + "\">" + bookVo.state + "</option>");
    Response.Write("<option value=\"1\">1_成功</option>");
    Response.Write("<option value=\"0\">0_进行中</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("回复|內容|Content") + "*:<br/>");
    Response.Write("<textarea name=\"remark\" rows=\"12\" style=\"width:100%\">" + bookVo.remark + "</textarea><br/>");    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|确 定|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "airplane/admin_guestlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


