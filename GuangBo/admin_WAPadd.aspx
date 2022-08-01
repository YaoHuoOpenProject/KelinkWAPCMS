<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.guangbo.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("发表广播信息|发表广播信息|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题不能小于2个字符！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>抱歉，站长还没有配置好发布扣币参数！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的"+siteVo.sitemoneyname+"不够了！</b><br/>");
    }
    else if (this.INFO == "MAX")
    {

        Response.Write("<b>最多发布有效广播为" + max + "条,您已超过了。</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("广播信息成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</b><br/>");

    }

    if (this.classid == "0")
    {
        Response.Write("请先选择分类:<br/>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<a href=\"" + this.http_start + "guangbo/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</a><br/>");

        }
        
    }else if (this.INFO != "OK"){
        //选择栏目
        Response.Write("选择分类:<br/>");
        Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.toclassid + "\">");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");       
        Response.Write(this.GetLang("标题|標題|Title") + "*(30字内):<br/>");
        Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"" + book_title + "\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "(可以为空):<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + book_content + "\" /><br/>");
        Response.Write(this.GetLang("分钟|分钟|分钟") + "*:<select name=\"days" + r + "\">");
               
        for (int i = 0; (showdays != null && i < showdays.Length); i++)
        {
            if (WapTool.IsNumeric(this.showdays[i]) && WapTool.IsNumeric(this.showdays[i]))
                Response.Write("<option value=\"" + this.showdays[i] + "\">" + this.showdays[i] + "分钟" + this.needmoney[i] + siteVo.sitemoneyname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "guangbo/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");       
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"totype\" value=\"" + this.totype + "\"/>");
        Response.Write("<postfield name=\"touserid\" value=\"" + this.touserid + "\"/>");
        Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
        Response.Write("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
        Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        Response.Write("<postfield name=\"days\" value=\"$(days" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("发 布|发 布|submit") + "</anchor><br/>");
        Response.Write("我随身" + siteVo.sitemoneyname + ":" + userVo.money + "<br/><br/>");

    }
  if (base.IsCheckManagerLvl("|00|01|", ""))
  {
      Response.Write("--------<br/>");
      Response.Write("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a><br/>");
      Response.Write("--------<br/>");
  }
    Response.Write("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("发表广播信息|发表广播信息|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("标题不能小于2个字符！  ");
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
    else if (this.INFO == "LOCK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，站长还没有配置好发布扣币参数！</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "MAX")
    {

        Response.Write("<div class=\"tip\"><b>最多发布有效广播为" + max + "条,您已超过了。</b></div>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("广播信息成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.classid == "0")
    {
        Response.Write("<div class=\"content\">");
        
        
        Response.Write("请先选择分类:<br/>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<a href=\"" + this.http_start + "guangbo/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</a><br/>");

        }
        Response.Write("</div>");

    }
    else if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "guangbo/admin_WAPadd.aspx\" method=\"post\">");
           
        //选择栏目
        if (classList != null && classList.Count == 1)
        {
            Response.Write("<input type=\"hidden\" name=\"toclassid\" value=\"" + classList[0].classid + "\"/>");
        }
        else
        {
            Response.Write("选择分类:<br/>");
            Response.Write("<select name=\"toclassid\">");
            //Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
            for (int i = 0; (classList != null && i < classList.Count); i++)
            {
                string select = "";
                if (classList[i].classid.ToString() == toclassid)
                {
                    select = "selected=\"true\"";
                }
                Response.Write("<option " + select + " value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

            }
            Response.Write("</select><br/>");
        }
        Response.Write(this.GetLang("标题|標題|Title") + "*(30字内):<br/>");

        Response.Write("<textarea name=\"book_title\" rows=\"3\" style=\"width:100%\">" + book_title + "</textarea><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "(可以为空):<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + book_content + "</textarea><br/>");
        Response.Write(this.GetLang("分钟|分钟|分钟") + "*:<select name=\"days\">");
        for (int i = 0; (showdays != null && i < showdays.Length); i++)
        {
            if(WapTool.IsNumeric(this.showdays[i])&&WapTool.IsNumeric(this.showdays[i]))
                Response.Write("<option value=\"" + this.showdays[i] + "\">" + this.showdays[i] + "分钟" + this.needmoney[i] + siteVo.sitemoneyname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"totype\" value=\"" + this.totype + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + this.touserid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("发 布|发 布|submit") + "\"/></form>");
        Response.Write("<br/>我随身" + siteVo.sitemoneyname + ":" + userVo.money);
        Response.Write("</div>");
    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


