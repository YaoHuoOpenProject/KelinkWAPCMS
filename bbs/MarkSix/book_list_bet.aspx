<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list_bet.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.book_list_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle="开奖记录";
if (touserid == this.userid)
{
    showtitle = "我的投注记录";
}
Response.Write(WapTool.showTop(showtitle, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">返回</a><br/>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");


    }
    else if (this.INFO == "ERR_FORMAT")
    {

        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {

        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("<br/>");

    }

    strhtml.Append("我的投注|<a href=\"" + this.http_start + "bbs/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">我要兑奖</a><br/>");
        
    //显示输入框
    strhtml.Append("年份:<input type=\"text\" name=\"toyear" + r + "\" size=\"4\" value=\"" + toyear + "\"/> ");
    strhtml.Append("期号:<input type=\"text\" name=\"content" + r + "\" size=\"4\" value=\"" + content + "\"/> 玩法ID:<input type=\"text\" name=\"types" + r + "\" size=\"4\" value=\"" + types + "\"/><br/>");
    strhtml.Append("会员ID:<input type=\"text\" name=\"touserid" + r + "\" size=\"10\"  value=\"" + touserid + "\"/><br/>");
    strhtml.Append("状态:<select name=\"tostate" + r + "\" value=\"" + tostate + "\">");
    strhtml.Append("<option value=\"\">_所有</option>");
    strhtml.Append("<option value=\"0\">0_待开奖</option>");
    strhtml.Append("<option value=\"1\">1_已开奖</option>");
    strhtml.Append("<option value=\"2\">2_未中奖</option>");
    strhtml.Append("<option value=\"3\">3_已中奖</option>");
    strhtml.Append("<option value=\"4\">4_未兑奖</option>");
    strhtml.Append("<option value=\"5\">5_已兑奖</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/MarkSix/book_list_bet.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<postfield name=\"toyear\" value=\"$(toyear" + r + ")\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"tostate\" value=\"$(tostate" + r + ")\"/>");
    strhtml.Append("<postfield name=\"types\" value=\"$(types" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");

    strhtml.Append("<br/>--------<br/>");
    //显示统计
    if (WapTool.IsNumeric(toyear) == true && WapTool.IsNumeric(content) == true)
    {
        this.GetLastInfo(toyear, content);
        strhtml.Append("<b>" + toyear + "年" + content + "期统计</b>");
        strhtml.Append("<br/>");
        strhtml.Append("参与人数:" + this.last_people + "<br/>");
        strhtml.Append("下注金额:" + this.last_money + " 个" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("下注注数:" + this.last_doit + "<br/>");
        strhtml.Append("中奖人数:" + this.last_people_win + "<br/>");
        strhtml.Append("中奖注数:" + this.last_doit_win + "<br/>");
        strhtml.Append("中奖奖金:" + this.last_money_win + " 个" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("<br/>");

    }

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }

        strhtml.Append(string.Format("{0:dd日HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "年第" + listVo[i].peroid + "期]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "&amp;sid=" + this.sid + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>投注[" + GamesClassManager.Tool.GetMarkSix_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]共" + listVo[i].num + "注，每注金额" + listVo[i].betMoney + "；结果:");
        if (listVo[i].state == 0)
        {
            strhtml.Append("待开奖");
        }
        else if (listVo[i].state == 1)
        {
            strhtml.Append("已开奖");
        }

        if (listVo[i].state == 1 && listVo[i].GetMoney == 0)
        {
            strhtml.Append("未中奖");
        }
        if (listVo[i].state == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("中奖");
        }

        if (listVo[i].state == 1 && listVo[i].attribute == 0 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("未兑奖");
        }
        else if (listVo[i].state == 1 && listVo[i].attribute == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("已兑奖");
        }
        if (listVo[i].GetMoney > 0)
        {
            strhtml.Append("，返:" + listVo[i].GetMoney);
        }

        strhtml.Append("【<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid+ "&amp;sid=" + this.sid + "\">查看贴子</a>】");


        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + showtitle);
     strhtml.Append("|<a href=\"" + this.http_start + "bbs/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">我要兑奖</a><br/>");
       
    strhtml.Append("</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("</div>");

    }
    //显示输入框
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/book_list_bet.aspx\" method=\"get\">");
    strhtml.Append("年份:<input type=\"text\" name=\"toyear\" size=\"4\" value=\"" + toyear + "\"/> ");

    strhtml.Append("期号:<input type=\"text\" name=\"content\" size=\"4\" value=\"" + content + "\"/> 玩法ID<input type=\"text\" name=\"types\" size=\"4\" value=\"" + types + "\"/><br/>");
    strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" size=\"10\"  value=\"" + touserid + "\"/><br/>");
    strhtml.Append("状态:<select name=\"tostate\">");
    strhtml.Append("<option value=\"" + tostate + "\">" + tostate + "</option>");
    strhtml.Append("<option value=\"\">_所有</option>");
    strhtml.Append("<option value=\"0\">0_待开奖</option>");
    strhtml.Append("<option value=\"1\">1_已开奖</option>");
    strhtml.Append("<option value=\"2\">2_未中奖</option>");
    strhtml.Append("<option value=\"3\">3_已中奖</option>");
    strhtml.Append("<option value=\"4\">4_未兑奖</option>");
    strhtml.Append("<option value=\"5\">5_已兑奖</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"查询\"/></form> ");
  
 
    strhtml.Append("</div>");
    //显示统计
    if (WapTool.IsNumeric(toyear) == true && WapTool.IsNumeric(content) == true)
    {
        this.GetLastInfo(toyear, content);
        strhtml.Append("<div class=\"subtitle\">"+toyear+"年"+content+"期统计</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("参与人数:" + this.last_people + "<br/>");
        strhtml.Append("下注金额:" + this.last_money + " 个" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("下注注数:" + this.last_doit + "<br/>");
        strhtml.Append("中奖人数:" + this.last_people_win + "<br/>");
        strhtml.Append("中奖注数:" + this.last_doit_win + "<br/>");
        strhtml.Append("中奖奖金:" + this.last_money_win + " 个" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("</div>");

    }

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }

        strhtml.Append(string.Format("{0:dd日HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "年第" + listVo[i].peroid + "期]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "&amp;sid=" + this.sid + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>投注[" + GamesClassManager.Tool.GetMarkSix_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]共" + listVo[i].num + "注，每注金额" + listVo[i].betMoney + "；结果:");
        if (listVo[i].state == 0)
        {
            strhtml.Append("待开奖");
        }
        else if (listVo[i].state == 1)
        {
            strhtml.Append("已开奖");
        }

        if (listVo[i].state == 1 && listVo[i].GetMoney == 0)
        {
            strhtml.Append("未中奖");
        }
        if (listVo[i].state == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("中奖");
        }

        if (listVo[i].state == 1 && listVo[i].attribute == 0 && listVo[i].GetMoney>0)
        {
            strhtml.Append("未兑奖");
        }
        else if (listVo[i].state == 1 && listVo[i].attribute == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("已兑奖");
        }
        if (listVo[i].GetMoney > 0)
        {
            strhtml.Append("，返:" + listVo[i].GetMoney);
        }
        strhtml.Append("【<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid + "&amp;sid=" + this.sid + "\">查看贴子</a>】");

        
        
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
  
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
