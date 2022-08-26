<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyAllUBB.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyAllUBB" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("设置会员UBB过滤|设置会员UBB过滤|close"), wmlVo));//显示头       

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
    
   

    Response.Write("请选择：<br />");
    Response.Write("<select name=\"isclose" + r + "\" value=\"" + strisclose + "\"><option value=\"0\">0_不过滤任何UBB(安全级别:底)</option><option value=\"1\">1_只过滤链接UBB(安全级别:底)</option><option value=\"2\">2_只过滤图片UBB(安全级别:中)</option><option value=\"3\">3_过滤所有UBB(安全级别:高)</option></select><br/>");

   
    Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifyAllUBB.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifyAllUBB.aspx\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
    
    Response.Write("请确认：<br />");
    Response.Write("<select name=\"isclose\" value=\"" + strisclose + "\"><option value=\"" + this.strisclose + "\">" + this.strisclose + "</option><option value=\"0\">0_不过滤任何UBB(安全级别:底)</option><option value=\"1\">1_只过滤链接UBB(安全级别:底)</option><option value=\"2\">2_只过滤图片UBB(安全级别:中)</option><option value=\"3\">3_过滤所有UBB(安全级别:高)</option></select><br/>");
    
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