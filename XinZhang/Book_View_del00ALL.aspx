<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_del00ALL.aspx.cs" Inherits="KeLin.WebSite.XinZhang.Book_View_del00ALL" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("删除勋章", wmlVo));//显示头  
                                                                                                                                                                    
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   //if(adVo.threeShowTop!=""){
   //   strhtml.Append(adVo.threeShowTop+"<br/>");
   //}

   if (this.INFO == "OK")
   {
       strhtml.Append("<b>*修改成功</b><br/>");
   }
   else if (this.INFO == "NOFORMAT")
   {
       strhtml.Append("<b>*名称不能为空间，或价格要数值！</b><br/>");
   }
   else if (this.INFO == "NOPASS")
   {
       strhtml.Append("<b>*密码错误，请重新录入。</b><br/>");
  
   }
    
  if (this.INFO != "OK")
   {
       strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid"+r+"\" value=\""+this.tositeid+"\" size=\"8\"/><br/>");
       strhtml.Append("(网站ID为0时，清空所有站)<br/>");
       strhtml.Append("我的密码：<input type=\"text\" name=\"pw\" value=\"\" size=\"8\"/><br/>");
       strhtml.Append("<anchor><go href=\"" + http_start + "xinzhang/Book_View_del00all.aspx\" method=\"post\" accept-charset=\"utf-8\">");
       strhtml.Append("<postfield name=\"action\" value=\"godel\" />");
       strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
       strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
       strhtml.Append("<postfield name=\"pw\" value=\"$(pw)\" />");
       strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid" + r + ")\" />");   
    
       strhtml.Append("<postfield name=\"lpage\" value=\"" + (this.lpage) + "\" />");
       strhtml.Append("<postfield name=\"ordertype\" value=\"" + (this.ordertype) + "\" />");
       strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
       strhtml.Append("</go>确定删除</anchor> <br/>");
   }
  
    strhtml.Append("<a href=\"" + this.http_start + "XinZhang/admin_userlistWAP00.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"&amp;ordertype="+this.ordertype +"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    //显示广告
    //if (adVo.threeShowTop != "")
    //{
    //    strhtml.Append(adVo.threeShowTop );
    //}
    strhtml.Append("<div class=\"subtitle\">删除勋章</div>");
    
 
    
    if (this.INFO == "OK")
   {
       strhtml.Append("<div class=\"tip\"><b>*删除成功！</b></div>");
   }
    else if (this.INFO == "NOFORMAT")
   {
       strhtml.Append("<div class=\"tip\"><b>*名称不能为空间，或价格要数值！</b></div>");
   }
   else if (this.INFO == "NOPASS")
   {
       strhtml.Append("<div class=\"tip\"><b>密码错误，请重新录入。</b></div>");
  
   }

    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "xinzhang/Book_View_del00all.aspx\" method=\"post\">");
        strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid\" value=\""+this.tositeid+"\" size=\"8\"/><br/>");
       strhtml.Append("(网站ID为0时，清空所有站)<br/>");
        strhtml.Append("我的密码:<input type=\"text\" name=\"pw\" value=\"" + pw + "\" size=\"8\"/><br/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
       
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + (this.lpage) + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"ordertype\" value=\"" + ordertype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\" />");
        strhtml.Append("<input type=\"submit\" name=\"\" value=\"确定删除\"/><br/>");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "XinZhang/admin_userlistWAP00.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "&amp;ordertype="+this.ordertype +"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
