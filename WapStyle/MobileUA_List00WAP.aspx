<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA_List00WAP.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_List00WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("手机型号管理|手机型号管理|admin phone model"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">新增手机型号</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    Response.Write("状态：<select name=\"ischeck" + r + "\" value=\"" + this.ischeck + "\">");
    Response.Write("<option value=\"\">所有</option>");
    Response.Write("<option value=\"2\">有修改信息</option>");
    Response.Write("<option value=\"1\">未审核</option>");
    Response.Write("<option value=\"0\">已审核</option>");
    Response.Write("</select><br/>");
    Response.Write("手机型号(如:诺基亚 N73,输入N73):<br/>");
    Response.Write("<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"8\"/>");
    Response.Write("<anchor><go href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"class\" />");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"key\" value=\"$(key)\" />");
    Response.Write("<postfield name=\"ischeck\" value=\"$(ischeck"+r+")\" />");
    Response.Write("<postfield name=\"totype\" value=\"0\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    if (this.totype == "3")
    {
        Response.Write("按平台");
    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=3&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按平台</a>");
    }

    Response.Write("|");
    if (this.totype == "1")
    {
        Response.Write("按品牌");
    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;sid="+this.sid+"\">按品牌</a>");
    }

    Response.Write("|");

    if (this.totype == "2")
    {
        Response.Write("按屏幕");
        

    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=2&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按屏幕</a>");
    }
    Response.Write("|");
    if (this.totype == "0")
    {
        Response.Write("按列表");

    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按列表</a>");
    }

    Response.Write("<br/>");
    Response.Write("---------<br/>");
    if (totype == "0") Response.Write(linkTOP);
    //显示列表
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (this.totype == "1")//按品牌
        {

            Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;tonameen="+listVo[i].nameEN+"" + "\">");
            Response.Write(listVo[i].nameCN + "." + listVo[i].nameEN + "("+listVo[i].id+")");
            Response.Write("</a> ");
            if (i % 2 == 0) Response.Write("<br/>");
            
        }
        else if (this.totype == "2")//按屏幕
        {
            Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;towidthpx=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;toheightpx=" + listVo[i].nameEN + "" + "\">");
            Response.Write(listVo[i].nameCN + "x" + listVo[i].nameEN + "(" + listVo[i].id + ")");
            Response.Write("</a><br/>");


        }
        else if (this.totype == "3")//按平台
        {
            Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;toosystem=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "" + "\">");
            Response.Write(listVo[i].nameCN + "(" + listVo[i].id + ")");
            Response.Write("</a> ");
            if (i % 2 == 0) Response.Write("<br/>");


        }
        else
        {
            index = index + kk;
            Response.Write(index + ".");
            if (listVo[i].ischeck.ToString() == "1")
            {
                Response.Write("×[<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核</a>]");
            }
            else
            {
                Response.Write("√[<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取审</a>]");
            }
            Response.Write("[<a href=\"" + http_start + "wapstyle/mobileua_list00wap_del.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">删</a>]<a href=\"" + http_start + "wapstyle/mobileua_list00wap_mod.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">[修]");

            if (this.lang == "2")
            {
                Response.Write(listVo[i].nameEN + " ");
            }
            else
            {
                Response.Write(listVo[i].nameCN + " ");
            }

            Response.Write(listVo[i].Mode + "(" + listVo[i].widthpx + "×" + listVo[i].heightpx + ")</a><br/>");
            if (listVo[i].ismodify != null && listVo[i].ismodify != "")
            {
                Response.Write("<b>" + listVo[i].ismodify + "</b><br/>");
            }
        }
    }
    if (listVo == null)
    {
        Response.Write("查无记录！<br/>");
    }
    //显示导航分页
    if (totype == "0") Response.Write(linkURL);

   
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回上级管理</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("手机型号管理|手机型号管理|admin phone model") + "</div>");

    Response.Write("<div class=\"content\">");
    Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">新增手机型号</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx\" method=\"\">");
    Response.Write("状态：<select name=\"ischeck\">");
    Response.Write("<option value=\"" + ischeck + "\">" + ischeck + "</option>");
    Response.Write("<option value=\"\">所有</option>");
    Response.Write("<option value=\"2\">2_有修改信息</option>");
    Response.Write("<option value=\"1\">1_未审核</option>");
    Response.Write("<option value=\"0\">0_已审核</option>");
    Response.Write("</select><br/>");
    Response.Write("手机型号(如:诺基亚 N73,输入N73):<br/>");
    
    Response.Write("<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"15\"/>");    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"totype\" value=\"0\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    Response.Write("</form></div>");

    Response.Write("<div class=\"line1\">");
    if (this.totype == "3")
    {
        Response.Write("按平台");
    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=3&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按平台</a>");
    }
    Response.Write("|");
    if (this.totype == "1")
    {
        Response.Write("按品牌");
    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx?totype=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按品牌</a>");
    }

    Response.Write("|");

    if (this.totype == "2")
    {
        Response.Write("按屏幕");


    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx?totype=2&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按屏幕</a>");
    }
    Response.Write("|");
    if (this.totype == "0")
    {
        Response.Write("按列表");

    }
    else
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">按列表</a>");
    }

    Response.Write("</div>");
    if (totype == "0") Response.Write(linkTOP);
    //显示列表
    if (this.totype == "1")
    {
        Response.Write("<div class=\"content\">");
    }
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (this.totype != "1")
        {
            if (i % 2 == 0)
            {
                Response.Write("<div class=\"line1\">");
            }
            else
            {
                Response.Write("<div class=\"line2\">");
            }
        }
        if (this.totype == "1")//按品牌
        {

            Response.Write("<a href=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;tonameen=" + listVo[i].nameEN + "" + "\">");
            Response.Write(listVo[i].nameCN + "." + listVo[i].nameEN + "(" + listVo[i].id + ")");
            Response.Write("</a> ");
            if (i % 2 == 0) Response.Write("<br/>");
          
        }
        else if (this.totype == "2") //按屏幕
        {
            Response.Write("<a href=\"" + http_start + "wapstyle/mobileUA_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;towidthpx=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;toheightpx=" + listVo[i].nameEN + "" + "\">");
            Response.Write(listVo[i].nameCN + "x" + listVo[i].nameEN + "(" + listVo[i].id + ")");
            Response.Write("</a> ");


        }
        else if (this.totype == "3")//按平台
        {
            Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;toosystem=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "" + "\">");
            Response.Write(listVo[i].nameCN + "(" + listVo[i].id + ")");
            Response.Write("</a> ");
            if (i % 2 == 0) Response.Write("<br/>");


        }
            
        else
        {
            index = index + kk;
            Response.Write(index + ".");
            if (listVo[i].ischeck.ToString() == "1")
            {
                Response.Write("×[<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">审核</a>]");
            }
            else
            {
                Response.Write("√[<a href=\"" + this.http_start + "wapstyle/mobileua_list00wap.aspx?action=gocheck&amp;id=" + listVo[i].id + "&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">取审</a>]");
            }
            Response.Write("[<a href=\"" + http_start + "wapstyle/mobileua_list00wap_del.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">删</a>]<a href=\"" + http_start + "wapstyle/mobileua_list00wap_mod.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">[修]");

            if (this.lang == "2")
            {
                Response.Write(listVo[i].nameEN + " ");
            }
            else
            {
                Response.Write(listVo[i].nameCN + " ");
            }

            Response.Write(listVo[i].Mode + "(" + listVo[i].widthpx + "×" + listVo[i].heightpx + ")</a>");
            if (listVo[i].ismodify != null && listVo[i].ismodify != "")
            {
                Response.Write("<br/><b>" + listVo[i].ismodify + "</b><br/>");
            }
        }
        if (this.totype != "1")
        {
            Response.Write("</div>");
        }
    }
    if (this.totype == "1")
    {
        Response.Write("</div>");
    }
    if (listVo == null)
    {
        Response.Write("<div class=\"tip\">查无记录！</div>");
    }
    //显示导航分页
    if (totype == "0") Response.Write(linkURL);

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");

   

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回上级管理</a>");
     
    Response.Write("</div></div>");
    
    
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


