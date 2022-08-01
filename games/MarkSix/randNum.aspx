<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="randNum.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.randNum" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("对照表", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>随机为您选号</b><br/>");

    strhtml.Append("平: " + ball1 + "-" + ball2 + "-" + ball3 + "-" + ball4 + "-" + ball5 + "-" + ball6 + "<br/>");
    strhtml.Append("特:" + ballTM + "<br/>");
    strhtml.Append("~电脑选号,仅供参与~<br/>");
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

   
    //显示内容
    
    strhtml.Append("<div class=\"subtitle\">随机为您选号</div>");    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("平: " + ball1 + "-" + ball2 + "-" + ball3 + "-" + ball4 + "-" + ball5 + "-" + ball6 +  "<br/>");
    strhtml.Append("特:" + ballTM  + "<br/>");
    strhtml.Append("~电脑选号,仅供参与~<br/>");
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
