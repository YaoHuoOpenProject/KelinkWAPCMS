<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZoneVistList.aspx.cs" Inherits="KeLin.WebSite.bbs.ZoneVistList" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
string msgbox = "";
if (this.type == "0")
{
    msgbox = "我看过谁|我看过谁|我看过谁";
}else if (this.type == "1")
{
    msgbox = "谁看过我|谁看过我|谁看过我";
}

                                                                                                                                                                               
                                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang(msgbox), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");

   
    
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    if (this.type == "0")
    {
        Response.Write("我看过谁");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/ZoneVistList.aspx?touserid=" + touserid + "&amp;type=0&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">我看过谁</a>");
    }
    Response.Write("|");
    if (this.type == "1")
    {
        Response.Write("谁看过我");
    }
    else
    {

        Response.Write("<a href=\"" + this.http_start + "bbs/ZoneVistList.aspx?touserid=" + touserid + "&amp;type=1&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">谁看过我</a>");

    }
    Response.Write("<br/>");
    Response.Write("会员ID:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/zonevistlist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"class\" />");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"key\" value=\"$(key)\" />");
    Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<postfield name=\"type\" value=\"" + (this.type) + "\" />");
    Response.Write("<postfield name=\"touserid\" value=\"" + (this.touserid) + "\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    
    
    Response.Write("---------<br/>");
    Response.Write(linkTOP);
    //显示列表
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        Response.Write(index + ".");
        if (this.type == "0")
        {
            listVo[i].userid = listVo[i].touserid;
            listVo[i].nickname = listVo[i].tonickname;
        }
        
        Response.Write("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/zonevistlist.aspx?touserid="+this.touserid+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;key=" + (key)) + "" + "\">" + listVo[i].nickname + "</a>");
        Response.Write("[<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=0&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/zonevistlist.aspx?touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type) + "" + "\">发信</a>]");
                
        Response.Write("<br/>(" + listVo[i].addtime + ")<br/>");
    }
    if (listVo == null)
    {
        Response.Write("没有" + this.GetLang(msgbox) + "<br/>");
    }
    //显示导航分页
    Response.Write(linkURL);


    
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
  
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang(msgbox) + "</div>");
    
    
    Response.Write("<div class=\"content\">");
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    if (this.type == "0")
    {
        Response.Write("我看过谁");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/ZoneVistList.aspx?touserid=" + touserid + "&amp;type=0&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">我看过谁</a>");
    }
    Response.Write("|");
    if (this.type == "1")
    {
        Response.Write("谁看过我");
    }
    else
    {

        Response.Write("<a href=\"" + this.http_start + "bbs/ZoneVistList.aspx?touserid=" + touserid + "&amp;type=1&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">谁看过我</a>");

    }
    Response.Write("<br/>");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/zonevistlist.aspx\" method=\"post\">");
    Response.Write("会员ID:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<input type=\"hidden\" name=\"type\" value=\"" + (this.type) + "\" />");
    Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + (this.touserid) + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
   
    Response.Write("</form></div>");
    Response.Write(linkTOP);
    //显示列表
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (i % 2 == 0)
        {
            Response.Write("<div class=\"line1\">");
        }
        else
        {
            Response.Write("<div class=\"line2\">");
        }
        Response.Write(index + ".");

        if (this.type == "0")
        {
            listVo[i].userid = listVo[i].touserid;
            listVo[i].nickname = listVo[i].tonickname;
        }

        Response.Write("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/zonevistlist.aspx?touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;key=" + (key)) + "" + "\">" + listVo[i].nickname + "</a>");
        Response.Write("[<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=0&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/zonevistlist.aspx?touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type) + "" + "\">发信</a>]");

        Response.Write("<br/>(" + listVo[i].addtime + ")</div>");
    }
    if (listVo == null)
    {
        Response.Write("<div class=\"tip\">没有" + this.GetLang(msgbox) + "</div>");
    }
    //显示导航分页
    Response.Write(linkURL);


    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    Response.Write("</div></div>");
    
    
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


