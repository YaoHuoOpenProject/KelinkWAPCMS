<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re_BAK.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_Re_BAK" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO == "OK"){
    if ("1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;
    }
    else
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_re_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;

    }
}
Response.Write(WapTool.showTop("��ʷ����."+this.GetLang("�鿴�ظ�|�鿴���}|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        
        strhtml.Append("<b>�ظ��ɹ���</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>��˺���ʾ��</b> ");
        }
        strhtml.Append("���" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + allMoney + "����þ���:" + getexpr + "<br/> ");
        strhtml.Append("��ת��...<a href=\"" + this.http_start + wmlVo.strUrl + "" + "\">����</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>�ظ���������" + contentmax + "�֣�</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>�������ѳ����������ƣ�" + this.KL_CheckBBSreCount + " �������ӣ�������������</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>��Ǹ�����Ѿ����������������ע�ⷢ������</b><br/>");
    }
    if (this.INFO == "")
    {
        //��������
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">ˢ��</a> ");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">�����»ظ�</a> ");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">������ظ�</a> ");
        }
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
        strhtml.Append("<br/>");
        if (bookVo.islock == 0)
        {
            if (this.reply != "")
            {
                strhtml.Append("<b>�ظ�" + this.reply + "¥:</b><br/>");
            }
            //��ʾ�����
            
            strhtml.Append("��ʷ���ݣ����ܻظ�<br/>");
        }

        

        //��ʾ�б�

        kk = kk + ((CurrentPage - 1) * pageSize) - 1;
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

            if (listVo[i].book_top == 1 && this.CurrentPage == 1)
            {
                strhtml.Append("[��¥]");
            }
            else
            {
                strhtml.Append("[" + index + "¥]");
            }

            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">�ͷ�</a>]");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("[<b>�÷�:" + listVo[i].myGetMoney + "</b>]");
            }

            //--------------------����Ա
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ</a>]");
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");

                if (listVo[i].book_top == 1)
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">����</a>]");
                }
                else
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");
                }
            }
            else if (this.userid == listVo[i].userid.ToString())  //�Լ�ɾ���Լ�������
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ</a>]");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("�ظ�" + listVo[i].reply + "¥:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">�鿴" + listVo[i].isdown + "������</a>}");
            }

            strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "<br/>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("���޻ظ���¼��<br/>");
        }
        //��ʾ������ҳ
        strhtml.Append(linkURL);
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"&amp;lpage="+lpage+"" + "\">��������</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����б�</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("�鿴�ظ�|�鿴���}|View Reply") + "</div>");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�ظ��ɹ���</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>��˺���ʾ��</b> ");
        }
        strhtml.Append("���" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + allMoney + "����þ���:" + getexpr + "<br/> ");
        strhtml.Append("��ת��...<a href=\"" + this.http_start + wmlVo.strUrl + "" + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�ظ���������" + contentmax + "�֣�</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "MAX")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�������ѳ����������ƣ�" + this.KL_CheckBBSreCount + " �������ˣ�������������</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "LOCK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>��Ǹ�����Ѿ����������������ע�ⷢ������</b><br/>");
        strhtml.Append("</div>");
    }
    if (this.INFO == "")
    {
        //��������
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">ˢ��</a> ");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">�����»ظ�</a> ");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">������ظ�</a> ");
        }
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
        strhtml.Append("<br/>");
        if (bookVo.islock == 0)
        {
            if (this.reply != "")
            {
                strhtml.Append("<b>�ظ�" + this.reply + "¥:</b><br/>");
            }
            strhtml.Append("��ʷ���ݣ����ܻظ�<br/>");
        }
        strhtml.Append("</div>");

        //��ʾ�б�

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

            if (listVo[i].book_top == 1 && this.CurrentPage == 1)
            {
                strhtml.Append("[��¥]");
            }
            else
            {
                strhtml.Append("[" + index + "¥]");
            }

            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">�ͷ�</a>]");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("[<b>�÷�:" + listVo[i].myGetMoney + "</b>]");
            }

            //--------------------����Ա
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ</a>]");
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");

                if (listVo[i].book_top == 1)
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">����</a>]");
                }
                else
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");
                }
            }
            else if (this.userid == listVo[i].userid.ToString())  //�Լ�ɾ���Լ�������
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ</a>]");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">��</a>]");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("�ظ�" + listVo[i].reply + "¥:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">�鿴" + listVo[i].isdown + "������</a>}");
            }

            strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "</div>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("���޻ظ���¼��");
            strhtml.Append("</div>");
        }
        //��ʾ������ҳ
        strhtml.Append(linkURL);
    }

    //��ʾ���԰�
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
   
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
