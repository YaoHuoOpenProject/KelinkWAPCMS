<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cash_On_Delivery.aspx.cs" Inherits="KeLin.WebSite.shop.Cash_On_Delivery" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("货到付款|货到付款|货到付款"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    
    if (this.INFO == "" && this.IsCheckManagerLvl("|00|01|03|",classVo.adminusername)==true  ) Response.Write("请管理员到：[站长后台]→[添加删除栏目]→[商店栏目]→[栏目配置]如录入货到付款说明，有例子说明。");
    
    Response.Write(WapTool.ToWML(this.INFO, wmlVo) + "<br/>--------<br/>");

    Response.Write("<b>订单编号：</b>" + orderVo.orderID + "<br/>");
    Response.Write("<b>下订时间：</b>" + orderVo.orderdate + "<br/>");
    Response.Write("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + orderVo.nickname + "(" + orderVo.userid + ")</a><br/>");


    Response.Write("<b>&gt;&gt;订购商品列表:</b><br/>");
    long allcount = 0;
    decimal allmoney = 0;
    for (int i = 0; (this.bycarlistVo != null && i < bycarlistVo.Count); i++)
    {

        if (bycarlistVo[i].book_smallimg != "")
        {
            Response.Write("<img src=\"" + this.http_start + "shop/" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/>");
        }
        Response.Write(WapTool.ToWML(bycarlistVo[i].productname, wmlVo) + "(" + bycarlistVo[i].book_xinghao + ")<br/>");
        Response.Write("超低特价:" + bycarlistVo[i].book_yhjiage.ToString("f2") + "元" + "<br/>");
        Response.Write("商品数量:" + bycarlistVo[i].productcount + " " + "<br/>");
        Response.Write("----------<br/>");
        allcount = allcount + bycarlistVo[i].productcount;
        allmoney = allmoney + bycarlistVo[i].book_yhjiage * bycarlistVo[i].productcount;


    }
    if (allcount > 0)
    {
        Response.Write("<b>&gt;&gt;订单总计金额:</b><br/>");
        Response.Write("货款总价:" + allmoney.ToString("f2") + "元<br/>");
        Response.Write("商品数量:" + allcount + "<br/>");
        Response.Write("----------<br/>");
        this.num = allcount.ToString();
    }


    if (allcount == 0)
    {

        Response.Write("<b>商品列表：</b><br/>--------<br/>" + WapTool.ToWML(orderVo.productname, wmlVo) + "");
        //Response.Write("<b>商品型号：</b>" + orderVo.productxinghao + "<br/>");
        //Response.Write("<b>商品数量：</b>" + orderVo.productcount + "<br/>");
        //Response.Write("<b>商品单价：</b>￥" + orderVo.productjiage.ToString("f2") + "<br/>");
        Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");

        Response.Write("<b>订单总价：</b>￥" + orderVo.productmoney.ToString("f2") + "<br/>");
    }
    else
    {
        Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");


    }
    //保留半小时
    string end = DateTime.Now.ToString("yyyyMMddhhmm");
    string start = orderVo.orderID.Substring(0, 12);
    if (long.Parse(end) - long.Parse(start) < 30)
    {
        Response.Write("--------<br/>");
        Response.Write("<b>姓名：</b>"+orderVo.nickname+"<br/>");
        Response.Write("<b>联系电话：</b>" + orderVo.mobile + "<br/>");
        Response.Write("<b>收货地址：</b>" + WapTool.ToWML(orderVo.remark, wmlVo) + "<br/>--------<br/>");

    }

    if (isAddUser.ToUpper () == "YES" && this.userid != "0")
    {
        Response.Write("恭喜,您已升级为本站会员，可享受更多折扣优惠，登录用户名为：" + userVo.username.Substring(userVo.username.Length - 11, 11) + "，密码为您手机号后四位：" + userVo.username.Substring(userVo.username.Length - 4, 4) + " ！<br/><a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">保存本订单信息</a><br/>");

    }
    
    Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
    if (this.userid != "0")
    {
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + "\">查看我的订单</a>]<br/>");
    }
    else
    {
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + this.orderid + "" + "\">查看我的订单</a>]<br/>");
    }
    Response.Write("<br/>");

   
    
    Response.Write("<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;showid=" + orderVo.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    Session["bycarlistVo"] = null;
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("货到付款说明|货到付款说明|货到付款说明") + "</div>");


    Response.Write("<div class=\"content\">");
    if (this.INFO == "" && this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == true) Response.Write("请管理员到：[站长后台]→[添加删除栏目]→[商店栏目]→[栏目配置]如录入货到付款说明，有例子说明。");
    
    Response.Write(WapTool.ToWML(this.INFO, wmlVo) + "<br/>--------<br/>");
    
    Response.Write("<b>订单编号：</b>" + orderVo.orderID + "<br/>");
    Response.Write("<b>下订时间：</b>" + orderVo.orderdate + "<br/>");
    Response.Write("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + orderVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + orderVo.nickname + "(" + orderVo.userid + ")</a><br/>");
        
    
    Response.Write("<b>&gt;&gt;订购商品列表:</b><br/>");
    long allcount = 0;
    decimal allmoney = 0;
    for (int i = 0; (this.bycarlistVo != null && i < bycarlistVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            Response.Write("<div class=\"line1\">");
        }
        else
        {
            Response.Write("<div class=\"line2\">");
        }
        if (bycarlistVo[i].book_smallimg != "")
        {
            Response.Write("<img src=\"" + this.http_start + "shop/" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/><br/>");
        }
        Response.Write(WapTool.ToWML(bycarlistVo[i].productname, wmlVo) + "(" + bycarlistVo[i].book_xinghao + ")<br/>");
        Response.Write("超低特价:" + bycarlistVo[i].book_yhjiage.ToString("f2") + "元" + "<br/>");
        Response.Write("商品数量:" + bycarlistVo[i].productcount + " " + "<br/>");
        Response.Write("</div>");
        allcount = allcount + bycarlistVo[i].productcount;
        allmoney = allmoney + bycarlistVo[i].book_yhjiage * bycarlistVo[i].productcount;


    }
    if (allcount > 0)
    {
        Response.Write("<b>&gt;&gt;订单总计金额:</b><br/>");
        Response.Write("货款总价:" + allmoney.ToString("f2") + "元<br/>");
        Response.Write("商品数量:" + allcount + "<br/>");
        Response.Write("----------<br/>");
        this.num = allcount.ToString();
    }


    if (allcount == 0)
    {

        Response.Write("" + WapTool.ToWML(orderVo.productname, wmlVo) + "");
        //Response.Write("<b>商品型号：</b>" + orderVo.productxinghao + "<br/>");
        //Response.Write("<b>商品数量：</b>" + orderVo.productcount + "<br/>");
        //Response.Write("<b>商品单价：</b>￥" + orderVo.productjiage.ToString("f2") + "<br/>");
        Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");

        Response.Write("<b>订单总价：</b>￥" + orderVo.productmoney.ToString("f2") + "<br/>");
    }
    else
    {
        Response.Write("<b>商品运费：</b>￥" + orderVo.book_charge.ToString("f2") + "<br/>");
       

    }

    //保留半小时
    string end = DateTime.Now.ToString("yyyyMMddhhmm");
    string start = orderVo.orderID.Substring(0, 12);
    if (long.Parse(end) - long.Parse(start) < 30)
    {
        //Response.Write("<br/>");
        Response.Write("<b>收货姓名：</b>" + orderVo.nickname + "<br/>");
        Response.Write("<b>联系电话：</b>" + orderVo.mobile + "<br/>");
        Response.Write("<b>收货信息：</b>" + WapTool.ToWML(orderVo.remark, wmlVo) + "<br/>");

    }


    if (isAddUser.ToUpper() == "YES" && this.userid != "0")
    {
        Response.Write("</div><div class=\"tip\">恭喜,您已升级为本站会员，可享受更多折扣优惠，登录用户名为：" + userVo.username.Substring(userVo.username.Length - 11, 11) + "，密码为您手机号后四位：" + userVo.username.Substring(userVo.username.Length - 4, 4) + " ！<br/><a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">保存本订单信息</a></div><div class=\"content\">");

    }
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write(" <a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a> ");
    if (this.userid != "0")
    {
        Response.Write(" <a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + "\">查看我的订单</a> ");
    
    }
    else
    {
        Response.Write(" <a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + this.orderid + "" + "\">查看我的订单</a> ");
    }
    Response.Write("</div></div>");
   
    Response.Write("</div>");
    
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;showid=" + orderVo.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");

    Response.Write("</div></div>");
   

    Session["bycarlistVo"] = null;
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


