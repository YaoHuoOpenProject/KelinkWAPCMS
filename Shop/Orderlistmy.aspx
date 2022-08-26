<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistmy.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistmy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看我的订单|查看我的订单|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>操作成功！</b><br/>");
    }
    if (this.userid == "0")
    {
        strhtml.Append("<b>亲，您当前身份为游客，需按订单号查询！</b><br/>");
    }
    strhtml.Append("状态：<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    if (order_types == "0")
    {
        strhtml.Append("<option value=\"0\">0_未确认未发货</option>");
        strhtml.Append("<option value=\"4\">4_已确认未发货*</option>");
        strhtml.Append("<option value=\"1\">1_已确认已发货</option>");
        strhtml.Append("<option value=\"2\">2_已发货已签收</option>");
        strhtml.Append("<option value=\"3\">3_已发货未签收</option>");
   
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
    strhtml.Append("订单号：<input type=\"text\" name=\"orderid" + r + "\" value=\"" + orderid + "\" size=\"5\"/><br/>");
    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("最近：<input type=\"text\" name=\"days" + r + "\" value=\"" + days + "\" size=\"5\"/>天<br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "shop/orderlistmy.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"days\" value=\"$(days" + r + ")\" />");
    strhtml.Append("<postfield name=\"orderid\" value=\"$(orderid" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"shop/orderlistmy.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">刷新</a> ");

    strhtml.Append("<br/>--------<br/>");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待付款([shopstate]0[/shopstate])</a>.<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待收货([shopstate]12[/shopstate])</a>.");
    }
    
    strhtml.Append("总价:￥" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">今天</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一周内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一月内</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">三月内</a>");
    strhtml.Append("<br/>--------<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".订单号:<b>" + listVo[i].orderID + "</b>");
            if (listVo[i].state == 0 && order_types=="0")
        {
            strhtml.Append("[<a href=\""+this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+lpage+"&amp;page=" + this.CurrentPage + "&amp;key="+HttpUtility.UrlEncode(key)+"&amp;state="+state+""+"\">取消订单</a>]");
        }    
        
        strhtml.Append("<br/>状态:");
        if (order_types == "0")
        {
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
                strhtml.Append("【<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">取消订单</a>】");

            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("已付款待发货");
               
            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("已发货待收货");
                strhtml.Append("【<a href=\"" + this.http_start + "shop/orderlistmy_ok.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">确认收货</a>】");

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
                strhtml.Append(",收到款请【<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">取消订单</a>】");

            }
        }
        strhtml.Append("<br/>下订时间:" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate));
        strhtml.Append("<br/>商品列表:<br/>" + listVo[i].productname + "");
        //strhtml.Append("<br/>数量:" + listVo[i].productcount);
        //strhtml.Append("<br/>单价:￥" + listVo[i].productjiage.ToString("f2"));
        //strhtml.Append("<br/>运费:￥" + listVo[i].book_charge.ToString("f2"));
        strhtml.Append("订单总价:￥" + listVo[i].productmoney.ToString("f2"));
        strhtml.Append("<br/>付款方式:");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("货到付款");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("(<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid="+this.siteid+"&amp;orderid="+listVo[i].orderID+"&amp;backurl="+HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid="+this.siteid+"&classid="+this.classid)+"&amp;sid="+this.sid+"\">支付成功</a>:" + string.Format("{0:MM-dd HH:mm}", listVo[i].payTime) + ")"); 
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(已支付)");
            }
            else
            {
                strhtml.Append("(<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;showid=" + listVo[i].id + "" + "\">我要支付</a>)");
            }
        }
        strhtml.Append("<br/>送货跟踪:" + WapTool.ToWML(listVo[i].book_reply , wmlVo));
        strhtml.Append("<br/><a href=\"" + this.http_start + "shop/orderinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;page=" + this.CurrentPage + "&amp;state=" + this.state + "" + "\">详细信息/送货跟踪</a>");
            
        //strhtml.Append("<br/>我的说明:" + listVo[i].remark);
        
        //strhtml.Append("<br/>店长回复:" + listVo[i].book_reply);
        strhtml.Append("<br/>----------<br/>"); 
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (CheckManagerLvl("03", classVo.adminusername) == true)
    {

        strhtml.Append("管理员您好，订单管理在【我的地盘】→【网站管理后台】→【添加删除内容】→【商店栏目管理】→【<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">订单管理</a>】或WEB后台添加删除内容中管理。");
        strhtml.Append("<br/>");
    }
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

    }
    strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");

    
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
    
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看我的订单|查看我的订单|View Reply") + "</div>");
    if (this.userid == "0")
    {
        strhtml.Append("<div class=\"tip\"><b>亲，您当前身份为游客，需按订单号查询！</b></div>");
    } 
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "shop/orderlistmy.aspx\" method=\"get\">");
   
    strhtml.Append("状态：<select name=\"state\">");
    strhtml.Append("<option value=\"" + this.state + "\">" + this.state + "</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    if (order_types == "0")
    {
        strhtml.Append("<option value=\"0\">0_未确认未发货</option>");
        strhtml.Append("<option value=\"4\">4_已确认未发货*</option>");
        strhtml.Append("<option value=\"1\">1_已确认已发货</option>");
        strhtml.Append("<option value=\"2\">2_已发货已签收</option>");
        strhtml.Append("<option value=\"3\">3_已发货未签收</option>");
       
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
    strhtml.Append("订单号：<input type=\"text\" name=\"orderid\" value=\"" + orderid + "\" size=\"5\"/><br/>");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("最近：<input type=\"text\" name=\"days\" value=\"" + days + "\" size=\"5\"/>天<br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">今天</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一周内</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">一月内</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">三月内</a>");
    strhtml.Append("</div></div>");
  
    
    strhtml.Append("<div class=\"subtitle\">");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待付款([shopstate]0[/shopstate])</a>.<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">待收货([shopstate]12[/shopstate])</a>.");
    }
    
    strhtml.Append("总价:￥" + totalMoney.ToString("f2") + "<br/>");
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
        strhtml.Append("" + (total - kk) + ".订单号:<b>"+listVo[i].orderID+"</b>");
        if (listVo[i].state == 0 && order_types == "0")
        {
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">取消订单</a>]");
        }

        strhtml.Append("<br/>状态:<font color=\"red\">");
        if (order_types == "0")
        {
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
                strhtml.Append("【<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">取消订单</a>】");
       
            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("已付款待发货");
                
            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("已发货待收货");
                strhtml.Append("【<a href=\"" + this.http_start + "shop/orderlistmy_ok.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">确认收货</a>】");
       
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
                strhtml.Append(",收到款请【<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">取消订单</a>】");
       
            }


        }
        strhtml.Append("</font><br/>下订时间:" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate));
        strhtml.Append("<br/>商品列表:<br/>" + listVo[i].productname + "");
       // strhtml.Append("<br/>数量:" + listVo[i].productcount );
        //strhtml.Append("<br/>单价:￥" + listVo[i].productjiage.ToString("f2") );
        //strhtml.Append("<br/>运费:￥" + listVo[i].book_charge.ToString("f2") );
        strhtml.Append("订单总价:￥" + listVo[i].productmoney.ToString("f2"));
        strhtml.Append("<br/>付款方式:");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("货到付款");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("在线支付(<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">支付成功</a>:" + string.Format("{0:MM-dd HH:mm}", listVo[i].payTime) + ")");
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(已支付)");
            }
            else
            {
                strhtml.Append("在线支付(<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid  + "&amp;showid=" + listVo[i].id  + "" + "\">我要支付</a>)");
            }
        }
        strhtml.Append("<br/>送货跟踪:" + WapTool.ToWML(listVo[i].book_reply, wmlVo));
        strhtml.Append("<br/><a href=\"" + this.http_start + "shop/orderinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;page=" + this.CurrentPage + "&amp;state=" + this.state + "" + "\">详细信息/送货跟踪</a>");
           
        //strhtml.Append("<br/>说明:" + listVo[i].remark );
        
        //strhtml.Append("<br/>店长回复:" + listVo[i].book_reply);
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (CheckManagerLvl("03",classVo.adminusername)==true)
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("管理员您好，订单管理在【我的地盘】→【网站管理后台】→【添加删除内容】→【商店栏目管理】→【<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">订单管理</a>】或WEB后台添加删除内容中管理。订单状态模式可以到【<a href=\"" + this.http_start + "admin/sitesetdefault.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">网站默认设置</a>】【40】中设置货到付款模式和淘宝模式。订单状态统计UBB:［shopstate］X［/shopstate］，X为状态值，如待收货(［shopstate］12［/shopstate］)");
        strhtml.Append("</div>");
    }
    //显示电脑版
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");


        strhtml.Append("</div></div>");
    strhtml.Append(WapTool.GetVS(wmlVo));

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
