<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.airplane.admin_WAPadd" %>

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
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

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
       

        Response.Write(this.GetLang("航空公司|航空公司|Air Company") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"planeltd" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("航班号|航班号|Air No") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"planeNum" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("机型|机型|Plane Model") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"planeType" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("仓位|仓位|Seat Class") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"seatType" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("起飞站|起飞站|Start City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"startCity" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("目的站|目的站|End City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"endCity" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("价格|价格|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"price" + r + "\" value=\"\"/><br/>");
        
        Response.Write(this.GetLang("起飞时间|起飞时间|Start Time") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"startTime" + r + "\" value=\"" + DateTime.Now + "\"/><br/>");
        Response.Write(this.GetLang("到达时间|到达时间|Arrived Time") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"endTime" + r + "\" value=\"" + DateTime.Now + "\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"remark" + r + "\"/><br/>");
        
    }
    
    
    
    Response.Write("<anchor><go href=\""+http_start+"airplane/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    Response.Write("<postfield name=\"planeltd\" value=\"$(planeltd" + r + ")\"/>");
    Response.Write("<postfield name=\"planeNum\" value=\"$(planeNum" + r + ")\"/>");
    Response.Write("<postfield name=\"planeType\" value=\"$(planeType" + r + ")\"/>");
    Response.Write("<postfield name=\"seatType\" value=\"$(seatType" + r + ")\"/>");
    Response.Write("<postfield name=\"startCity\" value=\"$(startCity" + r + ")\"/>");
    Response.Write("<postfield name=\"endCity\" value=\"$(endCity" + r + ")\"/>");
    Response.Write("<postfield name=\"price\" value=\"$(price" + r + ")\"/>");
    Response.Write("<postfield name=\"startTime\" value=\"$(startTime" + r + ")\"/>");
    Response.Write("<postfield name=\"endTime\" value=\"$(endTime" + r + ")\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("新 增|新 增|Add") + "</anchor><br/><br/>");


    Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
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
        Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    }

    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    //选多少个
    Response.Write("<form name=\"g1\" action=\"" + http_start + "airplane/admin_WAPadd.aspx\" method=\"get\">");
    Response.Write(this.GetLang("选择|選擇|Select") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    Response.Write("<br/><br/>");
 
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "airplane/admin_WAPadd.aspx\" method=\"post\">");
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
        Response.Write(this.GetLang("航空公司|航空公司|Air Company") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"planeltd\" value=\"\"/><br/>");
        Response.Write(this.GetLang("航班号|航班号|Air No") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"planeNum\" value=\"\"/><br/>");
        Response.Write(this.GetLang("机型|机型|Plane Model") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"planeType\" value=\"\"/><br/>");
        Response.Write(this.GetLang("仓位|仓位|Seat Class") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"seatType\" value=\"\"/><br/>");
        Response.Write(this.GetLang("起飞站|起飞站|Start City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"startCity\" value=\"\"/><br/>");
        Response.Write(this.GetLang("目的站|目的站|End City") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"endCity\" value=\"\"/><br/>");
        Response.Write(this.GetLang("价格|价格|Price") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"price\" value=\"\"/><br/>");
        Response.Write(this.GetLang("起飞时间|起飞时间|Start Time") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"startTime\" value=\""+DateTime.Now+"\"/><br/>");
        Response.Write(this.GetLang("到达时间|到达时间|Arrived Time") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"endTime\" value=\"" + DateTime.Now + "\"/><br/>");       
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
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
    Response.Write("<a href=\"" + this.http_start + "airplane/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


