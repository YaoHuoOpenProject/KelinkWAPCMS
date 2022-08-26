<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_add.aspx.cs" Inherits="KeLin.WebSite.shop.book_view_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO=="ADDOK"){
    wmlVo.timer = "2";
    if (this.payAction == "1")
    {
        wmlVo.strUrl = "shop/Cash_On_Delivery.aspx?orderid="+this.orderID  +"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid+"&amp;isAddUser="+this.isAddUser  ;
    
    }
    else
    {
        wmlVo.strUrl = "shop/book_view_add.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showid=" + this.showid +"&amp;isAddUser="+this.isAddUser ;
    }
}
string title = "加入购物车";
if (this.action == "OK") title = "支付界面";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("姓名和收货地址至少二字符以上，手机号码为11位！  ");
        Response.Write("</b><br/>");
    }
    
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "LOGIN")
    {
        Response.Write("<b>此功能需要直接扣RMB余额，需要先<a href=\"/waplogin.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">登录</a>。</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<b>我的余额不够支付了！我当前RMB余额￥" + userVo.RMB.ToString("f2") + "，一共需要支付￥" + ((bookVo.book_yhjiage + book_charge) * long.Parse(num)).ToString("f2") + "。<a href=\"/chinabank_wap/selbank_wap.aspx?siteid="+this.siteid+"&amp;sid="+this.sid+"\">点击此充值</a>！</b><br/>");

    }

    else if (this.INFO == "OK")
    {
        Session["shop_order_add_flag"] = null;
        
        if (orderVo.payState == "1")
        {
            Response.Write("已支付成功！<br/>");
        }
        else
        {
            //Response.Write("<b>添加成功！</b><br/>");
            if (showinfo.Trim() != "")
            {
                Response.Write(WapTool.ToWML(showinfo, wmlVo));
            }
            if (this.userid == "0")
            {
                Response.Write("<b>亲，您是游客身份订购，请牢记此订单号！</b><br/>");
                Response.Write("<input type=\"text\" name=\"showorderid" + r + "\" value=\"" + orderVo.orderID + "\"/><br/>");
            }
            
            Response.Write("订单号:" + orderVo.orderID + "<br/>");
            
            Response.Write("总价格:￥" + orderVo.productmoney.ToString("f2") + "[<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showid=" + this.showid + "&amp;r=" + this.r + "\">刷新</a>]<br/>");
            Response.Write("(可联系客服修改价格后，再支付！)<br/><br/>");
            if (isOpenAlipay_web == "1")
            {
                Response.Write("");
                Response.Write("<a href=\"" + http_start + "shop/alipay_web/godefault.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\" target=\"_blank\">支付宝“电脑版”付款&gt;&gt;</a> ");
                Response.Write("<br/>");
            }
            if (this.isOpenAlipayURL.Trim() != "")
            {
                Response.Write(" [<a href=\"" + this.isOpenAlipayURL.Trim() + "\">支付宝收款页面付款&gt;&gt;</a>]<br/><br/>");
            }
            if (this.isOpenMoney == "1")
            {
                Response.Write(" [<a href=\"" + http_start + "shop/Money_PAY.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "帐户付款&gt;&gt;</a>]<br/><br/>");
            }
            if (isOpenAlipay == "1")
            {
                Response.Write(" [<a href=\"" + http_start + "chinabank_WAP/alipay_WAPShop.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">马上用支付宝付款&gt;&gt;</a>]<br/><br/>");
            }
            if (isOpenRMB == "1")
            {
                Response.Write(" [<a href=\"" + http_start + "shop/RMB_PAY.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">RMB帐户余额付款&gt;&gt;</a>]<br/><br/>");
            }
            Response.Write(" [<a href=\"" + http_start + "shop/Cash_On_Delivery.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">货到付款&gt;&gt;</a>]<br/><br/>");
            Response.Write(" <a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>-");
            Response.Write("<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">查看我的订单</a><br/><br/>");
        }
        if (isAddUser.ToUpper() == "YES" && this.userid != "0")
        {
            Response.Write("--------<br/>恭喜,您已升级为本站会员，可享受更多折扣优惠，登录用户名为：" + userVo.username.Substring(userVo.username.Length - 11, 11) + "，密码为您手机号后四位：" + userVo.username.Substring(userVo.username.Length - 4, 4) + " ！<br/>");

        }
        Response.Write("<br/>");

    }
    else if (this.INFO == "ADDOK")
    {
        Session["shop_order_add_flag"] = "1";
        
        Response.Write("<b>");
        if (this.payAction == "1")
        {
            Response.Write("下单成功！自动跳转至<a href=\"" + this.http_start + wmlVo.strUrl + "\">查看本次订单信息</a>。");

        }
        else
        {
            Response.Write("下单成功！自动跳转至<a href=\"" + this.http_start + wmlVo.strUrl + "\">支付页面</a>。");
        }
        Response.Write("</b><br/>");
    }



    if (this.INFO != "OK" && this.INFO != "ADDOK")
    {
        
        Session["shop_order_add_flag"] = null;
        
        if (this.id != "0")
        {
            Response.Write("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">返回刚才浏览商品</a><br/>");
        }
        Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">保留当前,继续选其他</a><br/>");

        Response.Write("<b>&gt;&gt;当前选购商品:</b><br/>");
        long allcount = 0;
        decimal allmoney = 0;
        for (int i = 0; (this.bycarlistVo != null && i < bycarlistVo.Count); i++)
        {

            if (bycarlistVo[i].book_smallimg != "")
            {
                if (bycarlistVo[i].book_smallimg.StartsWith("/") == true || bycarlistVo[i].book_smallimg.StartsWith("http") == true)
                {
                    Response.Write("<img src=\"" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/>");
                }
                else
                {
                    Response.Write("<img src=\"" + this.http_start + "shop/" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/>");
                }
            }
            Response.Write(WapTool.ToWML(bycarlistVo[i].productname, wmlVo) + "(" + bycarlistVo[i].book_xinghao + ")<br/>");
            Response.Write("超低特价:" + bycarlistVo[i].book_yhjiage.ToString("f2") + "元" + "<br/>");
            Response.Write("商品数量:" + bycarlistVo[i].productcount + " <a href=\"" + this.http_start + "shop/book_view_add.aspx?add=1&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;id=" + this.id + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">加1</a>|<a href=\"" + this.http_start + "shop/book_view_add.aspx?add=-1&amp;id=" + this.id + "&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">减1</a>|<a href=\"" + this.http_start + "shop/book_view_add.aspx?add=del&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;id=" + this.id + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">删除</a>" + "<br/>");
          
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

        if (allcount > 0)
        {

        if (allcount == 0)
        {

            Response.Write("商品名称:" + bookVo.book_title + "<br/>");
            if (bookVo.book_xinghao != "")
            {
                Response.Write("型号:" + bookVo.book_xinghao + "<br/>");
            }

            Response.Write("会员价格:" + bookVo.book_yhjiage.ToString("f2") + "<br/>");
        }
        else
        {
            Response.Write("<b>&gt;&gt;填写收货信息:</b><br/>");
        }
        if (showyunfei != "1")
        {

            if (idlistVo != null && idlistVo.Count > 0)
            {
                Response.Write("运费:<select name=\"book_charge\">");
                for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
                {
                    Response.Write("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
                }
                Response.Write("</select><br/>");
            }
        }
        
            Response.Write(this.GetLang("总数量|数量|num") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"productcount\" value=\"" + this.num + "\"/><br/>");

            Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*: 【<a href=\"" + this.http_start + "shop/modifyaddress.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">编辑地址</a>】<br/>");
            Response.Write("<input type=\"text\" name=\"myname\" value=\"" + this.myname + "\"/><br/>");
            Response.Write("手机号码*:<br/>");
            Response.Write("<input type=\"text\" name=\"tel\" value=\"" + this.tel + "\"/><br/>");

            Response.Write(this.GetLang("收货地址|收货地址|address") + ":<br/>");
            Response.Write("<input type=\"text\" name=\"address\" value=\"" + this.address + "\"/><br/>");

            Response.Write("下订留言(如备用电话):<br/>");
            Response.Write("<input type=\"text\" name=\"remark\" value=\"" + this.content + "\"/><br/>");

            Response.Write("付费方式:");
            Response.Write("<select name=\"payAction\" value=\"" + this.payAction + "\">");
            if (payType == "1")
            {
                Response.Write("<option value=\"1\">货到付款</option>");
            }
            else if (payType == "2")
            {
                Response.Write("<option value=\"0\">在线支付</option>");
            }
            else if (payType == "3")
            {
                Response.Write("<option value=\"3\">我的RMB帐户额支付</option>");
            }
            else
            {
                Response.Write("<option value=\"1\">货到付款</option>");
                Response.Write("<option value=\"0\">在线支付</option>");
            }
            Response.Write("</select><br/>");

            Response.Write("<anchor><go href=\"" + http_start + "shop/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\" />");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"myname\" value=\"$(myname)\" />");
            Response.Write("<postfield name=\"tel\" value=\"$(tel)\" />");
            Response.Write("<postfield name=\"address\" value=\"$(address)\" />");
            Response.Write("<postfield name=\"productcount\" value=\"$(productcount)\" />");
            Response.Write("<postfield name=\"remark\" value=\"$(remark)\" />");
            Response.Write("<postfield name=\"book_charge\" value=\"$(book_charge)\" />");
            Response.Write("<postfield name=\"payAction\" value=\"$(payAction)\" />");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>提交订单</anchor> <br/>");
            Response.Write("说明:下一步可以在线支付或货到付款。<br/>");

        }
        else
        {

            Response.Write("抱歉，还没有选择商品，请返回选择其它商品。<br/><br/>");
        }
    }
    Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + title + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("姓名和收货地址至少二字符以上，手机号码为11位！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "LOGIN")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>此功能需要直接扣RMB余额，需要先<a href=\"/waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">登录</a>。</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>我的余额不够支付了！我当前RMB余额￥" + userVo.RMB.ToString("f2") + "，一共需要支付￥" + ((bookVo.book_yhjiage + book_charge) * long.Parse(num)).ToString("f2") + "。<a href=\"/chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">点击此充值</a>！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "OK")
    {
        Session["shop_order_add_flag"] = null;
        
        Response.Write("<div class=\"content\">");
       // Response.Write("<b>添加成功！</b><br/>");
        if (orderVo.payState == "1")
        {
            Response.Write("已支付成功！<br/>");
        }
        else
        {
            if (showinfo.Trim() != "")
            {
                Response.Write("</div><div class=\"content\">");
                Response.Write(WapTool.ToWML(showinfo, wmlVo));
                Response.Write("</div><div class=\"content\">");
            }
            
            if (this.userid == "0")
            {
                Response.Write("</div><div class=\"tip\">亲，您是游客身份订购，请牢记此订单号！<br/>");
                Response.Write("<input type=\"text\" name=\"showorderid" + r + "\" value=\"" + orderVo.orderID + "\"/>");
                Response.Write("</div><div class=\"content\">");
            }
            
            Response.Write("订单号:" + orderVo.orderID + "<br/>");
            
            Response.Write("总价格:￥" + orderVo.productmoney.ToString("f2") + "  <a class=\"urlbtn\" href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showid=" + this.showid + "&amp;r=" + this.r + "\">刷新</a> <br/>");
            Response.Write("(可联系客服修改价格后，再支付！)<br/><br/>");
            if (payType == "2" || payType == "0")
            {

                if (isOpenAlipay == "1")
                {
                    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                    Response.Write("<a href=\"" + http_start + "chinabank_WAP/alipay_WAPShop.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">支付宝“手机版”付款&gt;&gt;</a> ");
                    Response.Write("</div></div>");
                }

                if (isOpenAlipay_web == "1")
                {
                    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                    Response.Write("<a href=\"" + http_start + "shop/alipay_web/godefault.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\" target=\"_blank\">支付宝“电脑版”付款&gt;&gt;</a> ");
                    Response.Write("</div></div>");
                }

               

                if (this.isOpenAlipayURL.Trim() != "")
                {
                    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                    Response.Write(" <a href=\"" + this.isOpenAlipayURL.Trim() + "\">支付宝收款页面付款&gt;&gt;</a> ");
                    Response.Write("</div></div>");
                }

                if (isOpenRMB == "1")
                {
                    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                    Response.Write("<a href=\"" + http_start + "shop/RMB_PAY.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">RMB帐户余额付款&gt;&gt;</a> ");
                    Response.Write("</div></div>");
                }

                if (this.isOpenMoney == "1")
                {
                    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                    Response.Write("<a href=\"" + http_start + "shop/Money_PAY.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "帐户付款&gt;&gt;</a> ");
                    Response.Write("</div></div>");
                }

            }
            
            if (payType == "1" || payType == "0")
            {
                Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
                Response.Write("<a href=\"" + http_start + "shop/Cash_On_Delivery.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">货到付款&gt;&gt;</a> ");
                Response.Write("</div></div>");
            }
            Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
            Response.Write(" <a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a> ");
            Response.Write("<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "&amp;orderid=" + orderVo.orderID + "" + "\">查看我的订单</a> ");
            Response.Write("</div></div>");
        }
        Response.Write("</div>");
        if (isAddUser.ToUpper() == "YES" && this.userid != "0")
        {
            Response.Write("<div class=\"tip\">恭喜,您已升级为本站会员，可享受更多折扣优惠，登录用户名为：" + userVo.username.Substring(userVo.username.Length - 11, 11) + "，密码为您手机号后四位：" + userVo.username.Substring(userVo.username.Length - 4, 4) + " ！</div>");

        }

    }
    else if (this.INFO == "ADDOK")
    {
        Session["shop_order_add_flag"] = "1";
        Session["bycarlistVo_count"] = null;
        Session["bycarlistVo"] = null;
        
        //如果全局顶部用了购物车数量[shopcard]需要在此清0
        //Response.Write("<script type=\"text/javascript\">try{document.getElementById('shopcard').innerHTML='0';}catch{}</script>");  
        
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>");
        if (this.payAction == "1")
        {
            Response.Write("下单成功！自动跳转至<a href=\"" + this.http_start + wmlVo.strUrl + "\">查看本次订单信息</a>。");
        
        }
        else
        {
            Response.Write("下单成功！自动跳转至<a href=\"" + this.http_start + wmlVo.strUrl + "\">支付页面</a>。");
        }
        
        Response.Write("</b></div>");
    }



    if (this.INFO != "OK" && this.INFO != "ADDOK")
    {
        Session["shop_order_add_flag"] = null;
        
      Response.Write("<div class=\"content\">");
      Response.Write("<div class=\"bt1\">");
      if (this.id != "0")
      {
          Response.Write("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">返回刚才浏览商品</a><br/>");
      }
      Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">保留当前,继续选其他</a><br/>");
      Response.Write("</div>");
      Response.Write("<b>&gt;&gt;当前选购商品:</b><br/>");
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
              if (bycarlistVo[i].book_smallimg.StartsWith("/") == true || bycarlistVo[i].book_smallimg.StartsWith("http") == true)
              {
                  Response.Write("<img src=\"" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/><br/>");
              }
              else
              {
                  Response.Write("<img src=\"" + this.http_start + "shop/" + bycarlistVo[i].book_smallimg + "\" alt=\".\"/><br/>");
              }
          }
          Response.Write(WapTool.ToWML(bycarlistVo[i].productname,wmlVo ));
          if (bycarlistVo[i].book_xinghao != "")
          {
              Response.Write("(" + bycarlistVo[i].book_xinghao + ")");
          }
          Response.Write("<br/>");
          
          Response.Write("超低特价:" + bycarlistVo[i].book_yhjiage.ToString("f2")+"元"+"<br/>");
          Response.Write("商品库存:" + bycarlistVo[i].KuCun + "<br/>");
          
          allcount = allcount + bycarlistVo[i].productcount;
          allmoney = allmoney + bycarlistVo[i].book_yhjiage * bycarlistVo[i].productcount;
          
          //用js选择数量
          Response.Write("填写数量:<input type=\"text\" name=\"n" + i + "\" id=\"id" + +i + "\" value=\"" + bycarlistVo[i].productcount + "\" size=\"3\"/><input type=\"button\" value=\"确定\" name=\"g" + i + "\" onclick=\"javascript:window.location.href=\'" + this.http_start + "shop/book_view_add.aspx?mysel=yes&amp;add='+ document.getElementById('id" + i + "').value + '&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;id=" + this.id + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\';\"/> ");
          Response.Write("<a class=\"urlbtn\" href=\"" + this.http_start + "shop/book_view_add.aspx?add=1&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;id=" + this.id + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">加1</a> <a class=\"urlbtn\" href=\"" + this.http_start + "shop/book_view_add.aspx?add=-1&amp;id=" + this.id + "&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">减1</a> <a class=\"urlbtn\" href=\"" + this.http_start + "shop/book_view_add.aspx?add=del&amp;carID=" + bycarlistVo[i].ID + "&amp;book_xinghao=" + HttpUtility.UrlEncode(bycarlistVo[i].book_xinghao) + "&amp;id=" + this.id + "&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">删除</a>" + "<br/>");
          
          Response.Write("</div>");
         // Response.Write("<script> var aa=document.getElementById('id0') ;alert( aa );</script>");
      }
        
        
      if (allcount > 0)
      {
          Response.Write("<b>&gt;&gt;订单总计金额:</b><br/>");
          Response.Write("货款总价:" + allmoney.ToString("f2") + "元<br/>");
          Response.Write("商品数量:" + allcount + "<br/>");
          Response.Write("----------<br/>");
          this.num = allcount.ToString ();
      }
       
        
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/book_view_add.aspx\" method=\"post\">");
    if (allcount > 0)
    {
        
    if (allcount == 0)
    {

        Response.Write("商品名称:" + bookVo.book_title + "<br/>");
        if (bookVo.book_xinghao != "")
        {
            Response.Write("型号:" + bookVo.book_xinghao + "<br/>");
        }

        Response.Write("会员价格:" + bookVo.book_yhjiage.ToString("f2") + "<br/>");
    }
    else
    {
        Response.Write("<b>&gt;&gt;填写收货信息:</b><br/>");
    }
    if (showyunfei != "1")
    {

        if (idlistVo != null && idlistVo.Count > 0)
        {
            Response.Write("运费:<select name=\"book_charge\">");
            for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
            {
                Response.Write("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
            }
            Response.Write("</select><br/>");
        }
    }
    
        
    Response.Write(this.GetLang("总数量|总数量|num") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"productcount\" class=\"txt\" value=\""+this.num +"\"/><br/>");

    Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*:【<a href=\"" + this.http_start + "shop/modifyaddress.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">编辑地址</a>】<br/>");
    Response.Write("<input type=\"text\" name=\"myname\" class=\"txt\" value=\"" + this.myname + "\"/><br/>");
    Response.Write( "手机号码*:<br/>");
    Response.Write("<input type=\"text\" name=\"tel\" class=\"txt\" value=\"" + this.tel + "\"/><br/>");

    Response.Write(this.GetLang("收货地址|收货地址|address") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"address\" class=\"txt\" value=\"" + this.address + "\"/><br/>");

    Response.Write("下单留言(如备用电话):<br/>");
    Response.Write("<input type=\"text\" name=\"remark\" class=\"txt\" value=\"" + this.content + "\"/><br/>");
    Response.Write("付费方式:");
    Response.Write("<select name=\"payAction\" class=\"txt\">");
        if (payType == "1")
      {
          Response.Write("<option value=\"1\">货到付款</option>");
      }
        else if (payType == "2")
        {
            Response.Write("<option value=\"0\">在线支付</option>");
        }
        else if (payType == "3")
        {
            Response.Write("<option value=\"3\">我的RMB帐户额支付</option>");
        }
        else
        {
            Response.Write("<option value=\"0\">在线支付</option>");
            Response.Write("<option value=\"1\">货到付款</option>");
           
        }
    Response.Write("</select><br/>");
        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"提交订单\"/></form><br/>");
    Response.Write("说明:下一步可以在线支付或货到付款。<br/>");
        }
        else
        {

            Response.Write("抱歉，还没有选择商品，请返回选择其它商品。");
            //下面代码用于兼容IE中button缓存处理
            Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/book_view_add.aspx\" method=\"post\">");
            Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");      
            Response.Write("</form>");
        }
    Response.Write("</div>");
        
    }
    if (action == "")
    {
        Response.Write("<div class=\"tip\">亲，如果您的手机需要开启cookies功能哦，否则只能单件提交订单。</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");

    Response.Write("</div></div>");
    Response.Write(WapTool.GetVS(wmlVo));
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


