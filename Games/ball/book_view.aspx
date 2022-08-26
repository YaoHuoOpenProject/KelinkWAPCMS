<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view.aspx.cs" Inherits="KeLin.WebSite.Games.ball.book_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=bookVo.p_one + "VS" +bookVo.p_two;

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    
  
 
    strhtml.Append(bookVo.p_title + ":");
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("<br/>����:" + bookVo.p_TPRtime);
    strhtml.Append("<br/>����״̬:" + bookVo.p_once);
    strhtml.Append("<br/>��ʱ�ȷ�:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("�������̡�");
    if (bookVo.p_isluckone == 1)
    {
        strhtml.Append("(��)");
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
    strhtml.Append("<br/>����С�̡�");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("(��)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=3" + "\">��(" + bookVo.p_big_lu.ToString("f2") + ")</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=4" + "\">С(" + bookVo.p_small_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>����׼�̡�");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("(��)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=5" + "\">��ʤ(" + bookVo.p_bzs_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=6" + "\">ƽ��(" + bookVo.p_bzp_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=7" + "\">��ʤ(" + bookVo.p_bzx_lu.ToString("f2") + ")</a>");
   
    
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;page="+this.page+"" + "\">�����ϼ�</a> ");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    
    
    
  

    strhtml.Append("<div class=\"content\">");
    strhtml.Append(bookVo.p_title + ":");
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("<br/>����:"+bookVo.p_TPRtime);
    strhtml.Append("<br/>����״̬:" + bookVo.p_once);
    strhtml.Append("<br/>��ʱ�ȷ�:" + bookVo.p_result_temp1+":"+bookVo.p_result_temp2);
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�������̡�");
    if (bookVo.p_isluckone == 1)
    {
        strhtml.Append("(��)");
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
    strhtml.Append("<br/>����С�̡�");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("(��)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=3" + "\">��(" + bookVo.p_big_lu.ToString("f2") + ")</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=4" + "\">С(" + bookVo.p_small_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>����׼�̡�");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("(��)");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=5" + "\">��ʤ(" + bookVo.p_bzs_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=6" + "\">ƽ��(" + bookVo.p_bzp_lu.ToString("f2") + ")</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;paytype=7" + "\">��ʤ(" + bookVo.p_bzx_lu.ToString("f2") + ")</a>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;page="+this.page+"" + "\">�����ϼ�</a> ");

    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
