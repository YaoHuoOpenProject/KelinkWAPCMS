<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderINFO.aspx.cs" Inherits="KeLin.WebSite.shop.orderINFO" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("详细信息|详细信息|详细信息"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");

    Response.Write("<b>订单编号：</b>" + orderVo.orderID + "<br/>");
    Response.Write("<b>订单状态:</b>");
    if (orderVo.state == 3)
    {
        Response.Write("已发货未签收");
    }
    else if (orderVo.state == 2)
    {
        Response.Write("已发货已签收");
    }
    else if (orderVo.state == 1)
    {
        Response.Write("已确认已发货");
    }
    else
    {
        Response.Write("未确认未发货");
    }
    Response.Write("<br/>");
    Response.Write("<b>下订时间：</b>" + orderVo.orderdate + "<br/>");
    Response.Write("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + orderVo.nickname + "(" + orderVo.userid + ")</a><br/>");
    Response.Write("<b>商品列表：</b><br/>" + WapTool.ToWML (orderVo.productname,wmlVo ) + "");
    //Response.Write("<b>商品型号：</b>" + orderVo.productxinghao  + "<br/>");
    //Response.Write("<b>商品数量：</b>" + orderVo.productcount + "<br/>");
    //Response.Write("<b>商品单价：</b>￥" + orderVo.productjiage.ToString("f2") + "<br/>");
    Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");
    Response.Write("<b>总价：</b>￥" + orderVo.productmoney.ToString("f2") + "<br/>");
    if (orderVo.payState == "1")
    {
        Response.Write("<b>在线支付：</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + orderVo.orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">已支付</a><br/>");
        Response.Write("<b>支付时间：</b>" + orderVo.payTime + "<br/>");
    }
    else
    {
        Response.Write("<b>在线支付：</b>未支付<br/>");
    }

    if (this.userid == "0")
    {
        orderVo.remark = "当前游客身份，信息保密。";
        orderVo.book_reply = "当前游客身份，信息保密，请联系客服。";
        orderVo.nickname = "保密";
        orderVo.mobile = "保密";
    }
    Response.Write("--------<br/>");
    Response.Write("<b>姓名：</b>" + orderVo.nickname  + "<br/>");
    Response.Write("<b>联系电话：</b>" + orderVo.mobile + "<br/>");
    
    Response.Write("<b>收件地址：</b>" + WapTool.ToWML(orderVo.remark , wmlVo) + "<br/>");
    Response.Write("--------<br/>");
    Response.Write("<b>送货跟踪：</b>" + WapTool.ToWML(orderVo.book_reply, wmlVo) + "<br/>");
    
    Response.Write("<br/>");



    Response.Write("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;page="+this.page +"&amp;state="+this.sate +"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("货到付款说明|货到付款说明|货到付款说明") + "</div>");


    Response.Write("<div class=\"content\">");


    Response.Write("<b>订单编号：</b>" + orderVo.orderID + "<br/>");
    Response.Write("<b>订单状态:</b>");


    Response.Write("<br/>状态:<font color=\"red\">");
    if (order_types == "0")
    {
        if (orderVo.state == 4)
        {
            Response.Write("已确认未发货");
        }
        else if (orderVo.state == 3)
        {
            Response.Write("已发货未签收");
        }
        else if (orderVo.state == 2)
        {
            Response.Write("已发货已签收");
        }
        else if (orderVo.state == 1)
        {
            Response.Write("已确认已发货");
        }
        else
        {
            Response.Write("未确认未发货");
        }
    }
    else
    {

        if (orderVo.state == 0)
        {
            Response.Write("待付款");
           
        }
        else if (orderVo.state == 11)
        {
            Response.Write("已付款待发货");

        }
        else if (orderVo.state == 12)
        {
            Response.Write("已发货待收货");
           
        }
        else if (orderVo.state == 13)
        {
            Response.Write("交易成功");
        }
        else if (orderVo.state == 14)
        {
            Response.Write("交易关闭");
        }
        else if (orderVo.state == 15)
        {
            Response.Write("退款中");
            
        }


    }
    
    
    Response.Write("<br/>");
    Response.Write("<b>下订时间：</b>" + orderVo.orderdate + "<br/>");    
    Response.Write("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + orderVo.nickname + "(" + orderVo.userid + ")</a><br/>");
    Response.Write("<b>商品列表：</b><br/>" + WapTool.ToWML (orderVo.productname ,wmlVo)+ "");
    //Response.Write("<b>商品型号：</b>" + orderVo.productxinghao + "<br/>");
    //Response.Write("<b>商品数量：</b>" + orderVo.productcount + "<br/>");
    //Response.Write("<b>商品单价：</b>￥" + orderVo.productjiage.ToString("f2") + "<br/>");
    Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");
    Response.Write("<b>订单总价：</b>￥" + orderVo.productmoney.ToString("f2") + "<br/>");
    if (orderVo.payState == "1")
    {
        Response.Write("<b>在线支付：</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + orderVo.orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">已支付</a><br/>");
        Response.Write("<b>支付时间：</b>" + orderVo.payTime + "<br/>");
    }
    else
    {
        Response.Write("<b>在线支付：</b>未支付<br/>");
    }

    if (this.userid == "0")
    {
        orderVo.remark = "当前游客身份，信息保密。";
        orderVo.book_reply = "当前游客身份，信息保密，请联系客服。";
        orderVo.nickname = "保密";
        orderVo.mobile = "保密";
    }
    Response.Write("--------<br/>");
    Response.Write("<b>姓名：</b>" + orderVo.nickname + "<br/>");
    Response.Write("<b>联系电话：</b>" + orderVo.mobile + "<br/>");
    Response.Write("<b>收件地址：</b>" + WapTool.ToWML(orderVo.remark, wmlVo) + "<br/>");
    Response.Write("--------<br/>");
    Response.Write("<b>送货跟踪：</b>" + WapTool.ToWML(orderVo.book_reply, wmlVo) + "<br/>");
    

    
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;page=" + this.page + "&amp;state=" + this.sate + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
   
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


