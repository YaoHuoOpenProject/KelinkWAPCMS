<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.hotel.admin_WAPadd" %>
<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop(this.GetLang("新增内容|新增內容|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    //选多少个
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
        //Response.Write("----- "+(i+1)+" -------<br/>");
        
        Response.Write(this.GetLang("酒店名称|酒店名称|Hotel") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"hotelname" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("星级|星级|Grade") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"lvl" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("城市|城市|City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"city" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("地址|地址|Address") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"address" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("主推房型|主推房型|Room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"roomtype" + r + "\" value=\"\"/><br/>");        
        Response.Write(this.GetLang("挂牌房价|挂牌房价|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"showmoney" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("预订房价|预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"ordermoney\" value=\"\"/><br/>");

        Response.Write(this.GetLang("附加房间类型|附加房间类型|Order room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"otherroomtype"+r+"\" value=\"\"/><br/>");
        Response.Write(this.GetLang("附加房挂牌房价|附加房挂牌房价|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"othershowmoney" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("附加房预订房价|附加房预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"otherordermoney"+r+"\" value=\"\"/><br/>");
        Response.Write("有多个附加房间类型时，请用 | 隔开，相对应的价格也用 | 隔开，要注意的是：有多少房间类型就应该有多少价格。即上面三个输入框内 | 符号存在的个数必须相等。<br/>");
        Response.Write(this.GetLang("介绍|介绍|Content") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"remark" + r + "\" /><br/>");
        
        
    }
    
    
    
    Response.Write("<anchor><go href=\""+http_start+"hotel/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    Response.Write("<postfield name=\"hotelname\" value=\"$(hotelname" + r + ")\"/>");
    Response.Write("<postfield name=\"city\" value=\"$(city" + r + ")\"/>");
    Response.Write("<postfield name=\"Address\" value=\"$(Address" + r + ")\"/>");
    Response.Write("<postfield name=\"roomtype\" value=\"$(roomtype" + r + ")\"/>");
    Response.Write("<postfield name=\"lvl\" value=\"$(lvl" + r + ")\"/>");
    Response.Write("<postfield name=\"showmoney\" value=\"$(showmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"ordermoney\" value=\"$(ordermoney" + r + ")\"/>");
    Response.Write("<postfield name=\"otherroomtype\" value=\"$(otherroomtype" + r + ")\"/>");
    Response.Write("<postfield name=\"othershowmoney\" value=\"$(othershowmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"otherordermoney\" value=\"$(otherordermoney" + r + ")\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("新 增|新 增|Add") + "</anchor><br/><br/>");


    Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("新增操作|新增操作|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    }

    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    //选多少个
    Response.Write("<form name=\"g1\" action=\"" + http_start + "hotel/admin_WAPadd.aspx\" method=\"get\">");
    Response.Write(this.GetLang("选择|選擇|Select") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "hotel/admin_WAPadd.aspx\" method=\"post\">");
    Response.Write("<select name=\"toclassid\">");
    Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");

    
    
    for (int i = 0; i < this.num; i++)
    {
        Response.Write("----- " + (i + 1) + " -------<br/>");
        Response.Write(this.GetLang("酒店名称|酒店名称|Hotel") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"hotelname\" value=\"\"/><br/>");
        Response.Write(this.GetLang("星级|星级|Grade") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"lvl\" value=\"\"/><br/>");
        Response.Write(this.GetLang("城市|城市|City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"city\" value=\"\"/><br/>");
        Response.Write(this.GetLang("地址|地址|Address") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"address\" value=\"\"/><br/>");
        Response.Write(this.GetLang("主推房型|主推房型|Room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"roomtype\" value=\"\"/><br/>");
        
        Response.Write(this.GetLang("挂牌房价|挂牌房价|Standard Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"showmoney\" value=\"\"/><br/>");
        Response.Write(this.GetLang("预订房价|预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"ordermoney\" value=\"\"/><br/>");
        
        Response.Write(this.GetLang("附加房间类型|附加房间类型|Order room") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"otherroomtype\" value=\"\"/><br/>");
        Response.Write(this.GetLang("附加房挂牌房价|附加房挂牌房价|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"othershowmoney\" value=\"\"/><br/>");
        Response.Write(this.GetLang("附加房预订房价|附加房预订房价|Order Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"otherordermoney\" value=\"\"/><br/>");
        Response.Write("有多个附加房间类型时，请用 | 隔开，相对应的价格也用 | 隔开，要注意的是：有多少房间类型就应该有多少价格。即上面三个输入框内 | 符号存在的个数必须相等。<br/>");
        
        Response.Write(this.GetLang("介绍|介绍|Content") + "*:<br/>");
        Response.Write("<textarea name=\"remark\" rows=\"5\" style=\"width:100%\"></textarea><br/>");
        

    }



    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("新 增|新 增|Add") + "\"/></form>");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "hotel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


