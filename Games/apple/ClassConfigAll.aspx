<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.Games.apple.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("苹果机配置|苹果机配置|site setup"), wmlVo));//显示头                                                                                                                                                                       
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



    Response.Write("[0]每次赢家获得赌注:");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" size=\"5\" value=\"" + this.par0 + "\"/>%<br/>");
    Response.Write("[1]苹果1赔:");
    Response.Write("<input type=\"text\" name=\"par1" + r + "\" size=\"5\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("[2]木瓜1赔:");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" size=\"5\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("[3]小木1赔:");
    Response.Write("<input type=\"text\" name=\"par3" + r + "\" size=\"5\" value=\"" + this.par3 + "\"/><br/>");
    Response.Write("[4]西瓜1赔:");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" size=\"5\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("[5]小西1赔:");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" size=\"5\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("[6]芒果1赔:");
    Response.Write("<input type=\"text\" name=\"par6" + r + "\" size=\"5\" value=\"" + this.par6 + "\"/><br/>");
    Response.Write("[7]小芒1赔:");
    Response.Write("<input type=\"text\" name=\"par7" + r + "\" size=\"5\" value=\"" + this.par7 + "\"/><br/>");
    Response.Write("[8]双星1赔:");
    Response.Write("<input type=\"text\" name=\"par8" + r + "\" size=\"5\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("[9]小星1赔:");
    Response.Write("<input type=\"text\" name=\"par9" + r + "\" size=\"5\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("[10]金钟1赔:");
    Response.Write("<input type=\"text\" name=\"par10" + r + "\" size=\"5\" value=\"" + this.par10 + "\"/><br/>");
    Response.Write("[11]小钟1赔:");
    Response.Write("<input type=\"text\" name=\"par11" + r + "\" size=\"5\" value=\"" + this.par11 + "\"/><br/>");
    Response.Write("[12]双七1赔:");
    Response.Write("<input type=\"text\" name=\"par12" + r + "\" size=\"5\" value=\"" + this.par12 + "\"/><br/>");
    Response.Write("[13]小七1赔:");
    Response.Write("<input type=\"text\" name=\"par13" + r + "\" size=\"5\" value=\"" + this.par13 + "\"/><br/>");
    Response.Write("[14]元宝1赔:");
    Response.Write("<input type=\"text\" name=\"par14" + r + "\" size=\"5\" value=\"" + this.par14 + "\"/><br/>");
    Response.Write("[15]开奖时间每隔:");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" size=\"5\" value=\"" + this.par15 + "\"/><br/>");
    Response.Write("[16]每注多少币:");
    Response.Write("<input type=\"text\" name=\"par16" + r + "\" size=\"5\" value=\"" + this.par16 + "\"/>(无用)<br/>");
    Response.Write("[17]用户下最小注:");
    Response.Write("<input type=\"text\" name=\"par17" + r + "\" size=\"5\" value=\"" + this.par17 + "\"/>" + siteVo.sitemoneyname + "<br/>");
    Response.Write("[18]用户下最大注:");
    Response.Write("<input type=\"text\" name=\"par18" + r + "\" size=\"5\" value=\"" + this.par18 + "\"/>" + siteVo.sitemoneyname + "<br/>");
    Response.Write("[19]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par19" + r + "\" size=\"5\" value=\"" + this.par19 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");
    Response.Write("[20]难度系数:");
    Response.Write("<input type=\"text\" name=\"par20" + r + "\" size=\"5\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("(0-10)<br/>");

    Response.Write("[21]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par21"+r+"\" size=\"5\" value=\"" + this.par21 + "\"/>次(0不限制)<br/>");
    Response.Write("[22]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par22" + r + "\" size=\"5\" value=\"" + this.par22 + "\"/>"+siteVo.sitemoneyname+"(0不限制)<br/>");

    Response.Write("[23]每期每种玩法最多总投:");
    Response.Write("<input type=\"text\" name=\"par23"+r+"\" size=\"5\" value=\"" + this.par23 + "\"/>币(0为不限制)<br/>");


    Response.Write("<anchor><go href=\"" + http_start + "games/apple/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
    Response.Write("<postfield name=\"par21\" value=\"$(par21" + r + ")\"/>");
    Response.Write("<postfield name=\"par22\" value=\"$(par22" + r + ")\"/>");
    Response.Write("<postfield name=\"par23\" value=\"$(par23" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");


    if (backtype == "wap")
    {
        Response.Write("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "gamesadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a>");

    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("苹果机配置|苹果机配置|site setup") + "</div>");
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
    Response.Write("<form name=\"f\" action=\"" + http_start + "games/apple/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]每次赢家获得赌注:");
    Response.Write("<input type=\"text\" name=\"par0\" size=\"5\" value=\"" + this.par0 + "\"/>%<br/>");
    Response.Write("[1]苹果1赔:");
    Response.Write("<input type=\"text\" name=\"par1\" size=\"5\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("[2]木瓜1赔:");
    Response.Write("<input type=\"text\" name=\"par2\" size=\"5\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("[3]小木1赔:");
    Response.Write("<input type=\"text\" name=\"par3\" size=\"5\" value=\"" + this.par3 + "\"/><br/>");
    Response.Write("[4]西瓜1赔:");
    Response.Write("<input type=\"text\" name=\"par4\" size=\"5\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("[5]小西1赔:");
    Response.Write("<input type=\"text\" name=\"par5\" size=\"5\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("[6]芒果1赔:");
    Response.Write("<input type=\"text\" name=\"par6\" size=\"5\" value=\"" + this.par6 + "\"/><br/>");
    Response.Write("[7]小芒1赔:");
    Response.Write("<input type=\"text\" name=\"par7\" size=\"5\" value=\"" + this.par7 + "\"/><br/>");
    Response.Write("[8]双星1赔:");
    Response.Write("<input type=\"text\" name=\"par8\" size=\"5\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("[9]小星1赔:");
    Response.Write("<input type=\"text\" name=\"par9\" size=\"5\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("[10]金钟1赔:");
    Response.Write("<input type=\"text\" name=\"par10\" size=\"5\" value=\"" + this.par10 + "\"/><br/>");
    Response.Write("[11]小钟1赔:");
    Response.Write("<input type=\"text\" name=\"par11\" size=\"5\" value=\"" + this.par11 + "\"/><br/>");
    Response.Write("[12]双七1赔:");
    Response.Write("<input type=\"text\" name=\"par12\" size=\"5\" value=\"" + this.par12 + "\"/><br/>");
    Response.Write("[13]小七1赔:");
    Response.Write("<input type=\"text\" name=\"par13\" size=\"5\" value=\"" + this.par13 + "\"/><br/>");
    Response.Write("[14]元宝1赔:");
    Response.Write("<input type=\"text\" name=\"par14\" size=\"5\" value=\"" + this.par14 + "\"/><br/>");
    Response.Write("[15]开奖时间每隔:");
    Response.Write("<input type=\"text\" name=\"par15\" size=\"5\" value=\"" + this.par15 + "\"/><br/>");
    Response.Write("[16]每注多少币:");
    Response.Write("<input type=\"text\" name=\"par16\" size=\"5\" value=\"" + this.par16 + "\"/>(无用)<br/>");
    Response.Write("[17]用户下最小注:");
    Response.Write("<input type=\"text\" name=\"par17\" size=\"5\" value=\"" + this.par17 + "\"/>"+siteVo.sitemoneyname+"<br/>");
    Response.Write("[18]用户下最大注:");
    Response.Write("<input type=\"text\" name=\"par18\" size=\"5\" value=\"" + this.par18 + "\"/>" + siteVo.sitemoneyname + "<br/>");

    Response.Write("[19]显示聊天列表:");
    Response.Write("<input type=\"text\" name=\"par19\" size=\"5\" value=\"" + this.par19 + "\"/><br/>");
    Response.Write("(0-10行)<br/>");
    Response.Write("[20]难度系数:");
    Response.Write("<input type=\"text\" name=\"par20\" size=\"5\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("(0-10)<br/>");
    Response.Write("[21]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par21\" size=\"5\" value=\"" + this.par21 + "\"/>次(0不限制)<br/>");
    Response.Write("[22]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par22\" size=\"5\" value=\"" + this.par22 + "\"/>" + siteVo.sitemoneyname + "(0不限制)<br/>");

    Response.Write("[23]每期每种玩法最多总投:");
    Response.Write("<input type=\"text\" name=\"par23\" size=\"5\" value=\"" + this.par23 + "\"/>币(0为不限制)<br/>");

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
        Response.Write("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "gamesadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a>");
    
    }

    Response.Write("</div>");
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


