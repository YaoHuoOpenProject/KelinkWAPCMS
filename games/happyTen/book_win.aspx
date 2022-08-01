<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_win.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_win" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if (this.INFO == "gowin"){
    wmlVo.strUrl = "games/happyTen/book_win.aspx?action=doit&amp;siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;id="+this.id +"&amp;r="+this.r;
    wmlVo.timer = "1";  
 }
Response.Write(WapTool.showTop(this.GetLang("开奖操作|开奖操作|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    //strhtml.Append("<div class=\"subtitle\">开奖操作</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("开奖完成！|开奖完成！|Successfully add"));



        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        //strhtml.Append("</div>");
    }

    else if (this.INFO == "EXIST")
    {
        //strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>出错了：状态在1待返奖，才可以执行开奖。</b><br/>");
        //strhtml.Append("</div>");
    }
    else if (this.INFO == "gowin")
    {
        //strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>执行中...请耐心等待...</b><br/>");
        //strhtml.Append("</div>");
    }

    //显示输入框
    if (this.INFO != "OK" && this.INFO != "gowin")
    {

        strhtml.Append("" + bookVo.years + "年第 <b>" + bookVo.period + "</b> 期开奖结果如下:<br/>");
        strhtml.Append("" + bookVo.ball1 + "-" + bookVo.ball2 + "-" + bookVo.ball3 + "-" + bookVo.ball4 + "-" + bookVo.ball5 + "-" + bookVo.ball6 + "-" + bookVo.ball7 + "-" + bookVo.ball8 + "");
       
        strhtml.Append("<br/>状态:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
        strhtml.Append("查看:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + bookVo.years + "&amp;content=" + bookVo.period + "\">【下注统计】</a>");
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_win.aspx?action=gowin&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;r=" + this.r + "\">【确认开奖】</a><br/><br/>");
        strhtml.Append("说明:点确认后，请耐心等待，不能重复点击！");
        strhtml.Append("<br/>");
    }



    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">开奖操作</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("开奖完成！|开奖完成！|Successfully add"));
       


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
 
    else if (this.INFO == "EXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>出错了：状态在1待返奖，才可以执行开奖。</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "gowin")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>执行中...请耐心等待...</b><br/>");
        strhtml.Append("</div>");
    }
   
    //显示输入框
    if (this.INFO != "OK" && this.INFO!="gowin")
    {
     
        strhtml.Append("<div class=\"subtitle\">"+bookVo.years+"年第 <b>" + bookVo.period + "</b> 期开奖结果如下:</div>");
        strhtml.Append("<div class=\"content\">" + bookVo.ball1 + "-" + bookVo.ball2 + "-" + bookVo.ball3 + "-" + bookVo.ball4 + "-" + bookVo.ball5 + "-" + bookVo.ball6 + "-" + bookVo.ball7 + "-" + bookVo.ball8 + "");
        strhtml.Append("<br/>状态:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
        strhtml.Append("查看:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + bookVo.years + "&amp;content=" + bookVo.period + "\">【下注统计】</a>");
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<a href=\""+this.http_start+"games/happyTen/book_win.aspx?action=gowin&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"&amp;r="+this.r+"&amp;sid="+this.sid+"\">【确认开奖】</a><br/><br/>");
        strhtml.Append("说明:点确认后，请耐心等待，不能重复点击！");
        strhtml.Append("</div>");
    }



    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
