<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO == "OK"){
    if ("1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;
    }
    else
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_re.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;

    }
}
Response.Write(WapTool.showTop(this.GetLang("�鿴�ظ�|�鿴���}|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
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
    else if (this.INFO == "TITLEMAX")
    {       
       
            strhtml.Append("<b>�������" + this.content_max + "�֡�</b><br/>");
       
    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
    }
    else if (this.INFO == "ERROR_Secret")
    {

        strhtml.Append("<b>���Ŵ������������ϵվ����ȡ��</b><br/>");
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
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<b>�㵱ǰ��ֻ��:" + userVo.money + "����������Ҫ�۵���" + getmoney2 + "��</b><br/>");
    }
    if (this.INFO == "")
    {
        //��������
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">ˢ��</a>.");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">�����»ظ�</a>.");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">������ظ�</a>.");
            
        }
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;mainuserid=" + this.mainuserid + "&amp;go=" + this.r + "\">¥���ظ�</a> ");
       
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a>.");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a>");
        strhtml.Append("<br/>");
        if (bookVo.islock == 0)
        {
            if (this.reply != "")
            {
                strhtml.Append("<b>�ظ�" + this.reply + "¥:</b><br/>");
                strhtml.Append("<select name=\"sendmsg2"+r+"\">");
                strhtml.Append("<option value=\"\">֪ͨ" + this.reply + "¥��</option>");
                strhtml.Append("<option value=\"0\">��</option>");
                strhtml.Append("<option value=\"1\">��</option>");
                strhtml.Append("</select><br/>");
            }
            //��ʾ�����
            strhtml.Append("<select name=\"face\">");
            strhtml.Append("<option value=\"\">����</option>");
            for (int i = 0; (facelistImg != null && i < this.facelistImg.Length); i++)
            {
                strhtml.Append("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
            }
            strhtml.Append("</select>");
            strhtml.Append("<select name=\"sendmsg" + r + "\" value=\"\">");
            strhtml.Append("<option value=\"0\">֪ͨ¥����</option>");
            strhtml.Append("<option value=\"0\">��</option>");
            strhtml.Append("<option value=\"1\">��</option>");
            strhtml.Append("</select><br/>");
            strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"" + reShowInfo + "\" maxlength=\"500\"/><br/>");
            if (this.isNeedSecret == true)
            {
                strhtml.Append("���氵��*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

            }
            strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
            strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
            strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
            strhtml.Append("<postfield name=\"sendmsg\" value=\"$(sendmsg" + r + ")\"/>");
            strhtml.Append("<postfield name=\"sendmsg2\" value=\"$(sendmsg2" + r + ")\"/>");
            strhtml.Append("<postfield name=\"face\" value=\"$(face)\"/>");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<postfield name=\"reply\" value=\"" + reply + "\"/>");
            if (this.isNeedSecret == true)
            {
                strhtml.Append("<postfield name=\"secret\" value=\"$(secret)\"/>");
            }
            strhtml.Append("<postfield name=\"touserid\" value=\"" + this.GetRequestValue("touserid") + "\"/>");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            //strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/book_re.aspx?action=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
            strhtml.Append("</go>����ظ�</anchor> <a href=\"" + this.http_start + "bbs/book_re_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>");
            strhtml.Append("<br/>");
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
                if (index == 1)
                {
                    strhtml.Append("[ɳ��]");
                }
                else if (index == 2)
                {
                    strhtml.Append("[����]");
                }
                else if (index == 3)
                {
                    strhtml.Append("[���]");
                }
                else
                {
                    strhtml.Append("[" + index + "¥]");
                }
            }

            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">�ͷ�</a>]");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("[<b>�ý�:" + listVo[i].myGetMoney + "</b>]");
            }

            //--------------------����Ա
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney_free.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;touserid=" + listVo[i].userid + "&amp;siteid=" + this.siteid + "\">��</a>]");
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
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;touserid=" + listVo[i].userid + "&amp;ot=" + this.ot + "\">��</a>]");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("�ظ�" + listVo[i].reply + "¥:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">�鿴" + listVo[i].isdown + "������</a>}");
            }

            strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "<br/>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("���޻ظ���¼��<br/>");
        }
        //��ʾ������ҳ
        strhtml.Append(linkURL);
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"&amp;lpage="+lpage+"" + "\">��������</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����б�</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����
    strhtml.Append("<!--web-->");
    
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
    else if (this.INFO == "TITLEMAX")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�������" + this.content_max + "�֡�</b></div>");

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
    else if (this.INFO == "ERROR_Secret")
    {

        strhtml.Append("<div class=\"tip\"><b>���Ŵ������������ϵվ����ȡ��</b><br/></div>");
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
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<div class=\"tip\"><b>�㵱ǰ��ֻ��:" + userVo.money + "����������Ҫ�۵���" + getmoney2 + "��</b></div>");
    }
    if (this.INFO == "")
    {
        //��������
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">�����»ظ�</a> ");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">������ظ�</a> ");
        }
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;mainuserid=" + this.mainuserid + "&amp;go=" + this.r + "\">¥���ظ�</a> ");
       
        
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">ˢ��</a> ");
       
        strhtml.Append("</div>");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">" + this.GetLang("�鿴�ظ�|�鿴���}|View Reply") + "</div>");
        strhtml.Append("<div class=\"content\">");
        if (bookVo.islock == 0)
        {
            strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_re.aspx\" method=\"post\">");
           
            if (this.reply != "")
            {
                strhtml.Append("<b>�ظ�" + this.reply + "¥:</b>");
                strhtml.Append("<select name=\"sendmsg2\">");
                strhtml.Append("<option value=\"\">֪ͨ" + this.reply + "¥��</option>");
                strhtml.Append("<option value=\"0\">��</option>");
                strhtml.Append("<option value=\"1\">��</option>");
                strhtml.Append("</select><br/>");
            }
            //��ʾ�����
            strhtml.Append("<select name=\"face\">");
            strhtml.Append("<option value=\"\">����</option>");
            for (int i = 0; (facelistImg != null && i < this.facelistImg.Length); i++)
            {
                strhtml.Append("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
            }
            strhtml.Append("</select>");
            strhtml.Append("<select name=\"sendmsg\">");
            strhtml.Append("<option value=\"\">֪ͨ¥����</option>");
            strhtml.Append("<option value=\"0\">��</option>");
            strhtml.Append("<option value=\"1\">��</option>");
            strhtml.Append("</select><br/>");
            //strhtml.Append("<input type=\"text\" name=\"content\" value=\"" + this.reShowInfo + "\" maxlength=\"200\"/><br/>");
            strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\">" + this.reShowInfo + "</textarea><br/>");
            if (this.isNeedSecret == true)
            {
                strhtml.Append("���氵��*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

            }
       
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"reply\" value=\"" + reply + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"touserid\" value=\"" + this.GetRequestValue("touserid") + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
            //strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/book_re.aspx?action=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
            strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"����ظ�\"/>");
            strhtml.Append("<div class=\"bt1\">");
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>");
            strhtml.Append("</div>");
            strhtml.Append("</form>");
        }
        strhtml.Append("</div>");

        //��ʾ�б�
        strhtml.Append("<!--listS-->"); 
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

            strhtml.Append("<table><tr><td valign=\"top\" align=\"center\" style=\"width:50px;\">");
            if (showhead != "1")
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\"><div style=\"width:50px;height:50px;border-width: 0px;-moz-border-radius: 5px;-khtml-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;padding:0px;background:url(" + WapTool.GetHeadImgURL(http_start, listVo[i].headimg) + "); background-size:100% 100%\"></div></a>");
            }
            strhtml.Append("<p align=\"center\">");
            
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
                if (index == 1)
                {
                    strhtml.Append("[ɳ��]");
                }
                else if (index == 2)
                {
                    strhtml.Append("[����]");
                }
                else if (index == 3)
                {
                    strhtml.Append("[���]");
                }
                else
                {
                    strhtml.Append("[" + index + "¥]");
                }
            }
            
            strhtml.Append("</p></td><td style=\"width:100%;padding-left:5px\">");

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>&nbsp;" + WapTool.GetOnline(http_start, listVo[i].isonline, listVo[i].sex.ToString()) + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "</span><br/>");
            string type = WapTool.GetSiteDefault(siteVo.Version, 27);
            strhtml.Append(WapTool.GetHandle(siteVo.lvlNumer, listVo[i].expr, listVo[i].money, type));
            strhtml.Append("." + WapTool.GetLevl(siteVo.lvlNumer, listVo[i].expr, listVo[i].money, type));
            if (WapTool.GetMyID(listVo[i].idname, this.lang).IndexOf('/') < 0)
            {
                strhtml.Append("." + WapTool.GetMyID(listVo[i].idname, this.lang));
            }
            strhtml.Append("<br/>");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("�ظ�" + listVo[i].reply + "¥:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">�鿴" + listVo[i].isdown + "������</a>}");
            }

            strhtml.Append("<br/>&nbsp;<p align=\"right\">");
            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">�ͷ�</a>");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("&nbsp;<b>�ý�:" + listVo[i].myGetMoney + "</b>");
            }

            //--------------------����Ա
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/SendMoney_free.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;touserid=" + listVo[i].userid + "&amp;siteid=" + this.siteid + "\">�ͱ�</a>");

                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ��</a>");
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">���</a>");

                if (listVo[i].book_top == 1)
                {
                    strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">����</a>");
                }
                else
                {
                    strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">�ö�</a>");
                }
            }
            else if (this.userid == listVo[i].userid.ToString())  //�Լ�ɾ���Լ�������
            {
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">ɾ��</a>");
            }
            strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;touserid=" + listVo[i].userid + "&amp;ot=" + this.ot + "\">�ظ�</a>");
            strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mainuserid=" + listVo[i].userid + "&go=" + r + "&sid=" + this.sid + "\">ֻ��TA</a>");
            


            kk = kk + 1;
            strhtml.Append("</p>");
            strhtml.Append("</td></tr></table>");
            strhtml.Append("</div>");
        }
        
       

        
        
        if (listVo == null)
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("���޻ظ���¼��");
            strhtml.Append("</div>");
        }

        strhtml.Append("<!--listE-->");
        
        
        //��ʾ������ҳ
        
            strhtml.Append(linkURL);
        
    }

    //��ʾ���԰�
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">��������</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
   
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
