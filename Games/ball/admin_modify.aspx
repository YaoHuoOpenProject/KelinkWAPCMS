<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_modify.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_modify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=bookVo.p_one + "VS" +bookVo.p_two;

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    
  
 
    strhtml.Append(bookVo.p_title + ":");
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("<br/>开赛:" + bookVo.p_TPRtime);
    strhtml.Append("<br/>比赛状态:" + bookVo.p_once);
    strhtml.Append("<br/>即时比分:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("〓上下盘〓");
    if (bookVo.p_isluckone == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=1\">封盘</a>");

    }
    strhtml.Append("<br/>" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=1" + "\">" + paytype1 + "注</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));

    }
    strhtml.Append("<br/>" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=2" + "\">" + paytype2 + "注</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓大小盘〓");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=1\">封盘</a>");

    }
    strhtml.Append("<br/>大(" + bookVo.p_big_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=3" + "\">" + paytype3 + "注</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/>小(" + bookVo.p_small_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=4" + "\">" + paytype4 + "注</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓标准盘〓");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=1\">封盘</a>");

    }
    strhtml.Append("<br/>主胜(" + bookVo.p_bzs_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=5" + "\">" + paytype5 + "注</a>");
    strhtml.Append("<br/>平手(" + bookVo.p_bzp_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=6" + "\">" + paytype6 + "注</a>");
    strhtml.Append("<br/>客胜(" + bookVo.p_bzx_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=7" + "\">" + paytype7 + "注</a>");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("当前总下注" + payCount + "注,下注额" + payCountMoney.ToString("f2") + "币");
    strhtml.Append("<br/>〓管理〓");

    strhtml.Append("<br/>");
    if (bookVo.p_active > 0)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">重开奖</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">开奖</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">修改</a>.<a href=\"" + this.http_start + "games/ball/admin_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">记录</a>.");
    if (bookVo.p_del == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=0\">显示</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=1\">隐藏</a>");

    }

    //strhtml.Append("<br/>抓取状态：正常抓取");
    //strhtml.Append("<br/>关闭抓取");
    strhtml.Append("<br/>走地状态：");
    if (bookVo.p_ison == 1)
    {
        strhtml.Append("走地 ");
    }
    else
    {
        strhtml.Append("非走地 ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_ison.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">编辑</a>");
    strhtml.Append("<br/>封盘时间:" + bookVo.p_oncetime);
    strhtml.Append("<br/>目标ID:" + bookVo.p_id + "");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">返回上级</a> ");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(ERROR);
        strhtml.Append("</div>");
    }
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("新增成功！");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "UPDATEOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("修改成功！");
        strhtml.Append("</div>");
    }
    
    
    
  

    strhtml.Append("<div class=\"content\">");
    strhtml.Append(bookVo.p_title + ":");
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("<br/>开赛:"+bookVo.p_TPRtime);
    strhtml.Append("<br/>比赛状态:" + bookVo.p_once);
    strhtml.Append("<br/>即时比分:" + bookVo.p_result_temp1+":"+bookVo.p_result_temp2);
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("〓上下盘〓");
    if (bookVo.p_isluckone == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=1\">封盘</a>");

    }
    strhtml.Append("<br/>" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=1" + "\">" + paytype1 + "注</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));
   
    }
    strhtml.Append("<br/>" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=2" + "\">" + paytype2 + "注</a>");
    strhtml.Append("<br/>----------<br/>〓大小盘〓");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=1\">封盘</a>");

    }
    strhtml.Append("<br/>大(" + bookVo.p_big_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=3" + "\">" + paytype3 + "注</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));
  
    }
    strhtml.Append("<br/>小(" + bookVo.p_small_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=4" + "\">" + paytype4 + "注</a>");
    
    strhtml.Append("<br/>----------<br/>〓标准盘〓");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=0\">开启</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=1\">封盘</a>");

    }
    strhtml.Append("<br/>主胜(" + bookVo.p_bzs_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=5" + "\">" + paytype5 + "注</a>");
    strhtml.Append("<br/>平手(" + bookVo.p_bzp_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=6" + "\">" + paytype6 + "注</a>");
    strhtml.Append("<br/>客胜(" + bookVo.p_bzx_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=7" + "\">" + paytype7 + "注</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("当前总下注"+payCount+"注,下注额"+payCountMoney.ToString("f2")+"币");
    strhtml.Append("<br/>〓管理〓");
    
    strhtml.Append("<br/>");
    if (bookVo.p_active > 0)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">重开奖</a>");
   
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">开奖</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">修改</a>.<a href=\"" + this.http_start + "games/ball/admin_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">记录</a>.");
    if (bookVo.p_del == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=0&amp;sid="+this.sid+"\">显示</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=1\">隐藏</a>");

    }
    
    //strhtml.Append("<br/>抓取状态：正常抓取");
    //strhtml.Append("<br/>关闭抓取");
    strhtml.Append("<br/>走地状态：");
    if (bookVo.p_ison == 1)
    {
        strhtml.Append("走地 ");
    }
    else
    {
        strhtml.Append("非走地 ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_ison.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">编辑</a>");
    strhtml.Append("<br/>封盘时间:" + bookVo.p_oncetime);
    strhtml.Append("<br/>目标ID:"+bookVo.p_id+"");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">返回上级</a> ");
  
    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
