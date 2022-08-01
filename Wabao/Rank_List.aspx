<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank_List.aspx.cs" Inherits="KeLin.WebSite.wabao.Rank_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title = "赢家排行";

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


   
        strhtml.Append("赢家排行");
    

    strhtml.Append("--------<br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {


        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")挖中" + listVo[i].rankTimes + "/共" + listVo[i].TimesTotal + "次");
       

        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
  

    //显示列表

    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else 
        {
            strhtml.Append("<div class=\"line2\">");
        }
       
        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")<span class=\"right\">挖中" + listVo[i].rankTimes + "/共"+listVo[i].TimesTotal+"次</span>");
        
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
