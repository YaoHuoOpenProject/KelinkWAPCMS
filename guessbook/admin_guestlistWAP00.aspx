<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAP00.aspx.cs" Inherits="KeLin.WebSite.guessbook.admin_guestlistWAP00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("留言评论审核|留言评论审核|Check Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + "guessbook/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "\">内容审核</a>.评论审核<br/>");
    
    strhtml.Append("<b>" + classVo.classname + "</b><br/>");

    strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid" + r + "\" value=\"" + this.tositeid + "\" size=\"5\"/><br/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid"+r+"\" value=\"" + classid + "\" size=\"5\"/><br/>");
    
    strhtml.Append("状态：<select name=\"ischeck"+r+"\" value=\""+this.ischeck+"\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">未审核</option>");
    strhtml.Append("<option value=\"0\">已审核</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "guessbook/admin_guestlistWAP00.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key"+r+")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid"+r+")\" />");
    strhtml.Append("<postfield name=\"ischeck\" value=\"$(ischeck"+r+")\" />");
    strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    //显示列表
    strhtml.Append(this.linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        if (listVo[i].ischeck.ToString() == "1")
        {
            YesOrNo = "×";
            CheckStr = "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid="+this.tositeid+"&amp;page=" + this.CurrentPage + "\">审核</a>]";
        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid="+this.tositeid+"&amp;page=" + this.CurrentPage + "\">取审</a>]";
        }
        strhtml.Append(index + "." + YesOrNo + "[" + this.tositeid + "]" + CheckStr + "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAPdel00.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">删</a>]<a href=\"" + this.http_start + "bbs/userinfo.aspx?action=class&amp;siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "" + "\">" + listVo[i].nickname + "</a>:" + listVo[i].content + "<br/>(" + listVo[i].redate + ")<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid="+sid+"&amp;siteid="+siteid +"\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");


    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "guessbook/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "\">内容审核</a>.评论审核<br/>");
    
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "guessbook/admin_userlistWAP00.aspx\" method=\"post\">");
    strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/> ");
    

    strhtml.Append("状态：<select name=\"ischeck\" value=\"" + this.ischeck + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">未审核</option>");
    strhtml.Append("<option value=\"0\">已审核</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("栏目ID：<input type=\"text\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/> ");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");
    strhtml.Append("<div class=\"tip\"><a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a></div>");

    //显示列表
    strhtml.Append(this.linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        if (listVo[i].ischeck.ToString() == "1")
        {
            YesOrNo = "×";
            CheckStr = "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">审核</a>]";
        }
        else
        {
            YesOrNo = "√";
            CheckStr = "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAP00.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">弃审</a>]";
        }
        strhtml.Append(index + "." + YesOrNo + "[" + this.tositeid + "]" + CheckStr + "[<a href=\"" + this.http_start + "guessbook/admin_guestlistWAPdel00.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">删</a>]<a href=\"" + this.http_start + "bbs/userinfo.aspx?action=class&amp;siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "" + "\">" + listVo[i].nickname + "</a>:" + listVo[i].content + "<br/>(" + listVo[i].redate + ")</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
