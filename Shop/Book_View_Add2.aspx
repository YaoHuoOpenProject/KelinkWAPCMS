<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_add2.aspx.cs" Inherits="KeLin.WebSite.shop.book_view_add2" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO=="ADDOK"){
    wmlVo.timer = "1";
    wmlVo.strUrl = "shop/book_view_add2.aspx?action=OK&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;showid="+this.showid;
    
}
Response.Write(WapTool.showTop(this.GetLang("加入购物车|加入购物车|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("姓名和电话不能为空！  ");
        Response.Write("</b><br/>");
    }
    
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<b>我的余额不够支付了！</b><br/>");

    }

    else if (this.INFO == "OK")
    {
        //Response.Write("<b>添加成功！</b><br/>");
        Response.Write("订单号:" + orderVo.orderID + "<br/>");
        Response.Write("总价格:￥" + orderVo.productmoney.ToString("f2") + "[<a href=\"" + this.http_start + "shop/book_view_add2.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showid=" + this.showid + "&amp;r="+this.r+"\">刷新</a>]<br/>");

        if (orderVo.payState == "1")
        {
            Response.Write("您已支付成功！当前余额￥" + this.userVo.RMB.ToString("f2") + "<br/>");
        }
        else
        {
            Response.Write("您已支付失败！当前余额￥" + this.userVo.RMB.ToString("f2") + "<br/>");
        }
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
      
        Response.Write("<br/>");

    }
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<b>");
        Response.Write("购买中，请稍后...</b><br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
        
        Response.Write("<br/>");
    }



    if (this.INFO != "OK" && this.INFO != "ADDOK")
    {
      Response.Write("<b>" + bookVo.book_title + "</b><br/>");
      if (bookVo.book_xinghao != "")
      {
          Response.Write("型号:" + bookVo.book_xinghao + "<br/>");
      }
      
      Response.Write("会员价格:" + bookVo.book_yhjiage.ToString("f2") + "<br/>");
      Response.Write("运费:<select name=\"book_charge\">");
      for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
      {
          Response.Write("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
      }
      Response.Write("</select><br/>");
      Response.Write(this.GetLang("数量|数量|num") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"productcount\" value=\"\"/><br/>");
      
      Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*:<br/>");
      Response.Write("<input type=\"text\" name=\"myname\" value=\"\"/><br/>");
      Response.Write(this.GetLang("联系电话|联系电话|Tel") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"tel\" value=\"\"/><br/>");

      Response.Write(this.GetLang("收货地址|收货地址|address") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"address\" value=\"\"/><br/>");

      Response.Write(this.GetLang("备注|备注|备注") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"remark\" value=\"\"/><br/>");


      Response.Write("<anchor><go href=\"" + http_start + "shop/book_view_add2.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
      Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
      Response.Write("</go>" + this.GetLang("添加|添加|submit") + "</anchor> <br/>");
      Response.Write("说明:直接从RMB帐户支付，我当前余额￥" + userVo.RMB.ToString("f2") + "<br/>");
      

    }
    Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("加入购物车|加入购物车|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("姓名和电话不能为空！  ");
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
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>我的余额不够支付了！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"content\">");
       // Response.Write("<b>添加成功！</b><br/>");
        Response.Write("订单号:" + orderVo.orderID + "<br/>");
        Response.Write("总价格:￥" + orderVo.productmoney.ToString("f2") + "[<a href=\"" + this.http_start + "shop/book_view_add2.aspx?action=OK&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showid=" + this.showid + "&amp;r="+this.r+"\">刷新</a>]<br/>");
        if (orderVo.payState == "1")
        {
            Response.Write("您已支付成功！当前余额￥" + this.userVo.RMB.ToString("f2") + "<br/>");
        }
        else
        {
            Response.Write("您已支付失败！当前余额￥" + this.userVo.RMB.ToString("f2") + "<br/>");
        }

        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
      
        Response.Write("</div>");

    }
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>");
        Response.Write("购买中，请稍后...</b><br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/book_list.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回继续购买</a>]<br/>");
        Response.Write(" [<a href=\"" + http_start + "shop/orderlistmy.aspx?classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看我的订单</a>]<br/>");
        
        Response.Write("</div>");
    }



    if (this.INFO != "OK" && this.INFO != "ADDOK")
    {
        Response.Write("<div class=\"content\">");

    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/book_view_add2.aspx\" method=\"post\">");

    if (bookVo.book_xinghao != "")
    {
        Response.Write("型号:" + bookVo.book_xinghao + "<br/>");
    }

    Response.Write("会员价格:" + bookVo.book_yhjiage.ToString("f2") + "<br/>");
    Response.Write("运费:<select name=\"book_charge\">");
    for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
    {
        Response.Write("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
    }
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("数量|数量|num") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"productcount\" value=\"\"/><br/>");

    Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"myname\" value=\"\"/><br/>");
    Response.Write(this.GetLang("联系电话|联系电话|Tel") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"tel\" value=\"\"/><br/>");

    Response.Write(this.GetLang("收货地址|收货地址|address") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"address\" value=\"\"/><br/>");

    Response.Write(this.GetLang("备注|备注|备注") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"remark\" value=\"\"/><br/>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("添加|添加|Add") + "\"/></form><br/>");
    Response.Write("说明:直接从RMB帐户支付，我当前余额￥"+userVo.RMB.ToString ("f2")+"<br/>");
    Response.Write("</div>");
        
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
     
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


