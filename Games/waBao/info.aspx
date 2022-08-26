<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.每隔" + second + "分钟开盅<br/>");
info.Append("2.每次赢家获得奖金" + per + "%<br/>");
info.Append("3.每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 8) + "-" + WapTool.getArryString(configVo.config, '|', 9) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 18) == "0")
{
    info.Append("4.每期不限次数<br/>");

}
else
{
    info.Append("4.每期最多投" + WapTool.getArryString(configVo.config, '|', 18) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 19) == "0")
{
    info.Append("5.每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("5.每期最多投" + WapTool.getArryString(configVo.config, '|', 19) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 20) == "0")
{
    info.Append("6.每期每种玩法不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("6.每期每种玩法最多投" + WapTool.getArryString(configVo.config, '|', 20) + siteVo.sitemoneyname + "<br/>");
}
info.Append("7.小:4,5,6,7,8,9,10<br/>");
info.Append("8.大:11,12,13,14,15,16,17<br/>");
info.Append("9.单:5,7,9,11,13,15,17<br/>");
info.Append("10.双:4,6,8,10,12,14,16<br/>");
info.Append("11.对子:任意二个点数相同<br/>");
info.Append("12.豹子:三个点数相同<br/>");


Response.Write(WapTool.showTop("挖宝游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>挖宝游戏规则</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">挖宝游戏规则</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
