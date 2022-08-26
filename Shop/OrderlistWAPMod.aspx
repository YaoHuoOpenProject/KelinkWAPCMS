<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="orderlistWAPMod.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistWAPMod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("处理订单|处理订单|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("处理成功！|处理成功！|Successfully modified"));
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("回复不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "MAX")
    {
        Response.Write("<b>");
        Response.Write("短信内容只能70个汉字或140个英文，当前长度为：" + WapTool.CalStringLength(book_sms));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "MONEYERR")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("价格格式错误！|价格格式错误！|money Err!"));
        Response.Write("</b><br/>");

    }
    Response.Write("订单号:"+bookVo.orderID+"<br/>");
    Response.Write("状态：<select name=\"state" + r + "\" value=\"" + bookVo.state + "\">");
    if (order_types == "0")
    {
        Response.Write("<option value=\"0\">0_未确认未发货</option>");
        Response.Write("<option value=\"4\">4_已确认未发货*</option>");
        Response.Write("<option value=\"1\">1_已确认已发货</option>");
        Response.Write("<option value=\"2\">2_已发货已签收</option>");
        Response.Write("<option value=\"3\">3_已发货未签收</option>");
    }
    else
    {
        Response.Write("<option value=\"0\">0_等待买家付款</option>");
        Response.Write("<option value=\"11\">11_买家已付款</option>");
        Response.Write("<option value=\"12\">12_卖家已发货</option>");
        Response.Write("<option value=\"13\">13_交易成功</option>");
        Response.Write("<option value=\"14\">14_交易关闭</option>");
        Response.Write("<option value=\"15\">15_退款中</option>");

    }
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("修改价格|修改价格|Content") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"productmoney" + r + "\" value=\"" + bookVo.productmoney.ToString("f2") + "\" /><br/>");
    Response.Write(this.GetLang("店长回复|店长回复|Content") + "(录入送货订单等信息):<br/>");
    Response.Write("<input type=\"text\"  name=\"book_reply" + r + "\" value=\"" + bookVo.book_reply + "\" /><br/>");
    Response.Write("是否向客户(手机号码:" + this.mobile + ")发短信:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_sms" + r + "\" value=\"" + book_sms + "\" /><br/>");
    Response.Write("(不发送留空)<br/>");
    Response.Write("<anchor><go href=\""+http_start+"shop/orderlistWAPmod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"productmoney\" value=\"$(productmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"state\" value=\"$(state" + r + ")\"/>");
    Response.Write("<postfield name=\"book_reply\" value=\"$(book_reply" + r + ")\"/>");
    Response.Write("<postfield name=\"book_sms\" value=\"$(book_sms" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("确定|确定|submit") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("处理操作|处理操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (sHtmlText != "")
    {
        Response.Write("向支付宝服务器发送“确认发货”信号：" + sHtmlText + "<br/><br/>");

    }
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("处理成功！|处理成功！|Successfully modified"));
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("回复不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "MONEYERR")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("价格格式错误！|价格格式错误！|money Err!"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "MAX")
    {
        Response.Write("<b>");
        Response.Write("短信内容只能70个汉字或140个英文，当前长度为：" + WapTool.CalStringLength(book_sms));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "shop/orderlistWAPmod.aspx\" method=\"post\">");
    Response.Write("订单号:" + bookVo.orderID + "<br/>");
    Response.Write("状态：<select name=\"state\">");
    Response.Write("<option value=\"" + bookVo.state + "\">" + bookVo.state + "</option>");
    if(order_types =="0"){
    Response.Write("<option value=\"0\">0_未确认未发货</option>");
    Response.Write("<option value=\"4\">4_已确认未发货*</option>");
    Response.Write("<option value=\"1\">1_已确认已发货</option>");
    Response.Write("<option value=\"2\">2_已发货已签收</option>");
    Response.Write("<option value=\"3\">3_已发货未签收</option>");
    }
    else
    {
        Response.Write("<option value=\"0\">0_等待买家付款</option>");
        Response.Write("<option value=\"11\">11_买家已付款</option>");
        Response.Write("<option value=\"12\">12_卖家已发货</option>");
        Response.Write("<option value=\"13\">13_交易成功</option>");
        Response.Write("<option value=\"14\">14_交易关闭</option>");
        Response.Write("<option value=\"15\">15_退款中</option>");

    }
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("修改价格|修改价格|Content") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"productmoney\" value=\"" + bookVo.productmoney.ToString("f2") + "\" /><br/>");
    Response.Write(this.GetLang("店长回复|店长內容|reply") + "(录入送货订单等信息):<br/>");
    Response.Write("<textarea name=\"book_reply\" rows=\"3\" style=\"width:100%\">" + bookVo.book_reply + "</textarea><br/>");
    Response.Write("是否向客户(手机号码:"+this.mobile+")发短信:<br/>");
    Response.Write("<textarea name=\"book_sms\" rows=\"3\" style=\"width:100%\">" + book_sms + "</textarea><br/>");
    Response.Write("(不发送留空)<br/>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|确 定|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


