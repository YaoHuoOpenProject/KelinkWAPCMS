<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.apple.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("苹果机游戏规则说明<br/>");
info.Append("1.苹果机游戏为"+second+"分钟开一局，最后10秒为开机旋转阶段，无法再进行下注<br/>");
info.Append("2.游戏中共有14个目标可下注，中奖以后各有不同倍数奖励，每注为"+every+"金币<br/>");
info.Append("3.其中木瓜、西瓜、芒果、双星、双七、金钟分大小，对应的返奖倍数不同。<br/>");
info.Append("4.用户最小下:"+min+"注，最大下:"+max+"注<br/>");
info.Append("5.每次赢家获得赌注" + per + "%<br/>");
info.Append("6.每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 17) + "-" + WapTool.getArryString(configVo.config, '|', 18) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 21) == "0")
{
    info.Append("7.每期不限次数<br/>");

}
else
{
    info.Append("7.每期最多投" + WapTool.getArryString(configVo.config, '|', 21) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 22) == "0")
{
    info.Append("8.每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("8.每期最多投" + WapTool.getArryString(configVo.config, '|', 22) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 23) == "0")
{
    info.Append("9.每期每种玩法不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("9.每期每种玩法最多投" + WapTool.getArryString(configVo.config, '|', 23) + siteVo.sitemoneyname + "<br/>");
}

Response.Write(WapTool.showTop("苹果机游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>苹果机游戏规则</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">苹果机游戏规则</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
