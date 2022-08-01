<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cardindex_chinaBank_WAP.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.cardindex_chinaBank_WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("本站会员充值设置|本站会员充值设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);


    Response.Write("本站会员向我充值：<br/>");
    Response.Write("[1]支付宝配置接口(WAP支付，手机网银)<br/>");
    Response.Write("●合作者身份:" + this.id1 + "<br/>");
    Response.Write("●安全校验码:" + this.key1 + "<br/>");
    Response.Write("●我的支付宝:" + this.emal1 + "<br/>");
    Response.Write("●状态:" + this.isclose1 + "<br/>");
    Response.Write("----------<br/>");
    Response.Write("[0]易宝支付配置接口(各类卡支付)<br/>");
    Response.Write("●商户编号:" + this.id0 + "<br/>");
    Response.Write("●密钥:" + this.key0 + "<br/>");
    Response.Write("●状态:" + this.isclose0 + "<br/>");
    Response.Write("----------<br/>");
    Response.Write("[3]手工转帐汇款配置接口<br/>");
    Response.Write("●说明:" + this.remark3 + "<br/>");
    Response.Write("●状态:" + this.isclose3 + "<br/>");

    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/cardindex_chinabank_wap.aspx?siteid=" + this.siteid) + "" + "\">本站会员充值记录</a>");
    Response.Write("<br/>----------<br/>");
    Response.Write("说明:为了安全及申请第三方接口，需要你登录【<a href=\"" + this.http_start + "admin/login.aspx\">IE管理后台</a>】-&gt;【网站管理】-&gt;【会员充值设置】 中进行配置和查询！有详细的指引！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("本站会员向我充值|本站会员向我充值|site setup") + "</div>");

    Response.Write("<div class=\"content\">");

    Response.Write("[1]支付宝配置接口(WAP支付，手机网银)<br/>");
    Response.Write("●合作者身份:" + this.id1 + "<br/>");
    Response.Write("●安全校验码:" + this.key1 + "<br/>");
    Response.Write("●我的支付宝:" + this.emal1 + "<br/>");
    Response.Write("●状态:" + this.isclose1 + "<br/>");
    Response.Write("----------<br/>");
    Response.Write("[0]易宝支付配置接口(各类卡支付)<br/>");
    Response.Write("●商户编号:" + this.id0 + "<br/>");
    Response.Write("●密钥:" + this.key0 + "<br/>");
    Response.Write("●状态:" + this.isclose0 + "<br/>");
    Response.Write("----------<br/>");
    Response.Write("[3]手工转帐汇款配置接口<br/>");
    Response.Write("●说明:" + this.remark3 + "<br/>");
    Response.Write("●状态:" + this.isclose3 + "<br/>");
    
    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/cardindex_chinabank_wap.aspx?siteid=" + this.siteid) + "" + "\">本站会员充值记录</a>");
    Response.Write("<br/>----------<br/>");
    Response.Write("说明:为了安全及申请第三方接口，需要你登录【<a href=\"" + this.http_start + "admin/login.aspx\">IE管理后台</a>】-&gt;【网站管理】-&gt;【会员充值设置】 中进行配置和查询！有详细的指引！<br/>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


