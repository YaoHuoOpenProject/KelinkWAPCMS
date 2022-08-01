<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("快乐十分配置|快乐十分配置|site setup"), wmlVo));//显示头                                                                                                                                                                       
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

    Response.Write("" + this.GetLang("快乐十分配置|快乐十分配置|site setup") + "|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖兑奖管理</a>");
    Response.Write("<br/>--------<br/>");
  

    Response.Write("[0]每次赢家获得赌注:<br/>");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" size=\"8\" value=\"" + this.par0 + "\"/>%<br/>");
    Response.Write("[1]选一数投:<br/>");
    Response.Write("<input type=\"text\" name=\"par1" + r + "\" size=\"8\" value=\"" + this.par1 + "\"/>倍<br/>");
    Response.Write("[2]选一红投:<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" size=\"8\" value=\"" + this.par2 + "\"/>倍<br/>");
    Response.Write("[3]任选二:<br/>");
    Response.Write("<input type=\"text\" name=\"par3" + r + "\" size=\"8\" value=\"" + this.par3 + "\"/>倍<br/>");
    Response.Write("[4]选二连组:<br/>");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" size=\"8\" value=\"" + this.par4 + "\"/>倍<br/>");
    Response.Write("[5]选二连直:<br/>");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" size=\"8\" value=\"" + this.par5 + "\"/>倍<br/>");
    Response.Write("[6]任选三:<br/>");
    Response.Write("<input type=\"text\" name=\"par6" + r + "\" size=\"8\" value=\"" + this.par6 + "\"/>倍<br/>");

    Response.Write("[13]选三前组:<br/>");
    Response.Write("<input type=\"text\" name=\"par13" + r + "\" size=\"8\" value=\"" + this.par13 + "\"/>倍<br/>");

    Response.Write("[14]选三前直:<br/>");
    Response.Write("<input type=\"text\" name=\"par14" + r + "\" size=\"8\" value=\"" + this.par14 + "\"/>倍<br/>");

    Response.Write("[15]任选四:<br/>");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" size=\"8\" value=\"" + this.par15 + "\"/>倍<br/>");

    Response.Write("[16]任选五:<br/>");
    Response.Write("<input type=\"text\" name=\"par16" + r + "\" size=\"8\" value=\"" + this.par16 + "\"/>倍<br/>");
    
    
    Response.Write("[7]开奖时间每隔:<br/>");
    Response.Write("<input type=\"text\" name=\"par7" + r + "\" size=\"8\" value=\"" + this.par7 + "\"/><br/>");
    Response.Write("[8]压注最小币:<br/>");
    Response.Write("<input type=\"text\" name=\"par8" + r + "\" size=\"8\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("[9]压注最大币:<br/>");
    Response.Write("<input type=\"text\" name=\"par9" + r + "\" size=\"8\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("[10]奖池初始有(暂无用):<br/>");
    Response.Write("<input type=\"text\" name=\"par10" + r + "\" size=\"8\" value=\"" + this.par10 + "\"/>币<br/>");
    Response.Write("[11]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par11" + r + "\" size=\"5\" value=\"" + this.par11 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");
    Response.Write("[12]难度系数:");
    Response.Write("<input type=\"text\" name=\"par12" + r + "\" size=\"5\" value=\"" + this.par12 + "\"/><br/>");
    Response.Write("(0-10)<br/>");
    Response.Write("[17]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par17"+r+"\" size=\"5\" value=\"" + this.par17 + "\"/>次(0不限制)<br/>");
    Response.Write("[18]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par18" + r + "\" size=\"5\" value=\"" + this.par18 + "\"/>币(0不限制)<br/>");
    Response.Write("[19]是否自动开奖:");
    Response.Write("<select name=\"par19"+r+"\" value=\""+par19+"\">");
    Response.Write("<option value=\"0\">自动开奖</option>");
    Response.Write("<option value=\"1\">手动开奖</option>");
    Response.Write("</select><br/>");
    Response.Write("[20]每期每种玩法最多总投:");
    Response.Write("<input type=\"text\" name=\"par20" + r + "\" size=\"5\" value=\"" + this.par20 + "\"/>币(0为不限制)<br/>");

    


    Response.Write("<anchor><go href=\"" + http_start + "games/happyTen/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>");
    Response.Write("<postfield name=\"par6\" value=\"$(par6" + r + ")\"/>");
    Response.Write("<postfield name=\"par7\" value=\"$(par7" + r + ")\"/>");
    Response.Write("<postfield name=\"par8\" value=\"$(par8" + r + ")\"/>");
    Response.Write("<postfield name=\"par9\" value=\"$(par9" + r + ")\"/>");
    Response.Write("<postfield name=\"par10\" value=\"$(par10" + r + ")\"/>");
    Response.Write("<postfield name=\"par11\" value=\"$(par11" + r + ")\"/>");
    Response.Write("<postfield name=\"par12\" value=\"$(par12" + r + ")\"/>");
    Response.Write("<postfield name=\"par13\" value=\"$(par13" + r + ")\"/>");
    Response.Write("<postfield name=\"par14\" value=\"$(par14" + r + ")\"/>");
    Response.Write("<postfield name=\"par15\" value=\"$(par15" + r + ")\"/>");
    Response.Write("<postfield name=\"par16\" value=\"$(par16" + r + ")\"/>");
    Response.Write("<postfield name=\"par17\" value=\"$(par17" + r + ")\"/>");
    Response.Write("<postfield name=\"par18\" value=\"$(par18" + r + ")\"/>");
    Response.Write("<postfield name=\"par19\" value=\"$(par19" + r + ")\"/>");
    Response.Write("<postfield name=\"par20\" value=\"$(par20" + r + ")\"/>"); 
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");


    if (backtype == "wap")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
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

    Response.Write("<div class=\"subtitle\">" + this.GetLang("快乐十分配置|快乐十分配置|site setup") + "|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖兑奖管理</a></div>");
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
    Response.Write("<form name=\"f\" action=\"" + http_start + "games/happyTen/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]每次赢家获得赌注:<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" size=\"8\" value=\"" + this.par0 + "\"/>%<br/>");
    Response.Write("[1]选一数投:<br/>");
    Response.Write("<input type=\"text\" name=\"par1\" size=\"8\" value=\"" + this.par1 + "\"/>倍<br/>");
    Response.Write("[2]选一红投:<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" size=\"8\" value=\"" + this.par2 + "\"/>倍<br/>");
    Response.Write("[3]任选二:<br/>");
    Response.Write("<input type=\"text\" name=\"par3\" size=\"8\" value=\"" + this.par3 + "\"/>倍<br/>");
    Response.Write("[4]选二连组:<br/>");
    Response.Write("<input type=\"text\" name=\"par4\" size=\"8\" value=\"" + this.par4 + "\"/>倍<br/>");
    Response.Write("[5]选二连直:<br/>");
    Response.Write("<input type=\"text\" name=\"par5\" size=\"8\" value=\"" + this.par5 + "\"/>倍<br/>");
    Response.Write("[6]任选三:<br/>");
    Response.Write("<input type=\"text\" name=\"par6\" size=\"8\" value=\"" + this.par6 + "\"/>倍<br/>");
    Response.Write("[13]选三前组:<br/>");
    Response.Write("<input type=\"text\" name=\"par13\" size=\"8\" value=\"" + this.par13 + "\"/>倍<br/>");
    Response.Write("[14]选三前直:<br/>");
    Response.Write("<input type=\"text\" name=\"par14\" size=\"8\" value=\"" + this.par14 + "\"/>倍<br/>");
    Response.Write("[15]任选四:<br/>");
    Response.Write("<input type=\"text\" name=\"par15\" size=\"8\" value=\"" + this.par15 + "\"/>倍<br/>");
    Response.Write("[16]任选五:<br/>");
    Response.Write("<input type=\"text\" name=\"par16\" size=\"8\" value=\"" + this.par16 + "\"/>倍<br/>");
    
    
    Response.Write("[7]开奖时间每隔:<br/>");
    Response.Write("<input type=\"text\" name=\"par7\" size=\"8\" value=\"" + this.par7 + "\"/>分钟<br/>");
    Response.Write("[8]压注最小币:<br/>");
    Response.Write("<input type=\"text\" name=\"par8\" size=\"8\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("[9]压注最大币:<br/>");
    Response.Write("<input type=\"text\" name=\"par9\" size=\"8\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("[10]奖池初始有(暂无用):<br/>");
    Response.Write("<input type=\"text\" name=\"par10\" size=\"8\" value=\"" + this.par10 + "\"/>币<br/>");

    Response.Write("[11]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par11\" size=\"5\" value=\"" + this.par11 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");
    Response.Write("[12]难度系数:");
    Response.Write("<input type=\"text\" name=\"par12\" size=\"5\" value=\"" + this.par12 + "\"/><br/>");
    Response.Write("(0-10)<br/>");
    Response.Write("[17]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par17\" size=\"5\" value=\"" + this.par17 + "\"/>次(0不限制)<br/>");
    Response.Write("[18]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par18\" size=\"5\" value=\"" + this.par18 + "\"/>币(0不限制)<br/>");
    Response.Write("[19]是否自动开奖:");
    Response.Write("<select name=\"par19\">");
    Response.Write("<option value=\""+par19+"\">"+par19+"</option>");
    Response.Write("<option value=\"0\">0_自动开奖</option>");
    Response.Write("<option value=\"1\">1_手动开奖</option>");
    Response.Write("</select><br/>");
    Response.Write("[20]每期每种玩法最多总投:");
    Response.Write("<input type=\"text\" name=\"par20\" size=\"5\" value=\"" + this.par20 + "\"/>币(0为不限制)<br/>");

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");
  
    Response.Write("<div class=\"bt1\">");
    if (backtype == "wap")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "gamesadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


