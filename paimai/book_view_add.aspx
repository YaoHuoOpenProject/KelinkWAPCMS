<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_add.aspx.cs" Inherits="KeLin.WebSite.paimai.book_view_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("我要出价|我要出价|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "MIN")
    {
        Response.Write("<b>");
        Response.Write("价格底于起拍价或底于最高最价者！  ");
        Response.Write("</b><br/>");
    }else if(this.INFO=="NOMONEY"){
        Response.Write("<b>");
        Response.Write("您的帐户不足了！  ");
        Response.Write("</b><br/>");
    }
    
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("出价成功！<br/>");

        Response.Write(" [<a href=\"" + http_start + "paimai/book_view.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回查看</a>]<br/>");
        
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "END")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>已结束</b><br/>");
        Response.Write("</div>");

    }

    if (this.INFO != "OK" && this.INFO != "END")
    {
      Response.Write("<b>" + bookVo.book_title + "</b><br/>");
      if (orderVo != null)
      {
          Response.Write("当前最高出价:" + orderVo.productmoney + "("+orderVo.nickname+")<br/>");
      }else{

          Response.Write("起拍底价:" + bookVo.book_yhjiage+ "<br/>");
      }
      if (bookVo.book_jiage > 0)
      {
          Response.Write("一口价:" + bookVo.book_jiage + "<br/>");
      }
     
      Response.Write("你当前有"+siteVo.sitemoneyname+":"+userVo.money+"<br/>");
      Response.Write("我出价：<br/>");
      Response.Write("<input type=\"text\" format=\"*N\" name=\"productmoney"+r+"\" value=\""+productmoney+"\"/><br/>");
      Response.Write(this.GetLang("留言|留言|留言") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"remark"+r+"\" value=\""+remark+"\"/><br/>");
   


      Response.Write("<anchor><go href=\"" + http_start + "paimai/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
      Response.Write("<postfield name=\"action\" value=\"gomod\" />");
      Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
      Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
      Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
      Response.Write("<postfield name=\"productmoney\" value=\"$(productmoney"+r+")\" />");
      Response.Write("<postfield name=\"remark\" value=\"$(remark"+r+")\" />");    
      
      Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
      Response.Write("</go>" + this.GetLang("确定|确定|submit") + "</anchor> <br/>");
      
      

    }
  Response.Write("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.page + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
  Response.Write("<a href=\"" + this.http_start + "paimai/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
  Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("我要出价|我要出价|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "MIN")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>");
        Response.Write("价格底于起拍价或底于最高最价者！  ");
        Response.Write("</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>");
        Response.Write("您的帐户不足了！  ");
        Response.Write("</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("出价成功！ ");
        
        Response.Write(" <a class=\"urlbtn\" href=\"" + http_start + "paimai/book_view.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">返回查看</a> <br/>");
        
      
        Response.Write("</div>");

    }
    else if (this.INFO == "END")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>已结束</b><br/>");
        Response.Write("</div>");

    }

    if (this.INFO != "OK" && this.INFO != "END")
    {
        Response.Write("<div class=\"content\">");

    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "paimai/book_view_add.aspx\" method=\"post\">");
    Response.Write("<b>"+ bookVo.book_title + "</b><br/>");
    if (orderVo != null)
    {
        Response.Write("当前最高出价:" + orderVo.productmoney + "(" + orderVo.nickname + ")<br/>");
    }
    else
    {

        Response.Write("起拍底价:" + bookVo.book_yhjiage + "<br/>");
    }
    if (bookVo.book_jiage > 0)
    {
        Response.Write("一口价:" + bookVo.book_jiage + "<br/>");
    }


    Response.Write("您当前拥有" + siteVo.sitemoneyname + ":" + userVo.money + "<br/>");
    Response.Write("我出价：<br/>");
    Response.Write("<input type=\"text\" format=\"*N\" name=\"productmoney\" value=\"" + productmoney + "\"/><br/>");
    Response.Write(this.GetLang("留言|留言|留言") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"remark\" value=\""+remark+"\"/><br/>");
        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("确定|确定|确定") + "\"/></form>");
    Response.Write("</div>");
        
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.page + "&amp;id="+this.id+"\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "paimai/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


