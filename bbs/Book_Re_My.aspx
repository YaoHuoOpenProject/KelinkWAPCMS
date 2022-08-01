<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re_My.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_Re_My" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                             Response.Write(WapTool.showTop(this.GetLang("查看" + this.touserid + "回复|查看+this.touserid+回複|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
   
    //顶部链接
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">刷新</a> ");
    if(this.ot=="1"){
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">按最新回复</a> ");
    }else{
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">按最早回复</a> ");
    }
    strhtml.Append("<br/>");


    //--------------------管理员
    if (this.CheckManagerLvl("04", "") == true)
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_re_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "\">清空("+this.touserid+")的所有回复</a><br/>");

    }

    //----------------------
    //显示导航分页
    strhtml.Append(linkTOP);

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (ot == "1")
        {
            index = (kk + 1);
        }
        else
        {
            index = (total - kk); 
        }

        strhtml.Append("" + index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a>:");


        strhtml.Append(listVo[i].content + "<br/> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + " <a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bookid + "" + "\">查看</a><br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无回复记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=0" + "\">我的地盘</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{


    strhtml.Append(ERROR);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    //顶部链接
    //strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">刷新</a> ");

    strhtml.Append("<a ");
    if (this.ot != "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">按最新回复</a> ");

    strhtml.Append("<a ");
    if (this.ot == "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }

    strhtml.Append("href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;touserid=" + this.touserid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">按最早回复</a> ");




    strhtml.Append("</div></div>");


    //--------------------管理员
    if (this.CheckManagerLvl("04", "") == true)
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "\">清空(" + this.touserid + ")的所有回复</a><br/>");
        strhtml.Append("</div>");
    }
    
    //----------------------
    //显示导航分页
    strhtml.Append(linkTOP);

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
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
        
        if (ot == "1")
        {
            index = (kk + 1);
        }
        else
        {
            index = (total - kk);
        }

        strhtml.Append("" + index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a>:");


        strhtml.Append(listVo[i].content + "<br/> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + " <a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bookid + "" + "\">查看</a></div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无回复记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=0" + "\">我的地盘</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
