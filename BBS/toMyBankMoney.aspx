﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toMyBankMoney.aspx.cs" Inherits="KeLin.WebSite.bbs.toMyBankMoney" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("银行取款|银行取款|bank"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "CLOSE")
    {
        strhtml.Append("<b>站长关闭此功能！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
    else if (this.INFO == "MAX")
    {
        strhtml.Append("<b>金额不能小于1！</b><br/>");

    }
    else if (this.INFO == "NOBANKMONEY")
    {
        strhtml.Append("<b>银行存款不够:" + allmoney + "</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {
        strhtml.Append("<b>我的钱不够:" + tomoney + "</b><br/>");

    }

    if (this.INFO != "OK")
    {
        strhtml.Append("上次结息时间:"+userVo.myBankTime+"<br/>");
        strhtml.Append("我的存款:" + userVo.myBankMoney+"<br/>");
        strhtml.Append("我的活动" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money + "<br/>");
        strhtml.Append("--------<br/>");
        strhtml.Append("存款利(月)息:" + lvlmoney + "%<br/>");
        strhtml.Append("取款手续费:"+mainmoney+"%<br/>");

        strhtml.Append("--------<br/>");
        strhtml.Append("输入金额：<br/>");
        strhtml.Append("<input type=\"text\" name=\"tomoney" + r + "\" value=\"" + this.tomoney + "\"/><br/>");


        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/tomybankmoney.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");        ;
        strhtml.Append("<postfield name=\"tomoney\" value=\"$(tomoney" + r + ")\"/>");        
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        //strhtml.Append("</go>" + this.GetLang("确定存款|确定存款|确定存款") + "</anchor><br/><br/>");

        
            strhtml.Append("<anchor><go href=\"" + http_start + "bbs/tomybankmoney.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"sub\"/>");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");       
            strhtml.Append("<postfield name=\"tomoney\" value=\"$(tomoney" + r + ")\"/>");           
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("</go>" + this.GetLang("确定取款|确定取款|确定取款") + "</anchor><br/><br/>");
       

    }

    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    //strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    //strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

   strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("操作成功！|操作成功！|Successfully Update"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "CLOSE")
    {
        strhtml.Append("<b>站长关闭此功能！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
    else if (this.INFO == "MAX")
    {
        strhtml.Append("<b>金额不能小于1！</b><br/>");

    }
    else if (this.INFO == "NOBANKMONEY")
    {
        strhtml.Append("<b>银行存款不够:" + allmoney + "</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {
        strhtml.Append("<b>我的钱不够:" + tomoney + "</b><br/>");

    }
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("银行取款|银行取款|bank") + "</div>");
   
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"tip\">2022年5月公告：银行存款利率将于2023年1月1日起调至0%</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<div class=\"line1\">");     
        strhtml.Append("上次结息时间:" + userVo.myBankTime + "<br/>");
        strhtml.Append("我的银行存款:" + userVo.myBankMoney + "<br/>");
        strhtml.Append("我的活动" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money + "<br/>");
        strhtml.Append("存款月利率:" + lvlmoney + "%<br/>");
        strhtml.Append("取款手续费:" + mainmoney + "%<br/>");
        strhtml.Append("</div>");   
        strhtml.Append("<div class=\"line1\">");             
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/tomybankmoney.aspx\" method=\"post\">");        
        strhtml.Append("输入金额：<br/>");
        strhtml.Append("<input type=\"number\" style=\"width:70%\" min=\"100\" required=\"required\" class=\"txt\" name=\"tomoney\" value=\"" + this.tomoney + "\"/><br/>");       
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"type\" value=\"" + type + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");

        if (this.type != "1")
        {
            //strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
            strhtml.Append("存款通道已关闭");
            //strhtml.Append("<input type=\"submit\" class=\"btn\" name=\"g\" value=\"" + this.GetLang("确定存款|确定存款|确定存款") + "\" /><br/>");
        }
        else
        {
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"sub\"/>");
            strhtml.Append("<input type=\"submit\"class=\"btn\"  name=\"g\" value=\"" + this.GetLang("确定取款|确定取款|确定取款") + "\" /><br/>");
        }


        if (this.type != "1")
        {
            strhtml.Append("<br/><div class=\"content\"><a class=\"urlbtn\" href=\"" + this.http_start + "bbs/tomybankmoney.aspx?type=1&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">" + this.GetLang("取款操作|取款操作|取款操作") + "</a></div>");
        }
        else
        {
            //strhtml.Append("<br/><div class=\"content\"><a class=\"urlbtn\" href=\"" + this.http_start + "bbs/tomybankmoney.aspx?type=0&amp;siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">" + this.GetLang("存款操作|存款操作|存款操作") + "</a></div>");
        
        }
        
        
        strhtml.Append("</form>");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"tip\">由于取款必须设定手续费，已于2022年7月关闭存款入口。</div>");
        strhtml.Append("</div>");   

    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    //strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    //strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


