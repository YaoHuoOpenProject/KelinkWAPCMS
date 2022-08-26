<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.airplane.admin_WAPmodify" %>

<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
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
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b><br/>");

    }

    Response.Write(this.GetLang("航空公司|航空公司|Air Company") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"planeltd\" value=\"" + bookVo.planeltd + "\"/><br/>");
    Response.Write(this.GetLang("航班号|航班号|Air No") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"planeNum\" value=\"" + bookVo.planeNum + "\"/><br/>");
    Response.Write(this.GetLang("机型|机型|Plane Model") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"planeType\" value=\"" + bookVo.planeType + "\"/><br/>");
    Response.Write(this.GetLang("仓位|仓位|Seat Class") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"seatType\" value=\"" + bookVo.seatType + "\"/><br/>");
    Response.Write(this.GetLang("起飞站|起飞站|Start City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"startCity\" value=\"" + bookVo.startCity + "\"/><br/>");
    Response.Write(this.GetLang("目的站|目的站|End City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"endCity\" value=\"" + bookVo.endCity + "\"/><br/>");
    Response.Write(this.GetLang("价格|价格|Price") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"price\" value=\"" + bookVo.money + "\"/><br/>");
    Response.Write(this.GetLang("起飞时间|起飞时间|Start Time") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"startTime\" value=\"" + bookVo.startTime + "\"/><br/>");
    Response.Write(this.GetLang("到达时间|到达时间|Arrived Time") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"endTime\" value=\"" + bookVo.endTime + "\"/><br/>");
    Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"remark\" value=\"" + bookVo.remark.Replace("[br]", "\r\n") + "\"/><br/>");
    Response.Write("<anchor><go href=\""+http_start+"airplane/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    Response.Write("<postfield name=\"book_author\" value=\"$(book_author"+r+")\"/>");
    Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub"+r+")\"/>");	
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "airplane/admin_WAPmodify.aspx\" method=\"post\">");
    

    Response.Write(this.GetLang("航空公司|航空公司|Air Company") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"planeltd\" value=\"" + bookVo.planeltd + "\"/><br/>");
    Response.Write(this.GetLang("航班号|航班号|Air No") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"planeNum\" value=\"" + bookVo.planeNum + "\"/><br/>");
    Response.Write(this.GetLang("机型|机型|Plane Model") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"planeType\" value=\"" + bookVo.planeType + "\"/><br/>");
    Response.Write(this.GetLang("仓位|仓位|Seat Class") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"seatType\" value=\"" + bookVo.seatType + "\"/><br/>");
    Response.Write(this.GetLang("起飞站|起飞站|Start City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"startCity\" value=\"" + bookVo.startCity + "\"/><br/>");
    Response.Write(this.GetLang("目的站|目的站|End City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"endCity\" value=\"" + bookVo.endCity + "\"/><br/>");
    Response.Write(this.GetLang("价格|价格|Price") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"price\" value=\"" + bookVo.money + "\"/><br/>");
    Response.Write(this.GetLang("起飞时间|起飞时间|Start Time") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"startTime\" value=\"" + bookVo.startTime + "\"/><br/>");
    Response.Write(this.GetLang("到达时间|到达时间|Arrived Time") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"endTime\" value=\"" + bookVo.endTime + "\"/><br/>");
    Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
    Response.Write("<textarea name=\"remark\" rows=\"12\" style=\"width:100%\">" + bookVo.remark + "</textarea><br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


