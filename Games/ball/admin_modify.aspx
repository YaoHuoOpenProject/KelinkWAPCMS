<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_modify.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_modify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=1\">����</a>");

    }
    strhtml.Append("<br/>" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=1" + "\">" + paytype1 + "ע</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));

    }
    strhtml.Append("<br/>" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=2" + "\">" + paytype2 + "ע</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>����С�̡�");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=1\">����</a>");

    }
    strhtml.Append("<br/>��(" + bookVo.p_big_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=3" + "\">" + paytype3 + "ע</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));

    }
    strhtml.Append("<br/>С(" + bookVo.p_small_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=4" + "\">" + paytype4 + "ע</a>");
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/>����׼�̡�");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=1\">����</a>");

    }
    strhtml.Append("<br/>��ʤ(" + bookVo.p_bzs_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=5" + "\">" + paytype5 + "ע</a>");
    strhtml.Append("<br/>ƽ��(" + bookVo.p_bzp_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=6" + "\">" + paytype6 + "ע</a>");
    strhtml.Append("<br/>��ʤ(" + bookVo.p_bzx_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=7" + "\">" + paytype7 + "ע</a>");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("��ǰ����ע" + payCount + "ע,��ע��" + payCountMoney.ToString("f2") + "��");
    strhtml.Append("<br/>�������");

    strhtml.Append("<br/>");
    if (bookVo.p_active > 0)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�ؿ���</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">����</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�޸�</a>.<a href=\"" + this.http_start + "games/ball/admin_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ��</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">��¼</a>.");
    if (bookVo.p_del == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=0\">��ʾ</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=1\">����</a>");

    }

    //strhtml.Append("<br/>ץȡ״̬������ץȡ");
    //strhtml.Append("<br/>�ر�ץȡ");
    strhtml.Append("<br/>�ߵ�״̬��");
    if (bookVo.p_ison == 1)
    {
        strhtml.Append("�ߵ� ");
    }
    else
    {
        strhtml.Append("���ߵ� ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_ison.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�༭</a>");
    strhtml.Append("<br/>����ʱ��:" + bookVo.p_oncetime);
    strhtml.Append("<br/>Ŀ��ID:" + bookVo.p_id + "");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">�����ϼ�</a> ");
   
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
    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(ERROR);
        strhtml.Append("</div>");
    }
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("�����ɹ���");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "UPDATEOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("�޸ĳɹ���");
        strhtml.Append("</div>");
    }
    
    
    
  

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
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckone=1\">����</a>");

    }
    strhtml.Append("<br/>" + bookVo.p_one + "(" + bookVo.p_one_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=1" + "\">" + paytype1 + "ע</a>");
    if (ptype == "1")
    {
        strhtml.Append("<br/>" + GamesClassManager.Tool.GetBallCNname_from_p_pn(bookVo.p_pn) + " " + GamesClassManager.Tool.GetBallCNname_from_p_pk(bookVo.p_pk));
    }
    else
    {
        strhtml.Append("<br/>" + bookVo.p_pk.ToString("f2"));
   
    }
    strhtml.Append("<br/>" + bookVo.p_two + "(" + bookVo.p_two_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=2" + "\">" + paytype2 + "ע</a>");
    strhtml.Append("<br/>----------<br/>����С�̡�");
    if (bookVo.p_islucktwo == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_islucktwo=1\">����</a>");

    }
    strhtml.Append("<br/>��(" + bookVo.p_big_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=3" + "\">" + paytype3 + "ע</a><br/>");
    if (ptype == "1")
    {
        strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(bookVo.p_dx_pk));
    }
    else
    {
        strhtml.Append(bookVo.p_dx_pk.ToString("f2"));
  
    }
    strhtml.Append("<br/>С(" + bookVo.p_small_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=4" + "\">" + paytype4 + "ע</a>");
    
    strhtml.Append("<br/>----------<br/>����׼�̡�");
    if (bookVo.p_isluckthr == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=0\">����</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_isluckthr=1\">����</a>");

    }
    strhtml.Append("<br/>��ʤ(" + bookVo.p_bzs_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=5" + "\">" + paytype5 + "ע</a>");
    strhtml.Append("<br/>ƽ��(" + bookVo.p_bzp_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=6" + "\">" + paytype6 + "ע</a>");
    strhtml.Append("<br/>��ʤ(" + bookVo.p_bzx_lu.ToString("f2") + ") <a href=\"" + this.http_start + "games/ball/admin_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "&amp;searchtype=7" + "\">" + paytype7 + "ע</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��ǰ����ע"+payCount+"ע,��ע��"+payCountMoney.ToString("f2")+"��");
    strhtml.Append("<br/>�������");
    
    strhtml.Append("<br/>");
    if (bookVo.p_active > 0)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�ؿ���</a>");
   
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">����</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�޸�</a>.<a href=\"" + this.http_start + "games/ball/admin_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ��</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">��¼</a>.");
    if (bookVo.p_del == 1)
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=0&amp;sid="+this.sid+"\">��ʾ</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;p_del=1\">����</a>");

    }
    
    //strhtml.Append("<br/>ץȡ״̬������ץȡ");
    //strhtml.Append("<br/>�ر�ץȡ");
    strhtml.Append("<br/>�ߵ�״̬��");
    if (bookVo.p_ison == 1)
    {
        strhtml.Append("�ߵ� ");
    }
    else
    {
        strhtml.Append("���ߵ� ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_ison.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">�༭</a>");
    strhtml.Append("<br/>����ʱ��:" + bookVo.p_oncetime);
    strhtml.Append("<br/>Ŀ��ID:"+bookVo.p_id+"");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">�����ϼ�</a> ");
  
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
