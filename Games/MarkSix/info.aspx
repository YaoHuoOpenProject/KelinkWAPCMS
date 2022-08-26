<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.每次赢家获得奖金" + WapTool.getArryString(configVo.config, '|', 38) + "%<br/>");
info.Append("2.每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 4) + "-" + WapTool.getArryString(configVo.config, '|', 5) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 3) == "0")
{
    info.Append("3.每期不限次数<br/>");

}
else
{
    info.Append("3.每期最多投" + WapTool.getArryString(configVo.config, '|', 3) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 67) == "0")
{
    info.Append("4.每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("4.每期最多投" + WapTool.getArryString(configVo.config, '|', 67) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 68) == "0")
{
    info.Append("5.每期每种玩法不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("5.每期每种玩法最多投" + WapTool.getArryString(configVo.config, '|', 68) + siteVo.sitemoneyname + "<br/>");
}
Response.Write(WapTool.showTop("对照表", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append(info);
    strhtml.Append("----------<br/>");
    
    strhtml.Append("<b>波色对照表</b><br/>");

    strhtml.Append("红波号码: " + arry[30] + "<br/>");
    strhtml.Append("蓝波号码:" + arry[31] + "<br/>");
    strhtml.Append("绿波号码  " + arry[32] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>生肖对照表</b><br/>");

    strhtml.Append("龙: " + arry[39] + "<br/>");
    strhtml.Append("兔: " + arry[40] + "<br/>");
    strhtml.Append("虎: " + arry[41] + "<br/>");
    strhtml.Append("牛: " + arry[42] + "<br/>");
    strhtml.Append("鼠: " + arry[43] + "<br/>");
    strhtml.Append("猪: " + arry[44] + "<br/>");
    strhtml.Append("狗: " + arry[45] + "<br/>");
    strhtml.Append("鸡: " + arry[46] + "<br/>");
    strhtml.Append("猴: " + arry[47] + "<br/>");
    strhtml.Append("羊: " + arry[48] + "<br/>");
    strhtml.Append("马: " + arry[49] + "<br/>");
    strhtml.Append("蛇: " + arry[50] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>五行对照表</b><br/>");

    strhtml.Append("金: " + arry[25] + "<br/>");
    strhtml.Append("木: " + arry[26] + "<br/>");
    strhtml.Append("水: " + arry[27] + "<br/>");
    strhtml.Append("火: " + arry[28] + "<br/>");
    strhtml.Append("土: " + arry[29] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>家野对照表</b><br/>");

    strhtml.Append("家禽: " + arry[60] + "<br/>");
    strhtml.Append("野兽: " + arry[61] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>合数对照表</b><br/>");

    strhtml.Append("合单: " + arry[62] + "<br/>");
    strhtml.Append("合双: " + arry[63] + "<br/>");
    strhtml.Append("合大: " + arry[64] + "<br/>");
    strhtml.Append("合小: " + arry[65] + "<br/>");
    strhtml.Append("<br/>");

    //导航按钮
    strhtml.Append("--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //显示内容
    //strhtml.Append("<div class=\"title\">属性对照</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"a\"></a>波色对照表</div>");    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("红波号码: " + arry[30] + "<br/>");
    strhtml.Append("蓝波号码:" + arry[31] + "<br/>");
    strhtml.Append("绿波号码  " + arry[32] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"b\"></a>生肖对照表</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("龙: " + arry[39] + "<br/>");
    strhtml.Append("兔: " + arry[40] + "<br/>");
    strhtml.Append("虎: " + arry[41] + "<br/>");
    strhtml.Append("牛: " + arry[42] + "<br/>");
    strhtml.Append("鼠: " + arry[43] + "<br/>");
    strhtml.Append("猪: " + arry[44] + "<br/>");
    strhtml.Append("狗: " + arry[45] + "<br/>");
    strhtml.Append("鸡: " + arry[46] + "<br/>");
    strhtml.Append("猴: " + arry[47] + "<br/>");
    strhtml.Append("羊: " + arry[48] + "<br/>");
    strhtml.Append("马: " + arry[49] + "<br/>");
    strhtml.Append("蛇: " + arry[50] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"c\"></a>五行对照表</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("金: " + arry[25] + "<br/>");
    strhtml.Append("木: " + arry[26] + "<br/>");
    strhtml.Append("水: " + arry[27] + "<br/>");
    strhtml.Append("火: " + arry[28] + "<br/>");
    strhtml.Append("土: " + arry[29] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"d\"></a>家野对照表</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("家禽: " + arry[60] + "<br/>");
    strhtml.Append("野兽: " + arry[61] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"e\"></a>合数对照表</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("合单: " + arry[62] + "<br/>");
    strhtml.Append("合双: " + arry[63] + "<br/>");
    strhtml.Append("合大: " + arry[64] + "<br/>");
    strhtml.Append("合小: " + arry[65] + "<br/>");
    strhtml.Append("</div>");
   
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
