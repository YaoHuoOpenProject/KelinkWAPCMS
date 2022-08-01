<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.Games.chuiniu.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("疯狂吹牛配置|疯狂吹牛配置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("只能数值！");
        Response.Write("</b><br/>");
    }
 


    Response.Write("[0]最小币:<br/>");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" size=\"8\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("[1]最大币<br/>");
    Response.Write("<input type=\"text\" name=\"par1" + r + "\" size=\"8\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("[2]获胜得到币的比率:<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" size=\"8\" value=\"" + this.par2 + "\"/>%<br/>");
    Response.Write("[3]一天只能发布挑战:<br/>");
    Response.Write("<input type=\"text\" name=\"par3" + r + "\" size=\"8\" value=\"" + this.par3 + "\"/>次<br/>");

    Response.Write("[4]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" size=\"5\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");

    Response.Write("<anchor><go href=\"" + http_start + "games/chuiniu/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");


    if (backtype == "wap")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/chuiniu/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "gamesadmin")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("疯狂吹牛配置|疯狂吹牛配置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("只能数值！");
        Response.Write("</b></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "games/chuiniu/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]最小币:<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" size=\"8\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("[1]最大币<br/>");
    Response.Write("<input type=\"text\" name=\"par1\" size=\"8\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("[2]获胜得到币的比率:<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" size=\"8\" value=\"" + this.par2 + "\"/>%<br/>");
    Response.Write("[3]一天只能发布挑战:<br/>");
    Response.Write("<input type=\"text\" name=\"par3\" size=\"8\" value=\"" + this.par3 + "\"/>次<br/>");
    Response.Write("[4]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par4\" size=\"5\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    if (backtype == "wap")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/chuiniu/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "gamesadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


