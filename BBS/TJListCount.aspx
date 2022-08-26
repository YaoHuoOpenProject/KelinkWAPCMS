<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TJListCount.aspx.cs" Inherits="KeLin.WebSite.bbs.TJListCount" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
string msgbox = "";
msgbox = "查询推荐人|查询推荐人|查询推荐人";
                                                                                                                                                                             
                                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang(msgbox), wmlVo));//显示头                                                                                                                                                                       



    Response.Write("<div class=\"subtitle\">" + this.GetLang(msgbox) + "</div>");
    
    
    
    Response.Write("<div class=\"line\">");
  
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/tjlistcount.aspx\" method=\"get\">");
    Response.Write("网站ID:<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/>");
    Response.Write("推荐人ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>");    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");   
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("<input type=\"submit\"  value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    
    
    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt5\">");
    
    
    Response.Write("<a ");
    if (totime == "0")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlistcount.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=0&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">全部</a>");

    Response.Write("<a ");
    if (totime == "1")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlistcount.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=1&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">日榜</a>");
    Response.Write("<a ");
    if (totime == "2")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlistcount.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=2&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">周榜</a>");

    Response.Write("<a ");
    if (totime == "3")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlistcount.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=3&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">月榜</a>");
    Response.Write("<a ");
    if (totime == "4")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlistcount.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=4&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">季榜</a>");

    
    
    
    Response.Write("</div>");
    
    Response.Write(html);
    //显示列表
   
    //显示导航分页
    Response.Write(linkURL);


    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/shareSite.aspx?siteid=" + this.siteid + "" + "\">返回上级</a> ");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    Response.Write("</div></div>");
    
    
                                                                                                                                                                           





                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


