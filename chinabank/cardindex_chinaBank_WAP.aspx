<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cardindex_chinaBank_WAP.aspx.cs" Inherits="KeLin.WebSite.chinabank.cardindex_chinaBank_WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("我的网站情况|我的网站情况|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);


    Response.Write("我的网站情况：<br/>");
    Response.Write("网站期限："+siteVo.endTime+"<br/>");
    Response.Write("空间大小：" + siteVo.sitespace + " M<br/>");
    Response.Write("已使用：" + siteVo.myspace /1024 + " M ");
    Response.Write("<br/>----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "chinabank/bank_alipay.aspx?tositeid=" + this.siteid + "\">[1]支付宝在线充值</a><br/>");

    //Response.Write("<a href=\"" + this.http_start + "chinabank/bank_add_modify.asp?siteid=" + this.siteid + "\">[2]北京网银在线充值</a>");
    Response.Write("<br/>----------<br/>");
    Response.Write("我的充值记录");
    Response.Write("<br/>----------<br/>");
    Response.Write("说明:以上为WEB链接，建议你登录【<a href=\"" + this.http_start + "admin/login.aspx\">IE管理后台</a>】-&gt;【网站管理】-&gt;【充值我的网站】 中进行充值和查询！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("我的网站情况|我的网站情况|site setup") + "</div>");

    Response.Write("<div class=\"content\">");
    if (siteVo.endTime == DateTime.MinValue)
    {
        Response.Write("网站期限：无限期！<br/>");
    }
    else
    {
        Response.Write("网站期限：" + siteVo.endTime + "<br/>");
    }
    Response.Write("空间大小：" + siteVo.sitespace + " M<br/>");
    Response.Write("已使用：" + siteVo.myspace / 1024 + " M ");
    Response.Write("<br/>----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "chinabank/bank_alipay.aspx?tositeid=" + this.siteid + "\">[1]支付宝在线充值</a><br/>");

    //Response.Write("<a href=\"" + this.http_start + "chinabank/bank_add_modify.asp?siteid=" + this.siteid + "\">[2]北京网银在线充值</a>");
    Response.Write("<br/>----------<br/>");
    Response.Write("我的充值记录");
    Response.Write("<br/>----------<br/>");
    Response.Write("说明:以上为WEB链接，建议你登录【<a href=\"" + this.http_start + "admin/login.aspx\">IE管理后台</a>】-&gt;【网站管理】-&gt;【充值我的网站】 中进行充值和查询！<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


