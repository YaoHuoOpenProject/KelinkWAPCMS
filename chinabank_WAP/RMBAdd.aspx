<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RMBAdd.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.RMBAdd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    Response.Write(WapTool.showTop(this.GetLang("本站会员手工入款|本站会员手工入款|Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
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
        Response.Write("<a href=\"" + this.http_start + "chinabank_wap/RMBAdd.aspx?action=search&touserid="+this.touserid+"&amp;siteid=" + this.siteid + "\">" + this.GetLang("查看|查看|View") + "</a> ");
        Response.Write("<br/>");
    }
    else if (INFO == "NOTEXIST")
    {
        
        Response.Write("<b>会员不存！</b>");
        Response.Write("<br/>");
    }    else if (this.INFO == "PWERR")
    {
        Response.Write("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        Response.Write("<b>金额需要数字，格式0.00！</b><br/>");

    }
    else if (this.INFO == "NOTMONEY")
    {
        Response.Write("<b>金额需要大于1！</b><br/>");

    }
      
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> <br/><br/>");
    
    if (this.INFO != "OK")
    {
       
        Response.Write("<b>第一步：</b><br/>");
        Response.Write("用户ID：<input type=\"text\" name=\"touserid" + r + "\" value=\"" + touserid + "\" size=\"5\"/>");
        Response.Write("<anchor><go href=\"" + http_start + "chinabank_wap/rmbadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield  name=\"action\"  value=\"search\" />");
        Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
        Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
        Response.Write("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
        Response.Write("</go>" + this.GetLang("查询|查询|Search") + "</anchor><br/>");


        Response.Write("查询结果：<br/>");
        if (touserid != "")
        {

            Response.Write("会员:" + this.touserid + "当前拥有RMB:￥" + this.toRMB);
        }


        Response.Write("<br/>");
        Response.Write("<b>第二步：</b><br/>");

        Response.Write("输入金额：<br/><input type=\"text\" name=\"addrmb" + r + "\" value=\"" + addrmb + "\" size=\"25\"/><br/>");

        Response.Write("备注：<br/><input type=\"text\" name=\"remark" + r + "\" value=\"" + remark + "\" size=\"25\"/><br/>");

        //显示输入框
        Response.Write("方式:<select name=\"state" + r + "\" value=\""+this.state+"\">");
        Response.Write("<option value=\"0\">手工入款</option>");
        Response.Write("<option value=\"1\">手工扣款</option>");
        Response.Write("</select><br/>");

        Response.Write("我的密码：<br/>");
        Response.Write("<input type=\"password\" name=\"changePW" + r + "\" value=\"\"/><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "chinabank_wap/rmbadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
        Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
        Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
        Response.Write("<postfield  name=\"touserid\"  value=\"" + this.touserid + "\"  />");
        Response.Write("<postfield  name=\"backurl\"  value=\"" + this.backurl + "\"  />");
        Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
        Response.Write("<postfield name=\"addrmb\" value=\"$(addrmb" + r + ")\"/>");
        Response.Write("<postfield name=\"changePW\" value=\"$(changePW" + r + ")\"/>");
        Response.Write("<postfield name=\"state\" value=\"$(state" + r + ")\"/>");
        Response.Write("</go>" + this.GetLang("确定|确定|update") + "</anchor><br/>");


    }


    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    Response.Write("<div class=\"title\">" + "本站会员手工入款" + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    Response.Write("<div class=\"tip\">");
    if (INFO == "OK")
    {

        Response.Write("<b>操作成功！</b>");
        Response.Write("<a href=\"" + this.http_start + "chinabank_wap/RMBAdd.aspx?action=search&touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "\">" + this.GetLang("查看|查看|View") + "</a> ");
        Response.Write("<br/>");
    }
    else if (INFO == "NOTEXIST")
    {

        Response.Write("<b>会员不存！</b>");
        Response.Write("<br/>");
    }
    else if (this.INFO == "PWERR")
    {
        Response.Write("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        Response.Write("<b>金额需要数字，格式0.00！</b><br/>");

    }
    else if (this.INFO == "NOTMONEY")
    {
        Response.Write("<b>金额需要大于1！</b><br/>");

    }
        
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    Response.Write("</div>");
    
    

    //显示列表
    Response.Write("<div class=\"subtitle\">");
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a>");
    Response.Write("</div>");

    if (this.INFO != "OK")
    {
       
        Response.Write("<div class=\"content\">");
        Response.Write("<b>第一步：</b><br/>");
        Response.Write("<form id=\"form1\" action=\"" + http_start + "chinabank_wap/rmbadd.aspx\" method=\"post\">");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"search\" />");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\" />");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("用户ID <input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" style=\"height:18px;\" size=\"20\"/>");
        Response.Write("<input type=\"submit\" value=\"查询\" /></form><br/>");
        //Response.Write("查询结果：<br/>");
        if (touserid != "")
        {
            //Response.Write("会员:" + this.touserid + "当前拥有RMB:￥" + this.toRMB);
            Response.Write("当前拥有￥" + this.toRMB);
        }


        Response.Write("<br/>");
        Response.Write("<b>第二步：</b><br/>");
        Response.Write("<form id=\"form1\" action=\"" + http_start + "chinabank_wap/rmbadd.aspx\" method=\"post\">");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + touserid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\" />");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("输入金额 <br/><input type=\"text\" name=\"addrmb\" value=\"" + addrmb + "\" size=\"44\"/><br/>");
        Response.Write("说明原因 <br/><input type=\"text\" name=\"remark\" value=\"感谢支持" + remark + "\" size=\"44\"/><br/>");
        Response.Write("方式 <select name=\"state\">");
        Response.Write("<option value=\"0\">手工入款</option>");
        Response.Write("<option value=\"1\">手工扣款</option>");
        Response.Write("</select><br/>");
        Response.Write("我的密码<br/>");
        Response.Write("<input type=\"password\" style=\"width:96%\" name=\"changePW\" value=\"\"/><br/>");
        Response.Write("<input type=\"submit\" value=\"确定\" />");
        Response.Write("</form>");
        Response.Write("</div>");
    }
    //显示导航分页
    //Response.Write( linkURL );


    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
 
    Response.Write("</div></div>");
                                                                                                     
}
                                                                                                                                                                       
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
