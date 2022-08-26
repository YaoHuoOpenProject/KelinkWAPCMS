<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toMedalView.aspx.cs" Inherits="KeLin.WebSite.bbs.toMedalView" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    Response.Write(WapTool.showTop(this.GetLang("奖励会员勋章设置|奖励会员勋章设置|Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");

    int facesmall = int.Parse(this.GetRequestValue("facesmall"));
    int facebig = int.Parse(this.GetRequestValue("facebig"));
  
        for (int i = facesmall; i <= facebig; i++)
        {

            Response.Write("<img src=\"" + http_start + "bbs/medal/" + i + ".gif\" alt=\"" + i + ".gif\"/>[" + i + ".gif] ");
        }

  
    

    Response.Write("<br/>");

    //显示导航分页
    //Response.Write( linkURL );


   
    Response.Write("<a href=\"" + this.http_start + "bbs/toMedal.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + "奖励会员勋章设置" + "</div>");
    
    Response.Write("<div class=\"content\">");
    int facesmall = int.Parse(this.GetRequestValue("facesmall"));
    int facebig = int.Parse(this.GetRequestValue("facebig"));

    for (int i = facesmall; i <= facebig; i++)
    {

        Response.Write("<img src=\"" + http_start + "bbs/medal/" + i + ".gif\" alt=\"" + i + ".gif\"/>[" + i + ".gif] ");
    }

  
    
   
    Response.Write("</div>");
    
    //显示导航分页
    //Response.Write( linkURL );


    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/toMedal.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  
    Response.Write("</div></div>");
                                                                                                     
}
                                                                                                                                                                       
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
