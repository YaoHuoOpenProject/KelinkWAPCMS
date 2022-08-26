<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyDownLink.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyDownLink" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("防盗链接参数设置|防盗链接参数设置|close"), wmlVo));//显示头       

if (ver == "1")
{
    Response.Write("<p>");
    
    if (ERROR != "")
    {
        
        Response.Write(ERROR);
        Response.Write("<br/>");
    }
    if (INFO == "OK")
    {
       
        Response.Write("<b>操作成功！</b>");
        Response.Write("<br/>");
    }
    else if (INFO == "ERR")
    {

        Response.Write("<b>操作失败！</b>");
        Response.Write("<br/>");
    }
    
   

    Response.Write("输入随机数字或字母：<br />");
    Response.Write("<input type=\"text\" name=\"isclose" + r + "\" value=\"" + strisclose + "\" maxlength=\"50\" /><br/>");

    Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifyDownLink.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"isclose\" value=\"$(isclose" + r + ")\"/>"); 
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
 
    

    Response.Write("<br/> <br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));


    Response.Write("</p>");


}
else
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("设置会员UBB过滤|设置会员UBB过滤|close") + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
   if (INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>操作成功！</b>");
        Response.Write("</div>");
    }
   else if (INFO == "ERR")
   {
       Response.Write("<div class=\"tip\">");
       Response.Write("<b>操作失败！</b>");
       Response.Write("</div>");
   }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifyDownLink.aspx\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");

    Response.Write("输入随机数字或字母：<br />");
    Response.Write("<input type=\"text\" name=\"isclose\" value=\"" + strisclose + "\" maxlength=\"50\" /><br/>");
    
    Response.Write("<input type=\"submit\" name=\"submit\" value=\"确 定\" /><br/>");
    Response.Write("</form>");

    Response.Write("<br/> <br/>");
    Response.Write("</div>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  
    Response.Write("</div></div>");
}


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>