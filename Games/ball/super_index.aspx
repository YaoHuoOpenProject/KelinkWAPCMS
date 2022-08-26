<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_index.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();



Response.Write(WapTool.showTop("超级串串竟猜", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
 
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！<br/>");

     strhtml.Append("我的超级串投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");

    strhtml.Append("----------<br/>");
    //显示内容
   


    if (this.ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">全部</a>");
    }
    if (this.ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".联赛");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>");
    }

    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">刷新</a>");

    strhtml.Append("<br/>");


    strhtml.Append("赛事名称<input type=\"text\" name=\"p_one" + r + "\" size=\"8\" value=\"" + this.p_one + "\" />");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/super_index.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"p_ison\" value=\"" + p_ison + "\"/>");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
    strhtml.Append("<postfield name=\"p_one\" value=\"$(p_one" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");
    
    strhtml.Append("<br/>请最少选择" + mix + "场比赛,最终返彩以所有选择的比赛结果为准.");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/super_doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=0&amp;page=" + this.CurrentPage + "\">【查看已选择赛事】</a>");
    strhtml.Append("<br/>----------<br/>");




    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        super_indexs = super_indexs + kk;
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            strhtml.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", listVo[i].p_TPRtime) + "<br/>[" + listVo[i].p_title + "]" + listVo[i].p_one + " VS " + listVo[i].p_two);
            if (this.isSelect(listVo[i].ID) == true)
            {
                strhtml.Append(" 已选");
            }
            else
            {
                strhtml.Append(" <a href=\"" + this.http_start + "games/ball/super_book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">选择</a>");
            }

        }

        strhtml.Append("<br/>----------<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无当天赛事记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("----------<br/>");

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
       
        strhtml.Append("【<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">参数配置</a>.");
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">赛事管理</a>】<br/>");
        strhtml.Append("----------<br/>");
    }
    //导航按钮
   
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">超级串串竟猜</div>");

    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！<br/>");


    strhtml.Append("我的超级串投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");
  
    strhtml.Append("</div>");
    //显示内容
    strhtml.Append("<div class=\"subtitle\">");


    if (this.ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\""+this.http_start+"games/ball/super_index.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;ptype=0&amp;sid="+this.sid+"\">全部</a>");
    } 
    if (this.ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".联赛");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>");
    }

    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">刷新</a>");
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/ball/super_index.aspx\" method=\"get\">");
    strhtml.Append("赛事名称:<input type=\"text\" name=\"p_one\" size=\"5\" value=\"" + this.p_one + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"b\" value=\"查询\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"p_ison\" value=\"" + p_ison + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    strhtml.Append("<br/>请最少选择"+mix+"场比赛,最终返彩以所有选择的比赛结果为准.");
    strhtml.Append("<br/><a href=\""+this.http_start+"games/ball/super_doit.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;ptype="+this.ptype+"&amp;id=0&amp;page="+this.CurrentPage+"&amp;sid="+this.sid+"\">【查看已选择赛事】</a>");
    strhtml.Append("</div>");
    

  
    

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        super_indexs = super_indexs + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            strhtml.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", listVo[i].p_TPRtime) + "<br/>[" + listVo[i].p_title + "]" + listVo[i].p_one + " VS " + listVo[i].p_two );
            if (this.isSelect(listVo[i].ID) == true)
            {
                strhtml.Append(" 已选");
            }
            else
            {
                 strhtml.Append(" <a href=\"" + this.http_start + "games/ball/super_book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">选择</a>");
            }

        }
        
        strhtml.Append("</div>");

    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无当天赛事记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


                                                                                                                                                                                      
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("【<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">参数配置</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">赛事管理</a>】");
    strhtml.Append("</div>");
    }
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
