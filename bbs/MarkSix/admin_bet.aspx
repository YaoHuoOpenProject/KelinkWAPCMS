<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_bet.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.admin_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("历史开奖|历史开奖|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("删除成功！");

        strhtml.Append("</b> <br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid=" + this.sid + "\">参数配置</a>|开奖管理");
    strhtml.Append("<br/>--------<br/>");
    //显示输入框
    strhtml.Append("年份:<input type=\"text\" name=\"toyears" + r + "\" size=\"4\" value=\"" + toyears + "\"/> ");
    strhtml.Append("期号:<input type=\"text\" name=\"content" + r + "\" size=\"4\" value=\"" + content + "\"/><br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/marksix/admin_bet.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<postfield name=\"toyears\" value=\"$(toyears" + r + ")\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");


    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">手工添加期数</a><br/>");
    strhtml.Append("【清空所有开奖记录】<br/>");
    strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=0&amp;sid=" + this.sid + "\">是</a><br/>");
    strhtml.Append("【清空所有下注记录】<br/>");
    strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1&amp;sid=" + this.sid + "\">是</a><br/>");
    //strhtml.Append("【清空赌神记录】<br/>");
    //strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">是</a><br/>");
    //strhtml.Append("【<a href=\"" + this.http_start + "bbs/marksix/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">返利操作</a>】<br/>");

    strhtml.Append("<br/>--------<br/>");
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



        if (listVo[i].state == 0)
        {

            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">待开奖" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">修改</a>]");
        }
        else
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "[特" + listVo[i].ballTeMa + "]" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            if (listVo[i].state == 1)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">修改</a>]");

                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_Win.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">开奖</a>]");
            }
        }
        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>操作状态顺序</b>：<br/>0.下注(可修改)→1.待返奖励 →开奖→ 2.已结束(可删除,会员可兑奖)<br/><br/>");
    strhtml.Append("<b>手动添加条件</b>：<br/>当前所有记录中不存在（下注）状态时可新增。<br/><br/>");
    strhtml.Append("<b>手动修改条件</b>：<br/>状态在0.下注  或 1.待返奖励  可以修改操作。<br/><br/>");
    strhtml.Append("<b>手动兑奖条件</b>：<br/>状态在 1.待返奖励 可兑奖操作。");


    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid="+this.sid+"\">参数配置</a>|开奖管理</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("删除成功！");


        strhtml.Append("</b> ");
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
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("年份:<input type=\"text\" name=\"toyears\" size=\"4\" value=\"" + toyears + "\"/> 期号:<input type=\"text\" name=\"content\" size=\"4\" value=\"" + content + "\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"查询\"/></form> ");
  
 
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">手工添加期数</a><br/>");
    strhtml.Append("【清空所有开奖记录】<br/>");
    strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=0&amp;sid=" + this.sid + "\">是</a><br/>");
    strhtml.Append("【清空所有下注记录】<br/>");
    strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1&amp;sid=" + this.sid + "\">是</a><br/>");
   // strhtml.Append("【清空赌神记录】<br/>");
   // strhtml.Append("否|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">是</a><br/>");
   // strhtml.Append("【<a href=\"" + this.http_start + "bbs/marksix/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">返利操作</a>】<br/>");

    strhtml.Append("</div>");
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
        
        
        
        if (listVo[i].state == 0)
        {
            
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">待开奖" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            strhtml.Append("[<a href=\""+this.http_start+"bbs/marksix/book_modify.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+listVo[i].id+"&amp;sid="+this.sid+"\">修改</a>]");
        }
        else
        {
            strhtml.Append(listVo[i].years + "年第" + listVo[i].period + "期:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;toyear="+listVo[i].years+"&amp;content="+listVo[i].period+"&amp;sid=" + sid + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "[特" + listVo[i].ballTeMa + "]" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            if (listVo[i].state == 1)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">修改</a>]");
       
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_Win.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">开奖</a>]");
            }
        }
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("<b>操作状态顺序</b>：<br/>0.下注(可修改)→1.待返奖励 →开奖→ 2.已结束(可删除,会员可兑奖)<br/><br/>"); 
    strhtml.Append("<b>手动添加条件</b>：<br/>当前所有记录中不存在（下注）状态时可新增。<br/><br/>");
    strhtml.Append("<b>手动修改条件</b>：<br/>状态在0.下注  或 1.待返奖励  可以修改操作。<br/><br/>");
    strhtml.Append("<b>手动兑奖条件</b>：<br/>状态在 1.待返奖励 可兑奖操作。");
    

    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
