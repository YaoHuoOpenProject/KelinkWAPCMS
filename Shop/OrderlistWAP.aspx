<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistWAP.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
wmlVo.timer ="1800";
wmlVo.strUrl = "shop/orderlistWAP.aspx?state="+this.state +"&amp;action=class&amp;siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;r="+this.r  ;
Response.Write(WapTool.showTop(this.GetLang("订单管理|订单管理|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>操作成功！</b><br/>");
    }
    strhtml.Append("状态：<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    if(order_types=="0"){
    strhtml.Append("<option value=\"0\">0_未确认未发货</option>");
    strhtml.Append("<option value=\"4\">4_已确认未发货*</option>");
    strhtml.Append("<option value=\"1\">1_已确认已发货</option>");
    strhtml.Append("<option value=\"2\">2_已发货已签收</option>");
    strhtml.Append("<option value=\"3\">3_已发货未签收</option>");
    strhtml.Append("<option value=\"-1\">-1_已被客户取消</option>");
    }
    else
    {
        strhtml.Append("<option value=\"0\">0_等待买家付款</option>");
        strhtml.Append("<option value=\"11\">11_买家已付款</option>");
        strhtml.Append("<option value=\"12\">12_卖家已发货</option>");
        strhtml.Append("<option value=\"13\">13_交易成功</option>");
        strhtml.Append("<option value=\"14\">14_交易关闭</option>");
        strhtml.Append("<option value=\"15\">15_退款中</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append("订单号：<input type=\"text\" name=\"orderid" + r + "\" value=\"" + id + "\" size=\"5\"/><br/>");
    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("最近：<input type=\"text\" name=\"days" + r + "\" value=\"" + days + "\" size=\"5\"/>天<br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "shop/orderlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"orderid\" value=\"$(orderid" + r + ")\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"days\" value=\"$(days" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"shop/orderlistWAP.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">刷新</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=goall&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">清空一个月前订单</a><br/>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("订单总价:￥" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">今天</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一周内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一月内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">三月内</a>");
    strhtml.Append("<br/>--------<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".");
            if (listVo[i].state == 0 && "|00|01|".IndexOf(userVo.managerlvl) > 0)
        {
            strhtml.Append("[<a href=\""+this.http_start + "shop/orderlistWAP_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+lpage+"&amp;page=" + this.CurrentPage + "&amp;key="+HttpUtility.UrlEncode(key)+"&amp;state="+state+""+"\">删除</a>]");
        }
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">处理订单</a>]<br/>");
            strhtml.Append("<b>栏目ID:</b>" + listVo[i].book_classid + "<br/>");
            if (listVo[i].ischeck  == 1)
            {
                strhtml.Append("【<b>已被客户删除</b>】<br/>");
            }
            strhtml.Append("<b>订单编号:</b>" + listVo[i].orderID + "<br/>");
           
            strhtml.Append("<b>状态:</b>");
        if(order_types=="0"){
            if (listVo[i].state == 4)
            {
                strhtml.Append("已确认未发货");
            }else if (listVo[i].state == 3)
            {
                strhtml.Append("已发货未签收");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("已发货已签收");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("已确认已发货");
            }
            else
            {
                strhtml.Append("未确认未发货");
            }
        }
        else
        {

            if (listVo[i].state == 0)
            {
                strhtml.Append("待付款");
                
            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("已付款待发货");

            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("已发货待收货");
                
            }
            else if (listVo[i].state == 13)
            {
                strhtml.Append("交易成功");
            }
            else if (listVo[i].state == 14)
            {
                strhtml.Append("交易关闭");
            }
            else if (listVo[i].state == 15)
            {
                strhtml.Append("退款中");
                
            }
        }
            strhtml.Append("<br/>");
            strhtml.Append("<b>下订时间：</b>" + listVo[i].orderdate + "<br/>");
            strhtml.Append("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a><br/>");
            strhtml.Append("<b>商品列表：</b><br/>" + listVo[i].productname + "");
            //strhtml.Append("<b>商品型号：</b>" + listVo[i].productxinghao + "<br/>");
            //strhtml.Append("<b>商品数量：</b>" + listVo[i].productcount + "<br/>");
            strhtml.Append("<b>商品单价：</b>￥" + listVo[i].productjiage.ToString("f2") + "<br/>");
            strhtml.Append("<b>商品运费：</b>￥" + listVo[i].book_charge.ToString("f2") + "<br/>");
            strhtml.Append("<b>订单总价：</b>￥" + listVo[i].productmoney.ToString("f2") + "");
            strhtml.Append("<br/><b>付款方式:</b>");
            if (listVo[i].payState == "2")
            {
                strhtml.Append("货到付款<br/>");

            }
            else  if (listVo[i].payState == "1")
            {
                strhtml.Append("<b>在线支付：</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">已支付</a><br/>");
                strhtml.Append("<b>支付时间：</b>" + listVo[i].payTime + "<br/>");
            }
            else
            {
                if (listVo[i].state == 1)
                {
                    //strhtml.Append("(已支付)");
                }
                else
                {
                    strhtml.Append("(未在线支付)<br/>");
                }
            }


            //strhtml.Append("--------<br/>");
            strhtml.Append("<b>姓名：</b>" + listVo[i].nickname + "<br/>");
            strhtml.Append("<b>联系电话：</b>" + listVo[i].mobile + "<br/>");
            strhtml.Append("<b>收件地址：</b>" + WapTool.ToWML(listVo[i].remark, wmlVo) + "<br/>");

            strhtml.Append("<b>送货跟踪：</b>" + WapTool.ToWML(listVo[i].book_reply, wmlVo) + "<br/>");
           strhtml.Append("(<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">更改价格/送货订单</a>)");
                
            strhtml.Append("<br/>----------<br/>"); 
            kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回列表</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<div class=\"tip\"><b>操作成功！</b></div>");
    }
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("订单管理|订单管理|View Reply") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "shop/orderlistWAP.aspx\" method=\"get\">");
   
    strhtml.Append("状态：<select name=\"state\">");
    strhtml.Append("<option value=\"" + this.state + "\">" + this.state + "</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    if(order_types =="0"){
    strhtml.Append("<option value=\"0\">0_未确认未发货</option>");
    strhtml.Append("<option value=\"4\">4_已确认未发货*</option>");
    strhtml.Append("<option value=\"1\">1_已确认已发货</option>");
    strhtml.Append("<option value=\"2\">2_已发货已签收</option>");
    strhtml.Append("<option value=\"3\">3_已发货未签收</option>");
    strhtml.Append("<option value=\"-1\">-1_已被客户取消</option>");
    }
    else
    {
        strhtml.Append("<option value=\"0\">0_等待买家付款</option>");
        strhtml.Append("<option value=\"11\">11_买家已付款</option>");
        strhtml.Append("<option value=\"12\">12_卖家已发货</option>");
        strhtml.Append("<option value=\"13\">13_交易成功</option>");
        strhtml.Append("<option value=\"14\">14_交易关闭</option>");
        strhtml.Append("<option value=\"15\">15_退款中</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append("订单号：<input type=\"text\" name=\"orderid\" value=\"" + id + "\" size=\"5\"/><br/>");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("最近：<input type=\"text\" name=\"days\" value=\"" + days + "\" size=\"5\"/>天<br/>");
    strhtml.Append("来自会员ID：<input type=\"text\" name=\"fromuserid\" value=\"" + fromuserid + "\" size=\"5\"/><br/>");
    strhtml.Append("来自友链ID：<input type=\"text\" name=\"fromlinkiD\" value=\"" + fromlinkid + "\" size=\"5\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=goall&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">清空一个月前订单</a><br/>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待买家付款(" + this.state0 + ")</a>.<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?state=11&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待发货(" + this.state11 + ")</a>.");
    }
    strhtml.Append("总价:￥" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">今天</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一周内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一月内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">三月内</a>");
    strhtml.Append("</div>");

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("" + (total - kk) + ".");
        if (listVo[i].state == 0 && "|00|01|".IndexOf(userVo.managerlvl) > 0)
        {
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">删除</a>]");
        }
        strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">处理订单</a>]<br/>");
        strhtml.Append("<b>栏目ID:</b>" + listVo[i].book_classid + "<br/>");
        
        if (listVo[i].ischeck  == 1)
        {
            strhtml.Append("【<b>已被客户删除</b>】<br/>");
        }
        strhtml.Append("<b>订单编号:</b>" + listVo[i].orderID + "<br/>");
        
        strhtml.Append("<b>状态:</b><font color=\"red\">");
        if(order_types=="0"){
        if (listVo[i].state == 4)
        {
            strhtml.Append("已确认未发货");
        }
        else if (listVo[i].state == 3)
        {
            strhtml.Append("已发货未签收");
        }
        else if (listVo[i].state == 2)
        {
            strhtml.Append("已发货已签收");
        }
        else if (listVo[i].state == 1)
        {
            strhtml.Append("已确认已发货");
        }
        else
        {
            strhtml.Append("未确认未发货");
        }
        }
        else
        {

            if (listVo[i].state == 0)
            {
                strhtml.Append("待付款");

            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("已付款待发货");

            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("已发货待收货");

            }
            else if (listVo[i].state == 13)
            {
                strhtml.Append("交易成功");
            }
            else if (listVo[i].state == 14)
            {
                strhtml.Append("交易关闭");
            }
            else if (listVo[i].state == 15)
            {
                strhtml.Append("退款中");

            }
        }
        strhtml.Append("</font><br/>");
        strhtml.Append("<b>下订时间：</b>" + listVo[i].orderdate + "<br/>");
        strhtml.Append("<b>下订会员：</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a><br/>");
        strhtml.Append("<b>商品列表：</b><br/>" + listVo[i].productname + "");
        //strhtml.Append("<b>商品型号：</b>" + listVo[i].productxinghao + "<br/>");
        //strhtml.Append("<b>商品数量：</b>" + listVo[i].productcount + "<br/>");
        //strhtml.Append("<b>商品单价：</b>￥" + listVo[i].productjiage.ToString("f2") + "<br/>");
        strhtml.Append("<b>商品运费：</b>￥" + listVo[i].book_charge.ToString("f2") + "<br/>");
        strhtml.Append("<b>订单总价：</b>￥" + listVo[i].productmoney.ToString("f2") + "");
        strhtml.Append("<br/><b>付款方式:</b>");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("货到付款<br/>");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("<b>在线支付：</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">已支付</a><br/>");
            strhtml.Append("<b>支付时间：</b>" + listVo[i].payTime + "<br/>");
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(已支付)");
            }
            else
            {
                strhtml.Append("(未在线支付)<br/>");
            }
        }

        strhtml.Append("--------<br/>");
        strhtml.Append("<b>姓名：</b>" + listVo[i].nickname + "<br/>");
        strhtml.Append("<b>联系电话：</b>" + listVo[i].mobile + "<br/>");
        strhtml.Append("<b>收件地址：</b>" + WapTool.ToWML(listVo[i].remark, wmlVo) + "<br/>");

        strhtml.Append("<b>送货跟踪：</b>" + WapTool.ToWML(listVo[i].book_reply, wmlVo) + "<br/>");
        strhtml.Append("(<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">更改价格/送货订单</a>)");
        strhtml.Append("<br/>[会员推荐ID:" + listVo[i].fromUserID+ "/友链推荐ID:" + listVo[i].fromLinkID + "]");   
        strhtml.Append("</div>"); 
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"tip\">本页每隔30分钟刷新一次！建议到WEB后台的订单管理，可以批量处理。</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回列表</a> ");
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a> ");

     
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
