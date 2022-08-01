<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onList.aspx.cs" Inherits="KeLin.WebSite.bbs.onList" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + this.GetLang("在线人数:|在线人数:|online:")+this.total, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


   
    //显示列表

    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a>" + listVo[i].classname + "" + "<br/>");
        strhtml.Append("[" + string.Format("{0:MM-dd HH:mm}", listVo[i].ftime) + " " + this.getShowIP(listVo[i].fip) + "]<br/>----------<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/onlist.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0" + "\">本站所有在线人</a><br/>");
        
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>" + classVo.classname + "在线人数:" + this.total + "</b>");
    strhtml.Append("</div>");

    //显示列表


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

        strhtml.Append(index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a>" + listVo[i].classname + "" + "<br/>");
        strhtml.Append("[" + string.Format("{0:MM-dd HH:mm}", listVo[i].ftime) + " " + this.getShowIP(listVo[i].fip) + "]");
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/onlist.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0" + "\">本站所有在线人</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
