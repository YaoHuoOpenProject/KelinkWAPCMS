<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setClan.aspx.cs" Inherits="KeLin.WebSite.clan.setClan" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("家族设定|家族设定|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("设定成功！|设定成功！|Successfully Update"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("所有项不能为空间，币数只能数值！");
        Response.Write("</b><br/>");
    }

    
    if (this.INFO != "OK")
    {

        Response.Write("家族名称:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_name"+r+"\"  value=\"" + bookVo.clan_name + "\"/><br/>");
        Response.Write("加入家族所需币数:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_joinmoney" + r + "\" size=\"8\" value=\"" + bookVo.clan_joinmoney + "\"/><br/>");
        Response.Write("家族LOGO:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_img" + r + "\" value=\"" + bookVo.clan_img + "\"/><br/>");
        Response.Write("(http://开头或/开头)<br/>");
        Response.Write("家族公告:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_notice" + r + "\"  value=\"" + bookVo.clan_notice + "\"/><br/>");
        Response.Write("家族管理员:<br/>");
        Response.Write("<input type=\"text\" name=\"adminstrator" + r + "\"  value=\"" + bookVo.adminstrator + "\"/><br/>");
        Response.Write("(填会员ID,多个用|隔开)<br/>");
        Response.Write("开放加入:<br/>");
        Response.Write("<select name=\"clan_join" + r + "\" value=\"True\">");
        Response.Write("<option value=\"True\">True_是</option>");
        Response.Write("<option value=\"False\">False_否</option>");
        Response.Write("</select><br/>");
        Response.Write("绑定论坛栏目ID:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_bbs" + r + "\"  value=\"" + bookVo.clan_bbs + "\"/><br/>");
        Response.Write("(可以向站长索取)<br/>");

        Response.Write("<anchor><go href=\"" + http_start + "clan/setclan.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"clan_name\" value=\"$(clan_name" + r + ")\"/>");
        Response.Write("<postfield name=\"clan_joinmoney\" value=\"$(clan_joinmoney" + r + ")\"/>");
        Response.Write("<postfield name=\"clan_img\" value=\"$(clan_img" + r + ")\"/>");
        Response.Write("<postfield name=\"clan_notice\" value=\"$(clan_notice" + r + ")\"/>");
        Response.Write("<postfield name=\"adminstrator\" value=\"$(adminstrator" + r + ")\"/>");
        Response.Write("<postfield name=\"clan_bbs\" value=\"$(clan_bbs" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");

    }

    Response.Write("<br/><a href=\"" + this.http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    Response.Write(this.ERROR);

    Response.Write("<div class=\"subtitle\">" + this.GetLang("家族设定|家族设定|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("设定成功！|设定成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("所有项不能为空，币数只能数值！");
        Response.Write("</b></div>");
    }
    

    if (this.INFO != "OK")
    {
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "clan/setclan.aspx\" method=\"post\">");

   
        Response.Write("家族名称:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_name\"  value=\"" + bookVo.clan_name + "\"/><br/>");
        Response.Write("加入家族所需币数:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_joinmoney\" size=\"8\" value=\"" + bookVo.clan_joinmoney + "\"/><br/>");
        Response.Write("家族LOGO:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_img\"  value=\"" + bookVo.clan_img + "\"/><br/>");
        Response.Write("(http://开头或/开头)<br/>");
        Response.Write("家族公告:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_notice\"  value=\"" + bookVo.clan_notice + "\"/><br/>");
        Response.Write("家族管理员:<br/>");
        Response.Write("<input type=\"text\" name=\"adminstrator\"  value=\"" + bookVo.adminstrator + "\"/><br/>");
        Response.Write("(填会员ID,多个用|隔开)<br/>");
        Response.Write("开放加入:<br/>");
        Response.Write("<select name=\"clan_join\">");
        Response.Write("<option value=\"" + bookVo.clan_join + "\">" + bookVo.clan_join + "</option>");
        Response.Write("<option value=\"True\">True_是</option>");
        Response.Write("<option value=\"False\">False_否</option>");
        Response.Write("</select><br/>");

        Response.Write("绑定论坛栏目ID:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_bbs\"  value=\"" + bookVo.clan_bbs + "\"/><br/>");
        Response.Write("(可以向站长索取)<br/>");

        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
        Response.Write("</form>");
    
    Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
        Response.Write("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id+"\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    

    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


