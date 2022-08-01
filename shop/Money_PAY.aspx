<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Money_PAY.aspx.cs" Inherits="KeLin.WebSite.shop.Money_PAY" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO=="ADDOK"){
    wmlVo.timer = "1";
    wmlVo.strUrl = "shop/Money_PAY.aspx?action=OK&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;orderid="+this.orderid ;
    
}
Response.Write(WapTool.showTop(WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang)+"支付", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NOMONEY")
    {
        Response.Write("<b>我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "余额不够支付了！</b><br/>");

    }

    else if (this.action  == "OK")
    {
        //Response.Write("<b>添加成功！</b><br/>");
        Response.Write("订单号:" + orderVo.orderID + "<br/>");
        Response.Write("总价格:" + orderVo.productmoney.ToString("f2") + "[<a href=\"" + this.http_start + "shop/Money_PAY.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;orderid=" + this.orderid + "&amp;r=" + this.r + "\">刷新</a>]<br/>");

        if (orderVo.payState == "1")
        {
            Response.Write("您已支付成功！当前余额" + this.userVo.money.ToString("f2") + "<br/>");
        }
        else
        {
            Response.Write("您已支付失败！当前余额" + this.userVo.money.ToString("f2") + "<br/>");
        }
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
      
        Response.Write("<br/>");

    }
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<b>");
        Response.Write("扣款中，请稍后...</b><br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
        
        Response.Write("<br/>");
    }



    if (this.action  != "OK"  && this.INFO != "OK" && this.INFO != "ADDOK")
    {
      
      Response.Write("订单号:" + orderVo.orderID + "<br/>");
      Response.Write("总价格:" + orderVo.productmoney.ToString("f2") + "<br/>");
      Response.Write("我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money.ToString("f2") + "<br/>");

      Response.Write("<anchor><go href=\"" + http_start + "shop/Money_PAY.aspx\" method=\"post\" accept-charset=\"utf-8\">");
      Response.Write("<postfield name=\"action\" value=\"gomod\" />");
      Response.Write("<postfield name=\"orderid\" value=\"" + orderid + "\"/>");
      Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
      Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");      
      Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
      Response.Write("</go>确定" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "余额支付</anchor> <br/>");
     

    }
    Response.Write("<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;showid=" + orderVo.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "支付</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "不够支付了！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.action  == "OK")
    {
        Response.Write("<div class=\"content\">");
       // Response.Write("<b>添加成功！</b><br/>");
        Response.Write("订单号:" + orderVo.orderID + "<br/>");
        Response.Write("总价格:" + orderVo.productmoney.ToString("f2") + "[<a href=\"" + this.http_start + "shop/Money_PAY.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;orderid=" + this.orderid + "&amp;r=" + this.r + "\">刷新</a>]<br/>");
        if (orderVo.payState == "1")
        {
            Response.Write("您已支付成功！当前余额 " + this.userVo.money.ToString("f2") + "<br/>");
        }
        else
        {
            Response.Write("您已支付失败！当前余额 " + this.userVo.money.ToString("f2") + "<br/>");
        }

        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
      
        Response.Write("</div>");

    }
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>");
        Response.Write("扣款中，请稍后...</b><br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
        
        Response.Write("</div>");
    }



    if (this.action != "OK" && this.INFO != "OK" && this.INFO != "ADDOK")
    {
        Response.Write("<div class=\"content\">");

    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/Money_PAY.aspx\" method=\"post\">");

    

    Response.Write("订单号:" + orderVo.orderID + "<br/>");
    Response.Write("总价格:" + orderVo.productmoney.ToString("f2") + "<br/>");
    Response.Write("我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money.ToString("f2") + "<br/>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"orderid\" value=\"" + this.orderid  + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"确定" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "支付\"/></form><br/>");
    
    Response.Write("</div>");
        
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;showid=" + orderVo.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


