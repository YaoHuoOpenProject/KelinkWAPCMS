<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toMoneylvl.aspx.cs" Inherits="KeLin.WebSite.bbs.toMoneylvl" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("币种和经验规则设置|币种和经验规则设置|Content of the money"), wmlVo));//显示头                                                                                                                                                                       
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
       
        Response.Write("<b>更新成功！</b>");
        Response.Write("<br/>");
    }


    //显示列表

    Response.Write("<b>币种使用规则：</b><br/>");
    Response.Write("发贴奖励币：<input type=\"text\" name=\"top1"+r+"\" value=\"" + top1 + "\" size=\"5\"/><br/>");
    Response.Write("回贴奖励币：<input type=\"text\" name=\"top2" + r + "\" value=\"" + top2 + "\" size=\"5\"/><br/>");
    Response.Write("加精奖励币：<input type=\"text\" name=\"top3" + r + "\" value=\"" + top3 + "\" size=\"5\"/><br/>");
    Response.Write("置顶奖励币：<input type=\"text\" name=\"top4" + r + "\" value=\"" + top4 + "\" size=\"5\"/><br/>");
    Response.Write("推荐奖励币：<input type=\"text\" name=\"top5" + r + "\" value=\"" + top5 + "\" size=\"5\"/><br/>");
    Response.Write("发文件贴限制币：<input type=\"text\" name=\"top6" + r + "\" value=\"" + top6 + "\" size=\"5\"/><br/>");
    Response.Write("经验转币手续费：<input type=\"text\" name=\"top7" + r + "\" value=\"" + top7 + "\" size=\"5\"/>%<br/>");
    Response.Write("银行取款手续费：<input type=\"text\" name=\"top8" + r + "\" value=\"" + top8 + "\" size=\"5\"/>%<br/>");
    Response.Write("贴子设为专题送：<input type=\"text\" name=\"top9" + r + "\" value=\"" + top9 + "\" size=\"5\"/><br/>");
    Response.Write("贴子转到下载送：<input type=\"text\" name=\"top10" + r + "\" value=\"" + top10 + "\" size=\"5\"/><br/>");
    Response.Write("在线一分钟送币：0个<br/>");
    Response.Write("------------------<br />");
    Response.Write("<b>经验使用规则：</b><br/>");
    Response.Write("发贴奖励数：<input type=\"text\" name=\"down1" + r + "\" value=\"" + down1 + "\" size=\"5\"/><br/>");
    Response.Write("回贴奖励数：<input type=\"text\" name=\"down2" + r + "\" value=\"" + down2 + "\" size=\"5\"/><br/>");
    Response.Write("加精奖励数：<input type=\"text\" name=\"down3" + r + "\" value=\"" + down3 + "\" size=\"5\"/><br/>");
    Response.Write("置顶奖励数：<input type=\"text\" name=\"down4" + r + "\" value=\"" + down4 + "\" size=\"5\"/><br/>");
    Response.Write("推荐奖励数：<input type=\"text\" name=\"down5" + r + "\" value=\"" + down5 + "\" size=\"5\"/><br/>");
    Response.Write("发文件贴限制：<input type=\"text\" name=\"down6" + r + "\" value=\"" + down6 + "\" size=\"5\"/><br/>");
    Response.Write("经验转币比率：<input type=\"text\" name=\"down7" + r + "\" value=\"" + down7 + "\" size=\"5\"/>：1<br/>");
    Response.Write("存款利(月)息：<input type=\"text\" name=\"down8" + r + "\" value=\"" + down8 + "\" size=\"5\"/>%<br/>");
    Response.Write("贴子设为专题送：<input type=\"text\" name=\"down9" + r + "\" value=\"" + down9 + "\" size=\"5\"/><br/>");
    Response.Write("贴子转到下载送：<input type=\"text\" name=\"down10" + r + "\" value=\"" + down10 + "\" size=\"5\"/><br/>");
    Response.Write("在线一分钟送：<input type=\"text\" name=\"down11" + r + "\" value=\"" + down11 + "\" size=\"3\"/>个<br/>");
    
    Response.Write("<anchor><go href=\"" + http_start + "bbs/toMoneylvl.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"top1\" value=\"$(top1" + r + ")\"/>");
    Response.Write("<postfield name=\"top2\" value=\"$(top2" + r + ")\"/>");
    Response.Write("<postfield name=\"top3\" value=\"$(top3" + r + ")\"/>");
    Response.Write("<postfield name=\"top4\" value=\"$(top4" + r + ")\"/>");
    Response.Write("<postfield name=\"top5\" value=\"$(top5" + r + ")\"/>");
    Response.Write("<postfield name=\"top6\" value=\"$(top6" + r + ")\"/>");
    Response.Write("<postfield name=\"top7\" value=\"$(top7" + r + ")\"/>");
    Response.Write("<postfield name=\"top8\" value=\"$(top8" + r + ")\"/>");
    Response.Write("<postfield name=\"top9\" value=\"$(top9" + r + ")\"/>");
    Response.Write("<postfield name=\"top10\" value=\"$(top10" + r + ")\"/>");

    Response.Write("<postfield name=\"down1\" value=\"$(down1" + r + ")\"/>");
    Response.Write("<postfield name=\"down2\" value=\"$(down2" + r + ")\"/>");
    Response.Write("<postfield name=\"down3\" value=\"$(down3" + r + ")\"/>");
    Response.Write("<postfield name=\"down4\" value=\"$(down4" + r + ")\"/>");
    Response.Write("<postfield name=\"down5\" value=\"$(down5" + r + ")\"/>");
    Response.Write("<postfield name=\"down6\" value=\"$(down6" + r + ")\"/>");
    Response.Write("<postfield name=\"down7\" value=\"$(down7" + r + ")\"/>");
    Response.Write("<postfield name=\"down8\" value=\"$(down8" + r + ")\"/>");
    Response.Write("<postfield name=\"down9\" value=\"$(down9" + r + ")\"/>");
    Response.Write("<postfield name=\"down10\" value=\"$(down10" + r + ")\"/>");
    Response.Write("<postfield name=\"down11\" value=\"$(down11" + r + ")\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    Response.Write("【<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    //导航按钮
    Response.Write("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("币种和经验规则设置||") + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    if (INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b>");
        Response.Write("</div>");
    }
    
    
    Response.Write("<div class=\"content\">");
    Response.Write("<form id=\"form1\" action=\"" + http_start + "bbs/toMoneylvl.aspx\" method=\"post\">");        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");

    //显示列表
    Response.Write("<b>币种使用规则：</b><br/>");
    Response.Write("发贴奖励币：<input type=\"text\" name=\"top1\" value=\"" + top1 + "\" size=\"5\"/><br/>");
    Response.Write("回贴奖励币：<input type=\"text\" name=\"top2\" value=\"" + top2 + "\" size=\"5\"/><br/>");
    Response.Write("加精奖励币：<input type=\"text\" name=\"top3\" value=\"" + top3 + "\" size=\"5\"/><br/>");
    Response.Write("置顶奖励币：<input type=\"text\" name=\"top4\" value=\"" + top4 + "\" size=\"5\"/><br/>");
    Response.Write("推荐奖励币：<input type=\"text\" name=\"top5\" value=\"" + top5 + "\" size=\"5\"/><br/>");
    Response.Write("发文件贴限制币：<input type=\"text\" name=\"top6\" value=\"" + top6 + "\" size=\"5\"/><br/>");
    Response.Write("经验转币手续费：<input type=\"text\" name=\"top7\" value=\"" + top7 + "\" size=\"5\"/>%<br/>");
    Response.Write("银行取款手续费：<input type=\"text\" name=\"top8\" value=\"" + top8 + "\" size=\"5\"/>%<br/>");
    Response.Write("贴子设为专题送：<input type=\"text\" name=\"top9\" value=\"" + top9 + "\" size=\"5\"/><br/>");
    Response.Write("贴子转到下载送：<input type=\"text\" name=\"top10\" value=\"" + top10 + "\" size=\"5\"/><br/>");
    Response.Write("在线一分钟送币：0个<br/>");
    Response.Write("------------------<br />");
    Response.Write("<b>经验使用规则：</b><br/>");
    Response.Write("发贴奖励数：<input type=\"text\" name=\"down1\" value=\"" + down1 + "\" size=\"5\"/><br/>");
    Response.Write("回贴奖励数：<input type=\"text\" name=\"down2\" value=\"" + down2 + "\" size=\"5\"/><br/>");
    Response.Write("加精奖励数：<input type=\"text\" name=\"down3\" value=\"" + down3 + "\" size=\"5\"/><br/>");
    Response.Write("置顶奖励数：<input type=\"text\" name=\"down4\" value=\"" + down4 + "\" size=\"5\"/><br/>");
    Response.Write("推荐奖励数：<input type=\"text\" name=\"down5\" value=\"" + down5 + "\" size=\"5\"/><br/>");
    Response.Write("发文件贴限制：<input type=\"text\" name=\"down6\" value=\"" + down6 + "\" size=\"5\"/><br/>");
    Response.Write("经验转币比率：<input type=\"text\" name=\"down7\" value=\"" + down7 + "\" size=\"5\"/>：1<br/>");
    Response.Write("存款利(月)息：<input type=\"text\" name=\"down8\" value=\"" + down8 + "\" size=\"5\"/>%<br/>");
    Response.Write("贴子设为专题送：<input type=\"text\" name=\"down9\" value=\"" + down9 + "\" size=\"5\"/><br/>");
    Response.Write("贴子转到下载送：<input type=\"text\" name=\"down10\" value=\"" + down10 + "\" size=\"5\"/><br/>");
    Response.Write("在线一分钟送：<input type=\"text\" name=\"down11\" value=\"" + down11 + "\" size=\"3\"/>个<br/>");
    Response.Write("<input type=\"submit\" value=\"确定更新\" />");
    Response.Write("【<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    Response.Write("</form>");
    Response.Write("</div>");
 
    //导航按钮
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");

                                                                                                                                                                           
}
                                                                                                                                                                               
                                                                                                                                                                           
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
