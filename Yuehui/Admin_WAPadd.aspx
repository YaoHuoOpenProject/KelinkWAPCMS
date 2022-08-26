<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.yuehui.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("发起约会|发起约会|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("提交成功！");
        Response.Write("</b><br/>");
        
    }
    else if(this.INFO=="NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能为空！");
        Response.Write("</b><br/>");
    }
    if (this.INFO != "OK")
    {
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
            Response.Write(this.GetLang("约会宣言|约会宣言|Title") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"yh_title" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会类型|约会类型|Type") + ":<br/>");
            Response.Write("<select name=\"yh_type" + r + "\"><option value=\"征友\">征友</option><option value=\"征婚\">征婚</option><option value=\"游玩\">游玩</option><option value=\"会友\">会友</option></select><br/>");

            Response.Write(this.GetLang("性别要求|性别要求|Gander") + ":<br/>");
            Response.Write("<select name=\"yh_sex\"><option value=\"无\">无</option><option value=\"女\">女</option><option value=\"男\">男</option></select><br/>");
            Response.Write(this.GetLang("年龄要求|年龄要求|Age") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_age" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会人数|约会人数|Member") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_people" + r + "\" value=\"6\"/><br/>");
            Response.Write(this.GetLang("约会时间|约会时间|Date") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_time" + r + "\" value=\"20-25\"/><br/>");
            Response.Write(this.GetLang("约会城市|约会城市|City") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_city" + r + "\" value=\"\"/><br/>");

            Response.Write(this.GetLang("约会地点|约会地点|Address") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_address" + r + "\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会规划|约会规划|Plan") + "*:<br/>");
            Response.Write("<input type=\"text\"  name=\"yh_plan" + r + "\" value=\"\" /><br/>");

        }



        Response.Write("<anchor><go href=\"" + http_start + "yuehui/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_title\" value=\"$(yh_title" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_type\" value=\"$(yh_type" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_sex\" value=\"$(yh_sex" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_age\" value=\"$(yh_age" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_people\" value=\"$(yh_people" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_time\" value=\"$(yh_time" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_city\" value=\"$(yh_city" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_address\" value=\"$(yh_address" + r + ")\"/>");
        Response.Write("<postfield name=\"yh_plan\" value=\"$(yh_plan" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    
    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("发起约会|发起约会|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("提交成功！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能为空！");
        Response.Write("</b><br/>");
    }

    Response.Write("</div>");

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");

        //选择栏目
        Response.Write("<form name=\"gt\" action=\"" + http_start + "yuehui/admin_WAPadd.aspx\" method=\"post\">");
        if (classList != null && classList.Count == 1)
        {
            Response.Write("<input type=\"hidden\" name=\"toclassid\" value=\"" + classList[0].classid + "\"/>");
        }
        else
        {
            Response.Write("<select name=\"toclassid\" value=\"" + this.classid + "\">");
            string selected = "";
            for (int i = 0; (classList != null && i < classList.Count); i++)
            {
                if (this.classid == classList[i].classid.ToString()) selected = "selected";
                Response.Write("<option " + selected + " value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");
                selected = "";
            }
            Response.Write("</select><br/>");
        }
        num = 1;

        for (int i = 0; i < this.num; i++)
        {
            //Response.Write("----- " + (i + 1) + " -------<br/>");
            Response.Write(this.GetLang("约会宣言|约会宣言|Title") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"yh_title\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会类型|约会类型|Type") + ":<br/>");
            Response.Write("<select name=\"yh_type\"><option value=\"征友\">征友</option><option value=\"征婚\">征婚</option><option value=\"游玩\">游玩</option><option value=\"会友\">会友</option></select><br/>");
            //Response.Write("<input type=\"text\" name=\"yh_type\" value=\"\"/><br/>");
            Response.Write(this.GetLang("性别要求|性别要求|Gender") + ":<br/>");
            Response.Write("<select name=\"yh_sex\"><option value=\"无\">无</option><option value=\"女\">女</option><option value=\"男\">男</option></select><br/>");
            //Response.Write("<input type=\"text\" name=\"yh_sex\" value=\"\"/><br/>");
            Response.Write(this.GetLang("年龄要求|年龄要求|Age") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_age\" value=\"20-25\"/><br/>");
            Response.Write(this.GetLang("约会人数|约会人数|Member") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_people\" value=\"6\"/><br/>");
            Response.Write(this.GetLang("约会时间|约会时间|Date") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_time\" value=\"" + System.DateTime.Today.ToShortDateString() + "\"/><br/>");
            Response.Write(this.GetLang("约会城市|约会城市|City") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_city\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会地点|约会地点|Address") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"yh_address\" value=\"\"/><br/>");
            Response.Write(this.GetLang("约会规划|约会规划|Plan") + "*:<br/>");
            Response.Write("<textarea name=\"yh_plan\" rows=\"5\" style=\"width:100%\"></textarea><br/>");


        }
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/></form>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


