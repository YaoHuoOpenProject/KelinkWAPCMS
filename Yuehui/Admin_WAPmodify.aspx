<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.yuehui.admin_WAPmodify" %>

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
        Response.Write("<a href=\"" + this.http_start + "yuehui/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b><br/>");

    }

    Response.Write(this.GetLang("约会宣言|约会宣言|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"yh_title" + r + "\" value=\""+bookVo.yh_title+"\"/><br/>");
    Response.Write(this.GetLang("约会类型|约会类型|Type") + ":<br/>");
    Response.Write("<select name=\"yh_type"+r+"\" value=\"" + bookVo.yh_type + "\"><option value=\"征友\">征友</option><option value=\"征婚\">征婚</option><option value=\"游玩\">游玩</option><option value=\"会友\">会友</option></select><br/>");
    Response.Write(this.GetLang("性别要求|性别要求|Gander") + ":<br/>");
    Response.Write("<select name=\"yh_sex"+r+"\" value=\"" + bookVo.yh_sex + "\"><option value=\"无\">无</option><option value=\"女\">女</option><option value=\"男\">男</option></select><br/>");
    Response.Write(this.GetLang("年龄要求|年龄要求|Age") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_age" + r + "\" value=\""+bookVo.yh_age+"\"/><br/>");
    Response.Write(this.GetLang("约会人数|约会人数|Member") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_people" + r + "\" value=\""+bookVo.yh_people+"\"/><br/>");
    Response.Write(this.GetLang("约会时间|约会时间|Date") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_time" + r + "\" value=\""+bookVo.yh_time+"\"/><br/>");
    Response.Write(this.GetLang("约会城市|约会城市|City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_city" + r + "\" value=\""+bookVo.yh_city+"\"/><br/>");
    Response.Write(this.GetLang("约会地点|约会地点|Address") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_address" + r + "\" value=\""+bookVo.yh_address+"\"/><br/>");
    Response.Write(this.GetLang("约会规划|约会规划|Plan") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"yh_plan" + r + "\" value=\""+bookVo.yh_plan+"\" /><br/>");
    
    
    
    Response.Write("<anchor><go href=\""+http_start+"yuehui/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"yh_title\" value=\"$(yh_title" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_type\" value=\"$(yh_type" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_sex\" value=\"$(yh_sex" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_age\" value=\"$(yh_age" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_people\" value=\"$(yh_people" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_time\" value=\"$(yh_time" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_city\" value=\"$(yh_city" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_address\" value=\"$(yh_address" + r + ")\"/>");
    Response.Write("<postfield name=\"yh_plan\" value=\"$(yh_plan" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "yuehui/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write("<a href=\"" + this.http_start + "yuehui/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "yuehui/admin_WAPmodify.aspx\" method=\"post\">");
    
    Response.Write(this.GetLang("约会宣言|约会宣言|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"yh_title\" value=\""+bookVo.yh_title+"\"/><br/>");
    Response.Write(this.GetLang("约会类型|约会类型|Type") + ":<br/>");
    Response.Write("<select name=\"yh_type\"><option value=\"" + bookVo .yh_type+ "\">"+bookVo.yh_type+"</option><option value=\"征友\">征友</option><option value=\"征婚\">征婚</option><option value=\"游玩\">游玩</option><option value=\"会友\">会友</option></select>");
    //Response.Write("<input type=\"text\" name=\"yh_type\" value=\"\"/><br/>");
    Response.Write(this.GetLang("性别要求|性别要求|Gender") + ":<br/>");
    Response.Write("<select name=\"yh_sex\"><option value=\"" + bookVo.yh_sex + "\">" + bookVo.yh_sex + "</option><option value=\"无\">无</option><option value=\"女\">女</option><option value=\"男\">男</option></select>");
    //Response.Write("<input type=\"text\" name=\"yh_sex\" value=\"\"/><br/>");
    Response.Write(this.GetLang("年龄要求|年龄要求|Age") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_age\" value=\""+bookVo.yh_age+"\"/><br/>");
    Response.Write(this.GetLang("约会人数|约会人数|Member") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_people\" value=\""+bookVo.yh_people+"\"/><br/>");
    Response.Write(this.GetLang("约会时间|约会时间|Date") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_time\" value=\""+bookVo.yh_time+"\"/><br/>");
    Response.Write(this.GetLang("约会城市|约会城市|City") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_city\" value=\""+bookVo.yh_city+"\"/><br/>");
    Response.Write(this.GetLang("约会地点|约会地点|Address") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"yh_address\" value=\""+bookVo.yh_address+"\"/><br/>");
    Response.Write(this.GetLang("约会规划|约会规划|Plan") + "*:<br/>");
    Response.Write("<textarea name=\"yh_plan\" rows=\"5\" style=\"width:100%\">" + bookVo.yh_plan.Replace("[br]", "\r\n") + "</textarea><br/>");
   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "yuehui/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
  
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


