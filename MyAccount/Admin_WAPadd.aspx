<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.myAccount.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("添加帐单|添加帐单|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("带*项不能为空！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }    
   
    else if (this.INFO == "NUM")
    {

        Response.Write("<b>请按格式填写！</b><br/>");
    }
    
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("添加成功！  ");
        
        Response.Write("</b><br/>");

    }
   


  //if (this.INFO != "OK"){
        //选择栏目

        Response.Write("<select name=\"totype" + r + "\" value=\"" + this.totype + "\">");
        Response.Write("<option value=\"1\">收入</option>");
        Response.Write("<option value=\"0\">支出</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("日期|日期|day") + "(" + paytime + ")*:<br/>");
        Response.Write("<input type=\"text\" name=\"paytime" + r + "\" value=\"" + paytime + "\"/><br/>");
        Response.Write(this.GetLang("￥|￥|￥") + "(0.00)*:<br/>");
        Response.Write("<input type=\"text\" name=\"money" + r + "\" value=\"" + money + "\"/><br/>");
        Response.Write(this.GetLang("备注|备注|remark") + ":<br/>");
        Response.Write("<input type=\"text\"  name=\"remark" + r + "\" value=\"" + remark + "\" /><br/>");
        
      
        Response.Write("<anchor><go href=\"" + http_start + "myAccount/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");       
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"totype\" value=\"$(totype" + r + ")\"/>");
        Response.Write("<postfield name=\"paytime\" value=\"$(paytime" + r + ")\"/>");
        Response.Write("<postfield name=\"money\" value=\"$(money" + r + ")\"/>");
        Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");        
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("添 加|添 加|submit") + "</anchor><br/>");
        

    //}

    Response.Write("<a href=\"" + this.http_start + "myAccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("添加帐单|添加帐单|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("带*项不能为空！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    
    
    else if (this.INFO == "NUM")
    {

        Response.Write("<div class=\"tip\"><b>请按格式填写！</b></div>");

    }
    
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("添加成功！  ");
        
        Response.Write("</div>");

    }

    //if (this.INFO != "OK")
    //{
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "myaccount/admin_WAPadd.aspx\" method=\"post\">");
        Response.Write("<select name=\"totype\">");
        Response.Write("<option value=\"" + this.totype + "\">" + this.totype + "</option>");
        Response.Write("<option value=\"1\">1_收入</option>");
        Response.Write("<option value=\"0\">0_支出</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("日期|日期|day") + "(" + paytime + ")*:<br/>");
        Response.Write("<input type=\"text\" name=\"paytime\" value=\"" + paytime + "\"/><br/>");
        Response.Write(this.GetLang("￥|￥|￥") + "(0.00)*:<br/>");
        Response.Write("<input type=\"text\" name=\"money\" value=\"" + money + "\"/><br/>");
        Response.Write(this.GetLang("备注|备注|remark") + ":<br/>");
        Response.Write("<input type=\"text\"  name=\"remark\" value=\"" + remark + "\" /><br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");                
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("添 加|添 加|submit") + "\"/></form>");
       
        Response.Write("</div>");
    //}


        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
        Response.Write("<a href=\"" + this.http_start + "myAccount/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
        Response.Write("</div>");
        Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


