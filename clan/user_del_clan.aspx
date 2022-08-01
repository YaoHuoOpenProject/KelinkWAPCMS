<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_del_clan.aspx.cs" Inherits="KeLin.WebSite.games.clan.user_del_clan" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("解除家族|解除家族|Content of the guangbo"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (this.INFO == "")
    {
        
        Response.Write("家族：" + bookVo.clan_name + "<br/>");
        Response.Write("我是本家族族长。<br/>");


        Response.Write("----------<br/>");
        Response.Write("输入要转让给会员ID:<br/>");
        Response.Write("<input type=\"text\" name=\"touserid"+r+"\"  value=\"" + touserid + "\"/><br/>");
        Response.Write("转让家族需要" + configVo.transfermoney + "个" + siteVo.sitemoneyname + "。<br/>");
        Response.Write("<anchor><go href=\"" + http_start + "clan/user_del_clan.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"chang\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");        
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>确定转让</anchor>");


        Response.Write("<br/>----------<br/>");
        Response.Write("解除原因:<br/>");
        Response.Write("<input type=\"text\" name=\"why" + r + "\"  value=\"" + why + "\"/><br/>");
       
        Response.Write("<anchor><go href=\"" + http_start + "clan/user_del_clan.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"godel\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"why\" value=\"$(why" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>确认解除</anchor>");
        Response.Write("<br/>----------<br/>");

    }
    else if (this.INFO == "CHANGOK")
    {
        Response.Write("<b>转让家族成功！</b><br/>");
        

    }
    else if (this.INFO == "DELOK")
    {
        Response.Write("<b>解除家族成功！</b><br/>");


    }
    else
    {
        Response.Write(this.INFO);
    }

    Response.Write("<br/><a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">家族首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

  
    
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("家族：" + bookVo.clan_name + "<br/>");
        Response.Write("我是本家族族长。<br/>");
        Response.Write("</div>");
        
        
        Response.Write("<div class=\"subtitle\">转让家族</div>");
        Response.Write("<div class=\"content\">");
     
        Response.Write("<form name=\"f\" action=\"" + http_start + "clan/user_del_clan.aspx\" method=\"post\">");
        Response.Write("输入要转让给会员ID:<br/>");
        Response.Write("<input type=\"text\" name=\"touserid\"  value=\"" + touserid + "\"/><br/>");
        Response.Write("转让家族需要" + configVo .transfermoney+ "个"+siteVo.sitemoneyname+"。<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"chang\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"确定转让\"/>");
        Response.Write("</form>");
        Response.Write("</div>");

        Response.Write("<div class=\"subtitle\">" + this.GetLang("解除家族|解除家族|delete") + "</div>");
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "clan/user_del_clan.aspx\" method=\"post\">");
        Response.Write("解除原因:<br/>");
        Response.Write("<input type=\"text\" name=\"why\"  value=\"" + why + "\"/><br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"确定解除\"/>");
        Response.Write("</form>"); Response.Write("</div>");


    }
    else if (this.INFO == "CHANGOK")
    {
        Response.Write("<div class=\"tip\"><b>转让家族成功！</b></div>");


    }
    else if (this.INFO == "DELOK")
    {
        Response.Write("<div class=\"tip\"><b>解除家族成功！</b></div>");


    }
    else
    {
        Response.Write("<div class=\"tip\">"+this.INFO+"</div>");
    }

    Response.Write("<div class=\"bt1\"><a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">家族首页</a>");
    Response.Write("</div>");





}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


