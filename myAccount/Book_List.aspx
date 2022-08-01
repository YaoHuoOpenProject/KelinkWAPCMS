<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.myAccount.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    strhtml.Append("开始时间:<input type=\"text\" name=\"starttime" + r + "\" value=\"" + starttime + "\" size=\"8\"/>("+format+")<br/>");
    strhtml.Append("结束时间:<input type=\"text\" name=\"endtime" + r + "\" value=\"" + endtime + "\" size=\"8\"/>(" + format + ")<br/>");
    strhtml.Append("备注:<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");    
    strhtml.Append("<anchor><go href=\"" + http_start + "myaccount/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"totype\" value=\"$(totype" + r + ")\" />");
    strhtml.Append("<postfield name=\"starttime\" value=\"$(starttime" + r + ")\" />");
    strhtml.Append("<postfield name=\"endtime\" value=\"$(endtime" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    if (this.totype == "")
    {
        strhtml.Append("所有/");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=\">所有</a>/");
    }
    if (this.totype == "1")
    {
        strhtml.Append("收入/");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1\">收入</a>/");
    }
    if (this.totype == "0")
    {
        strhtml.Append("支出");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0\">支出</a>");
    }
    strhtml.Append("/<b>￥:" + this.sum.ToString("f2") + "</b>");
    
    strhtml.Append("<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "\">添加我的帐单</a><br/>");


   
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        strhtml.Append(index + "." + listVo[i].payTime + " " + getTypeName(listVo[i].toType) + ":" + listVo[i].money.ToString("f2"));
        strhtml.Append("<br/>备注:"+listVo[i].remark);
        strhtml.Append("<br/>[" + string.Format("{0:MM-dd HH:mm}", listVo[i].addTime) + "<a href=\"" + this.http_start + "myaccount/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;totype=" + this.totype + "&amp;starttime=" + this.starttime + "&amp;endtime=" + this.endtime + "&amp;key=" + HttpUtility.UrlEncode(this.key) + "" + "\">删除</a>]");
        strhtml.Append("<br/>--------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
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



    strhtml.Append("<div class=\"subtitle\">"+classVo.classname+"</div>");

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "myaccount/book_list.aspx\" method=\"get\">");
        strhtml.Append("开始时间:<input type=\"text\" name=\"starttime\" value=\"" + this.starttime + "\" size=\"8\"/>(" + format + ")<br/>");
        strhtml.Append("结束时间:<input type=\"text\" name=\"endtime\" value=\"" + this.endtime + "\" size=\"8\"/>(" + format + ")<br/>");    
        strhtml.Append("备注:<input type=\"text\" name=\"key\" value=\"" + this.key + "\" size=\"5\"/><br/>");       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"totype\" value=\"" + this.totype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" class=\"btn\" value=\"搜索\" />");
        strhtml.Append("</form><br/>");
        if (this.totype == "")
        {
            strhtml.Append("所有/");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=\">所有</a>/");
        }
        if (this.totype == "1")
        {
            strhtml.Append("收入/");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1\">收入</a>/");
        }
        if (this.totype == "0")
        {
            strhtml.Append("支出");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0\">支出</a>");
        }
        strhtml.Append("/<b>￥:" + this.sum.ToString("f2") + "</b>");
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "\">添加我的帐单</a>");
      
        strhtml.Append("</div>");

    
    //显示列表
    strhtml.Append(linkTOP);
   
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

        strhtml.Append(index + "." + listVo[i].payTime + " " + getTypeName(listVo[i].toType) + ":" + listVo[i].money.ToString("f2"));
        strhtml.Append("<br/>备注:"+listVo[i].remark);
        strhtml.Append("<br/>[" + string.Format("{0:MM-dd HH:mm}", listVo[i].addTime) + "<a href=\"" + this.http_start + "myaccount/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;totype=" + this.totype + "&amp;starttime=" + this.starttime + "&amp;endtime=" + this.endtime + "&amp;key=" + HttpUtility.UrlEncode(this.key) + "" + "\">删除</a>]");
        
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"content\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>");
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
