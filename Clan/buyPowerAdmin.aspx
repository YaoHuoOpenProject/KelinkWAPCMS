<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyPowerAdmin.aspx.cs" Inherits="KeLin.WebSite.clan.buyPowerAdmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop("购买成员数", wmlVo));//显示头                                                                                                                                                                       
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
    else if (this.INFO == "PWERR")
    {
        strhtml.Append("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
    else if (this.INFO == "NOTUSER")
    {
        strhtml.Append("<b>用户不存！</b><br/>");

    }

    else if (this.INFO == "NOTMONEY")
    {
        strhtml.Append("<b>家族基金只有" + bookVo.clan_money + "！不够呢。至少要" + STATE * bookVo.clan_memberCount + "</b><br/>");

    }
    else if (this.INFO == "MAXMONEY")
    {
        strhtml.Append("<b>每次不能大于￥:1000.00！</b><br/>");

    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }

    if (this.INFO != "OK" && this.INFO!="CLOSE")
    {
        strhtml.Append("当前成员数 " + bookVo.clan_memberCount + " 个<br/>");
        strhtml.Append("当前家族基金：" + bookVo.clan_money + " 个<br/>");
        strhtml.Append("<b>每增加一个能量 = " + STATE + " 个"+siteVo.sitemoneyname+"</b><br/>");
        strhtml.Append("购买总能量后平均分配给每个成员。<br/>");
        strhtml.Append("输入" + siteVo.sitemoneyname + "：<br/>");
        strhtml.Append("<input type=\"text\" name=\"tomoney" + r + "\" value=\"" + this.tomoney + "\"/><br/>");

        strhtml.Append("我的密码：<br/>");
        strhtml.Append("<input type=\"text\" name=\"changePW" + r + "\" value=\"\"/><br/>");


        strhtml.Append("<anchor><go href=\"" + http_start + "clan/buypoweradmin.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
        strhtml.Append("<postfield name=\"tomoney\" value=\"$(tomoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"changePW\" value=\"$(changePW" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("确定|确定|submit") + "</anchor><br/><br/>");

        

    }

    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">购买能量</div>");
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
    else if (this.INFO == "PWERR")
    {
        strhtml.Append("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
    else if (this.INFO == "NOTUSER")
    {
        strhtml.Append("<b>用户不存！</b><br/>");

    }

    else if (this.INFO == "NOTMONEY")
    {
        strhtml.Append("<b>家族基金只有" + bookVo.clan_money + "！不够呢。至少要" + STATE * bookVo.clan_memberCount + "</b><br/>");

    }
    else if (this.INFO == "MAXMONEY")
    {
        strhtml.Append("<b>每次不能大于￥:1000.00！</b><br/>");

    }
    strhtml.Append("</div>");
    if (this.INFO != "OK" && this.INFO != "CLOSE")
    {
        strhtml.Append("<div class=\"content\">");



        strhtml.Append("<form name=\"f\" action=\"" + http_start + "clan/buypoweradmin.aspx\" method=\"post\">");

        strhtml.Append("当前成员数 " + bookVo.clan_memberCount + " 个<br/>");
        strhtml.Append("当前家族基金：" + bookVo.clan_money + " 个<br/>");
        strhtml.Append("<b>每增加一个能量 = " + STATE + " 个" + siteVo.sitemoneyname + "</b><br/>");
        strhtml.Append("购买总能量后平均分配给每个成员。<br/>");
        
        strhtml.Append("输入" + siteVo.sitemoneyname + "：<br/>");
        strhtml.Append("<input type=\"text\" name=\"tomoney\" value=\"" + this.tomoney + "\"/><br/>");


        strhtml.Append("我的密码：<br/>");
        strhtml.Append("<input type=\"text\" name=\"changePW\" value=\"\"/><br/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");
       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"submit\"  name=\"g\" value=\"" + this.GetLang("确定|确定|submit") + "\" /><br/>");
       

        strhtml.Append("</form>");
        strhtml.Append("</div>");

    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
   
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
      
    strhtml.Append("</div></div>");
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


