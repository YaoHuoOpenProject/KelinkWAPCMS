<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="app.aspx.cs" Inherits="KeLin.WebSite.clan.app" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("家族基金应用", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
  
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


    strhtml.Append("目前有以下应用:<br/>");

    strhtml.Append("1.<a href=\"" + this.http_start + "clan/buymember.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">购买最大成员人数</a><br/>");
    strhtml.Append("2.<a href=\"" + this.http_start + "clan/buypoweradmin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">购买能量分给成员</a><br/>");
   
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");

   
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{


 

    

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示内容
    strhtml.Append("<div class=\"subtitle\">家族基金应用</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("目前有以下应用:<br/>");

    strhtml.Append("1.<a href=\"" + this.http_start + "clan/buymember.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">购买最大成员人数</a><br/>");
    strhtml.Append("2.<a href=\"" + this.http_start + "clan/buypoweradmin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">购买能量分给成员</a><br/>");
   
    
    strhtml.Append("</div>");
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");

  
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append("</div></div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }

   
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
