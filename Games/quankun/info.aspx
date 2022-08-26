<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.quankun.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.每隔"+second+"分钟开盅<br/>");
info.Append("2.压中点数赔对应的倍数,具体数额受奖池规模影响<br/>");
info.Append("3.每次赢家获得奖金" + per + "%<br/>");
info.Append("4.每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 8) + "-" + WapTool.getArryString(configVo.config, '|', 9) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 13) == "0")
{
    info.Append("5.每期不限次数<br/>");

}
else
{
    info.Append("5.每期最多投" + WapTool.getArryString(configVo.config, '|', 13) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 14) == "0")
{
    info.Append("6.每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("6.每期最多投" + WapTool.getArryString(configVo.config, '|', 14) + siteVo.sitemoneyname + "<br/>");
}
Response.Write(WapTool.showTop("乾坤宝游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>乾坤宝游戏规则</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/quankun/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">乾坤宝游戏规则</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/quankun/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
