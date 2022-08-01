<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alipay_wap_callbackSP.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.alipay_wap_callbackSP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("商品支付结果|商品支付结果|pay info"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    Response.Write("订单号：" + this.out_trade_no + "<br/>");
    Response.Write("支付宝交易号：" + this.trade_no + "<br/>");
    Response.Write("付款总额：" + this.total_fee + "<br/>");
    Response.Write("交易状态：" + this.INFO + "<br/>");

    Response.Write("<br/><a href=\"" + this.http_start + "shop/orderlistmy.aspx?orderid=" + this.out_trade_no + "&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("商品支付结果|商品支付结果|pay info") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"content\">");
    Response.Write("订单号："+this.out_trade_no+"<br/>");
    Response.Write("支付宝交易号：" + this.trade_no + "<br/>");
    Response.Write("付款总额：" + this.total_fee + "<br/>");
    Response.Write("交易状态：" + this.INFO + "<br/>");
    Response.Write("</div>");
 
    
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?orderid=" + this.out_trade_no + "&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");

    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
