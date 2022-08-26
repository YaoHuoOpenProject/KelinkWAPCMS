<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view.aspx.cs" Inherits="KeLin.WebSite.Games.ball.book_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page="+this.page+"&amp;paytype=1" + "\">" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ")</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=2" + "\">" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓大小盘〓");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=3" + "\">大(" + bookVo.p_big_lu.ToString("f2") + ")</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=4" + "\">小(" + bookVo.p_small_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓标准盘〓");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=5" + "\">主胜(" + bookVo.p_bzs_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=6" + "\">平手(" + bookVo.p_bzp_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=7" + "\">客胜(" + bookVo.p_bzx_lu.ToString("f2") + ")</a>");
   
    
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;page="+this.page+"" + "\">返回上级</a> ");
   
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
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=1" + "\">" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ")</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=2" + "\">" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓大小盘〓");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=3" + "\">大(" + bookVo.p_big_lu.ToString("f2") + ")</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=4" + "\">小(" + bookVo.p_small_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>〓标准盘〓");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("(封)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=5" + "\">主胜(" + bookVo.p_bzs_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=6" + "\">平手(" + bookVo.p_bzp_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=7" + "\">客胜(" + bookVo.p_bzx_lu.ToString("f2") + ")</a>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;page="+this.page+"" + "\">返回上级</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
