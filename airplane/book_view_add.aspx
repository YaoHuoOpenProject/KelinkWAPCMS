<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_add.aspx.cs" Inherits="KeLin.WebSite.airplane.book_view_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("加入订单|加入订单|content add"), wmlVo));//显示头                                                                                                                                                                       
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
    
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("提交成功！订单号为:" + showid);
        Response.Write(" [<a href=\"" + http_start + "airplane/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a>]");
      
        Response.Write("</b><br/>");

    }
   


  if (this.INFO != "OK"){
      Response.Write("<b>[" + bookVo.planeNum + "]</b>" + bookVo.planeltd + "<br/>");
      Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*:<br/>");
      Response.Write("<input type=\"text\" name=\"myname\" value=\"\"/><br/>");
      Response.Write(this.GetLang("联系电话|联系电话|Tel") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"tel\" value=\"\"/><br/>");
      Response.Write(this.GetLang("航新起飞时间|航新起飞时间|Start Time") + ":<br/>");
      Response.Write("<select name=\"hh\" value=\"1\">");
      for (int i = 0; i < 23; i++)
      {
          Response.Write("<option value=\"" + i.ToString() + "\">" + i.ToString() + "</option>");
      }
      Response.Write("</select>时");
      Response.Write("<select name=\"ss\" value=\"5\">");
      for (int i = 0; i < 60; i += 5)
      {
          Response.Write("<option value=\"" + i.ToString() + "\">" + i.ToString() + "</option>");
      }
      Response.Write("</select>分<br/>");
      Response.Write(this.GetLang("机票张数|机票张数|Ticket Total") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"num\" value=\"\"/><br/>");
      Response.Write(this.GetLang("送票地址|送票地址|Address") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"address\" value=\"\"/><br/>");
      Response.Write(this.GetLang("备注说明|备注说明|Remark") + ":<br/>");
      Response.Write("<input type=\"text\" name=\"content\" value=\"\"/><br/>");

      Response.Write("<anchor><go href=\"" + http_start + "airplane/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
      Response.Write("<postfield name=\"action\" value=\"gomod\" />");
      Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
      Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
      Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
      Response.Write("<postfield name=\"myname\" value=\"$(myname)\" />");
      Response.Write("<postfield name=\"tel\" value=\"$(tel)\" />");
      Response.Write("<postfield name=\"num\" value=\"$(num)\" />");
      Response.Write("<postfield name=\"address\" value=\"$(address)\" />");
      Response.Write("<postfield name=\"content\" value=\"$(content)\" />");
      Response.Write("<postfield name=\"hh\" value=\"$(hh)\" />");
      Response.Write("<postfield name=\"ss\" value=\"$(ss)\" />");
      Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
      Response.Write("</go>" + this.GetLang("提交|提交|submit") + "</anchor> <br/>");
      
      

    }
    Response.Write("<a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("加入订单|加入订单|Add operation") + "</div>");
    
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
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("提交成功！订单号为:" + showid);
        Response.Write(" [<a href=\"" + http_start + "airplane/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a>]");
      
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");

    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "airplane/book_view_add.aspx\" method=\"post\">");

        Response.Write("<b>[" + bookVo.planeNum + "]</b>" + bookVo.planeltd + "<br/>");
        Response.Write(this.GetLang("我的姓名|我的姓名|Name") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"myname\" value=\"\"/><br/>");
        Response.Write(this.GetLang("联系电话|联系电话|Tel") + ":<br/>");    
        Response.Write("<input type=\"text\" name=\"tel\" value=\"\"/><br/>");
        Response.Write(this.GetLang("航新起飞时间|航新起飞时间|Start Time") + ":<br/>");
        Response.Write("<select name=\"hh\" value=\"1\">");
        for (int i = 0; i<23; i++)
        {
            Response.Write("<option value=\"" + i.ToString() + "\">" + i.ToString() + "</option>");
        }
        Response.Write("</select>时");
        Response.Write("<select name=\"ss\" value=\"5\">");
        for (int i = 0; i < 60;i+=5 )
        {
            Response.Write("<option value=\"" + i.ToString() + "\">" + i.ToString() + "</option>");
        }
        Response.Write("</select>分<br/>"); 
        Response.Write(this.GetLang("机票张数|机票张数|Ticket Total") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"num\" value=\"\"/><br/>");
        Response.Write(this.GetLang("送票地址|送票地址|Address") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"address\" value=\"\"/><br/>");
        Response.Write(this.GetLang("备注说明|备注说明|Remark") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"content\" value=\"\"/><br/>");
   

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|Add") + "\"/></form>");
    Response.Write("</div>");
        
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


