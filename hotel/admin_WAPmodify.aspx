<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.hotel.admin_WAPmodify" %>
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
        Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b><br/>");

    }

        Response.Write(this.GetLang("酒店名称|酒店名称|Hotel") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"hotelname" + r + "\" value=\""+bookVo.name+"\"/><br/>");
        Response.Write(this.GetLang("城市|城市|City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"city" + r + "\" value=\""+bookVo.city+"\"/><br/>");
        Response.Write(this.GetLang("地址|地址|Address") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"address" + r + "\" value=\""+bookVo.address+"\"/><br/>");
        Response.Write(this.GetLang("房型|房型|Room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"roomtype" + r + "\" value=\""+bookVo.roomtype+"\"/><br/>");
        Response.Write(this.GetLang("星级|星级|Grade") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"lvl" + r + "\" value=\""+bookVo.lvl+"\"/><br/>");
        Response.Write(this.GetLang("挂牌房价|挂牌房价|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"showmoney" + r + "\" value=\""+bookVo.showMoney+"\"/><br/>");
        Response.Write(this.GetLang("预订房价|预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"ordermoney\" value=\""+bookVo.orderMoney+"\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"remark" + r + "\" value=\""+bookVo.about+"\" /><br/>");




    Response.Write("<anchor><go href=\"" + http_start + "hotel/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    Response.Write("<postfield name=\"hotelname\" value=\"$(hotelname" + r + ")\"/>");
    Response.Write("<postfield name=\"city\" value=\"$(city" + r + ")\"/>");
    Response.Write("<postfield name=\"address\" value=\"$(address" + r + ")\"/>");
    Response.Write("<postfield name=\"roomtype\" value=\"$(roomtype" + r + ")\"/>");
    Response.Write("<postfield name=\"lvl\" value=\"$(lvl" + r + ")\"/>");
    Response.Write("<postfield name=\"showmoney\" value=\"$(showmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"ordermoney\" value=\"$(ordermoney" + r + ")\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
   //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "hotel/admin_wapmodify.aspx\" method=\"post\">");
    
        Response.Write(this.GetLang("酒店名称|酒店名称|Hotel") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"hotelname\" value=\""+bookVo.name+"\"/><br/>");
        Response.Write(this.GetLang("城市|城市|City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"city\" value=\""+bookVo.city+"\"/><br/>");
        Response.Write(this.GetLang("地址|地址|Address") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"address\" value=\""+bookVo.address+"\"/><br/>");
        Response.Write(this.GetLang("房型|房型|Room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"roomtype\" value=\""+bookVo.roomtype+"\"/><br/>");
        Response.Write(this.GetLang("星级|星级|Grade") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"lvl\" value=\""+bookVo.lvl+"\"/><br/>");
        Response.Write(this.GetLang("挂牌房价|挂牌房价|Standard Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"showmoney\" value=\""+bookVo.showMoney+"\"/><br/>");
        Response.Write(this.GetLang("预订房价|预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"ordermoney\" value=\""+bookVo.orderMoney+"\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<textarea name=\"remark\" rows=\"5\" style=\"width:100%\">" + bookVo.about.Replace("[br]", "\r\n") + "</textarea><br/>");


 




    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
     Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("修 改|修 改|submit") + "\"/></form>");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


