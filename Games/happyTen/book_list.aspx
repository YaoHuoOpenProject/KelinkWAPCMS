<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("历史开奖|历史开奖|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("年份:<input type=\"text\" name=\"toyears" + r + "\" size=\"4\" value=\"" + toyears + "\"/> ");
    strhtml.Append("期号:<input type=\"text\" name=\"content" + r + "\" size=\"4\" value=\"" + content + "\"/><br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/happyTen/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<postfield name=\"toyears\" value=\"$(toyears" + r + ")\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");




    strhtml.Append("<br/>--------<br/>");
    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        if (listVo[i].state == 0)
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">待开奖" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
        }
        else
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "-" + listVo[i].ball7 + "-"+ listVo[i].ball8 + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
        }
        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">历史开奖</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("</div>");

    }
    //显示输入框
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/happyTen/book_list.aspx\" method=\"get\">");
    strhtml.Append("年份:<input type=\"text\" name=\"toyears\" size=\"4\" value=\"" + toyears + "\"/> 期号:<input type=\"text\" name=\"content\" size=\"4\" value=\"" + content + "\"/><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"查询\"/></form> ");
  
 
    strhtml.Append("</div>");
    

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
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
        if (listVo[i].state == 0)
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">待开奖" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
        }
        else
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "-" + listVo[i].ball7 + "-"+ listVo[i].ball8 + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
        }
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
