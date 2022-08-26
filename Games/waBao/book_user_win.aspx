<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_user_win.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.book_user_win" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle="我要兑奖";

Response.Write(WapTool.showTop(showtitle, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        
        strhtml.Append("<b>兑奖成功！");


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
       
    }
    else if (this.INFO == "NO")
    {
       
        strhtml.Append("<b>暂无我的兑奖记录!");
        strhtml.Append("</b><br/>");
        

    }

    //显示列表

    if (this.INFO == "")
    {
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

            strhtml.Append(string.Format("{0:dd日HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "年第" + listVo[i].peroid + "期]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>投注[" + GamesClassManager.Tool.GetwaBao_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]共" + listVo[i].num + "注，每注金额" + listVo[i].betMoney + "；结果:");
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
            allmoney = allmoney + listVo[i].GetMoney;
            //strhtml.Append("");


            strhtml.Append("<br/>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<b>暂无我的兑奖记录！</b><br/>");
        }
    }
    //显示导航分页
    strhtml.Append("----------<br/>");
    strhtml.Append("【共赢:" + allmoney.ToString("f2") + "个" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">确定兑奖</a>】");
    
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + showtitle + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("兑奖成功！");
       

        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("暂无我要兑奖记录!");
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    

    //显示列表
    if (this.INFO == "")
    {


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

            strhtml.Append(string.Format("{0:dd日HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "年第" + listVo[i].peroid + "期]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>投注[" + GamesClassManager.Tool.GetwaBao_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]共" + listVo[i].num + "注，每注金额" + listVo[i].betMoney + "；结果:");
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
            allmoney = allmoney + listVo[i].GetMoney;


            strhtml.Append("</div>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无我要兑奖记录！</div>");
        }
    }

    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("【共赢:" + allmoney.ToString("f2") + "个" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">确定兑奖</a>】");
    strhtml.Append("</div>");
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
