<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_add.aspx.cs" Inherits="KeLin.WebSite.Games.ball.add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="������������";
string selected = "selected=\"true\"";
if (this.ptype == "2")
{
    title = "������������";
}

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    Response.Write("<br/><a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">����WAP2.0�������</a> <br/>");
   
    
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+ptype+"" + "\">�����ϼ�</a> ");

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
    
    
    if (this.INFO != "UPDATEOK" && this.INFO != "ADDOK")
    {
    strhtml.Append("<div class=\"subtitle\">");
    if (this.ptype == "1")
    {
        strhtml.Append("������������.<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">��������</a>");
    
    }
    else
    {
        strhtml.Append("����<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">��������</a>.��������");
    
    }
    strhtml.Append("</div>");
    
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/ball/admin_add.aspx\" method=\"post\">");

        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"flase\" name=\"p_title\" value=\"" + bookVo.p_title + "\"  /><br/>");
        strhtml.Append("����ʱ��<input maxlength=\"500\" type=\"text\" emptyok=\"false\" name=\"p_TPRtime\" value=\"" + bookVo.p_TPRtime + "\"  /><br/>");
        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"false\" name=\"p_one\" value=\"" + bookVo.p_one + "\"/><br/>");
        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"false\" name=\"p_one_lu\" value=\"" + bookVo.p_one_lu.ToString("f2") + "\" /><br/>");
        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"false\" name=\"p_two\" value=\"" + bookVo.p_two + "\" /><br/>");
        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"false\" name=\"p_two_lu\" value=\"" + bookVo.p_two_lu.ToString("f2") + "\" /><br/>");
        if (ptype == "1")
        {
        strhtml.Append("��������<select name=\"p_pn\">");
        strhtml.Append("<option "); if (bookVo.p_pn == 1) strhtml.Append(selected); strhtml.Append(" value=\"1\">����</option>");
        strhtml.Append("<option "); if (bookVo.p_pn == 2) strhtml.Append(selected); strhtml.Append(" value=\"2\">����</option>");
        strhtml.Append("</select>");
        strhtml.Append("<br/>");
        
            strhtml.Append("�����̿�<select name=\"p_pk\">");
            strhtml.Append("<option "); if (bookVo.p_pk == 1) strhtml.Append(selected); strhtml.Append(" value=\"1\">ƽ��</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 2) strhtml.Append(selected); strhtml.Append(" value=\"2\">ƽ��/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 3) strhtml.Append(selected); strhtml.Append(" value=\"3\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 4) strhtml.Append(selected); strhtml.Append(" value=\"4\">����/һ��</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 5) strhtml.Append(selected); strhtml.Append(" value=\"5\">һ��</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 6) strhtml.Append(selected); strhtml.Append(" value=\"6\">һ��/���</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 7) strhtml.Append(selected); strhtml.Append(" value=\"7\">���</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 8) strhtml.Append(selected); strhtml.Append(" value=\"8\">���/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 9) strhtml.Append(selected); strhtml.Append(" value=\"9\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 10) strhtml.Append(selected); strhtml.Append(" value=\"10\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 11) strhtml.Append(selected); strhtml.Append(" value=\"11\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 12) strhtml.Append(selected); strhtml.Append(" value=\"12\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 13) strhtml.Append(selected); strhtml.Append(" value=\"13\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 14) strhtml.Append(selected); strhtml.Append(" value=\"14\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 15) strhtml.Append(selected); strhtml.Append(" value=\"15\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 16) strhtml.Append(selected); strhtml.Append(" value=\"16\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 17) strhtml.Append(selected); strhtml.Append(" value=\"17\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 18) strhtml.Append(selected); strhtml.Append(" value=\"18\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 19) strhtml.Append(selected); strhtml.Append(" value=\"19\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 20) strhtml.Append(selected); strhtml.Append(" value=\"20\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 21) strhtml.Append(selected); strhtml.Append(" value=\"21\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 22) strhtml.Append(selected); strhtml.Append(" value=\"22\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 23) strhtml.Append(selected); strhtml.Append(" value=\"23\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 24) strhtml.Append(selected); strhtml.Append(" value=\"24\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 25) strhtml.Append(selected); strhtml.Append(" value=\"25\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 26) strhtml.Append(selected); strhtml.Append(" value=\"26\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 27) strhtml.Append(selected); strhtml.Append(" value=\"27\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 28) strhtml.Append(selected); strhtml.Append(" value=\"28\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 29) strhtml.Append(selected); strhtml.Append(" value=\"29\">����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 30) strhtml.Append(selected); strhtml.Append(" value=\"30\">����/�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 31) strhtml.Append(selected); strhtml.Append(" value=\"31\">�����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 32) strhtml.Append(selected); strhtml.Append(" value=\"32\">�����/����</option>");
            strhtml.Append("<option "); if (bookVo.p_pk == 33) strhtml.Append(selected); strhtml.Append(" value=\"33\">����</option>");
            strhtml.Append("</select><br/>");
        }
        else
        {
            strhtml.Append("�����̿�<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_pk\" value=\"" + bookVo.p_pk.ToString("f2") + "\" /><br/>");
            
        }
        strhtml.Append("��������<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_big_lu\" value=\"" + bookVo.p_big_lu.ToString("f2") + "\" /><br/>");
        strhtml.Append("С������<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_small_lu\" value=\"" + bookVo.p_small_lu.ToString("f2") + "\" /><br/>");
        if (ptype == "1")
        {
            strhtml.Append("��С�̿�<select name=\"p_dx_pk\">");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 20) strhtml.Append(selected); strhtml.Append(" value=\"20\">0.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 21) strhtml.Append(selected); strhtml.Append(" value=\"21\">0.5/1.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 22) strhtml.Append(selected); strhtml.Append(" value=\"22\">1.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 23) strhtml.Append(selected); strhtml.Append(" value=\"23\">1.0/1.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 1) strhtml.Append(selected); strhtml.Append(" value=\"1\">1.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 2) strhtml.Append(selected); strhtml.Append(" value=\"2\">1.5/2.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 3) strhtml.Append(selected); strhtml.Append(" value=\"3\">2.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 4) strhtml.Append(selected); strhtml.Append(" value=\"4\">2/2.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 5) strhtml.Append(selected); strhtml.Append(" value=\"5\">2.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 6) strhtml.Append(selected); strhtml.Append(" value=\"6\">2.5/3.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 7) strhtml.Append(selected); strhtml.Append(" value=\"7\">3.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 8) strhtml.Append(selected); strhtml.Append(" value=\"8\">3/3.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 9) strhtml.Append(selected); strhtml.Append(" value=\"9\">3.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 10) strhtml.Append(selected); strhtml.Append(" value=\"10\">3.5/4.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 11) strhtml.Append(selected); strhtml.Append(" value=\"11\">4.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 12) strhtml.Append(selected); strhtml.Append(" value=\"12\">4/4.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 13) strhtml.Append(selected); strhtml.Append(" value=\"13\">4.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 14) strhtml.Append(selected); strhtml.Append(" value=\"14\">4.5/5.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 15) strhtml.Append(selected); strhtml.Append(" value=\"15\">5.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 16) strhtml.Append(selected); strhtml.Append(" value=\"16\">5/5.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 17) strhtml.Append(selected); strhtml.Append(" value=\"17\">5.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 18) strhtml.Append(selected); strhtml.Append(" value=\"18\">5.5/6.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 19) strhtml.Append(selected); strhtml.Append(" value=\"19\">6.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 24) strhtml.Append(selected); strhtml.Append(" value=\"24\">6.0/6.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 25) strhtml.Append(selected); strhtml.Append(" value=\"25\">6.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 26) strhtml.Append(selected); strhtml.Append(" value=\"26\">6.5/7.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 27) strhtml.Append(selected); strhtml.Append(" value=\"27\">7.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 28) strhtml.Append(selected); strhtml.Append(" value=\"28\">7.0/7.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 29) strhtml.Append(selected); strhtml.Append(" value=\"29\">7.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 30) strhtml.Append(selected); strhtml.Append(" value=\"30\">7.5/8.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 31) strhtml.Append(selected); strhtml.Append(" value=\"31\">8.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 32) strhtml.Append(selected); strhtml.Append(" value=\"32\">8.0/8.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 33) strhtml.Append(selected); strhtml.Append(" value=\"33\">8.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 34) strhtml.Append(selected); strhtml.Append(" value=\"34\">8.5/9.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 35) strhtml.Append(selected); strhtml.Append(" value=\"35\">9.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 36) strhtml.Append(selected); strhtml.Append(" value=\"36\">9.0/9.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 37) strhtml.Append(selected); strhtml.Append(" value=\"37\">9.5</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 38) strhtml.Append(selected); strhtml.Append(" value=\"38\">9.5/10.0</option>");
            strhtml.Append("<option "); if (bookVo.p_dx_pk == 39) strhtml.Append(selected); strhtml.Append(" value=\"39\">10.0</option>");
            strhtml.Append("</select>");
        }
        else
        {
            strhtml.Append("��С�̿�<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_dx_pk\" value=\"" + bookVo.p_dx_pk.ToString("f2") + "\" /><br/>");
            
        }
        strhtml.Append("<br/>");
        if (ptype == "1")
        {
            strhtml.Append("��ʤ����<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_bzs_lu\" value=\"" + bookVo.p_bzs_lu.ToString("f2") + "\" /><br/>");
            strhtml.Append("ƽ������<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_bzp_lu\" value=\"" + bookVo.p_bzp_lu.ToString("f2") + "\" /><br/>");
            strhtml.Append("��ʤ����<input maxlength=\"500\" type=\"text\" emptyok=\"true\" name=\"p_bzx_lu\" value=\"" + bookVo.p_bzx_lu.ToString("f2") + "\" /><br/>");
        }
        strhtml.Append("�Ƿ��ߵ�<select name=\"p_ison\">");
        strhtml.Append("<option "); if (bookVo.p_ison == 0) strhtml.Append(selected); strhtml.Append(" value=\"0\">��</option>");
        strhtml.Append("<option "); if (bookVo.p_ison == 1) strhtml.Append(selected); strhtml.Append(" value=\"1\">��</option>");
        strhtml.Append("</select>");
        strhtml.Append("<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");

        strhtml.Append("<input type=\"submit\" name=\"ac\" value=\"ȷ�����\"/><br/><br/>");

        strhtml.Append("��С���������׼����д-1�����أ���������ע��С�����׼�̣�<br/>");
        strhtml.Append("����ʱ���ʽ:2012-11-23 20:44:15<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">�����ϼ�</a> ");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
