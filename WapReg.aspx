<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapReg.aspx.cs" Inherits="KeLin.WebSite.WapReg" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//���ֶ������ĺ���
string m1,m2,m3;
m1 = "13556000271";
m2 = "13556000271";
m3 = "13119529349";
StringBuilder strhtml = new StringBuilder();
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("ע����ͨ��Ա|ע����ͨ��Ա|Reg"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{

    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        //�����ʼ�
        string title = "��ϲ��ע���Ա�ɹ���";
        string content = "�ҵ��û�����" + tousername + "\n�ҵĻ�ԱID��" + this.userid + "\n�ҵ����룺" + topassword + "\n�뱣�ܺ������ʺ���Ϣ��\n" + siteVo.sitename + "��ӭ�� " + this.http_start + "\n";
        string content2 = "";
        if (this.isclose == "5")
        {
            content2 = content2 + "\n\n �������µ�ַ���м����ʺ�:" + this.http_start + "wapreg.aspx?action=checkuser&siteid=" + this.siteid + "&touserid=" + this.userid + "&checkcode=" + checkcode_lockuser + "";
        }

        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content + content2, false);        
        strhtml.Append("<b>" + title + "</b><br/>");
        strhtml.Append("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        strhtml.Append("ϵͳ�ѽ�������Ϣ������������" + toemail + "��" + this.EMAIL_INFO + "<br/>");
        if (this.isclose == "5")
        {
            strhtml.Append("���¼����������м����ʺš�<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ϵ�¼|���ϵ�¼|Please Login") + "</a><br/>");
        }
    }   
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
    }
    else if (this.INFO == "REGCODEERR")
    {
        strhtml.Append("<b>��������Ч��</b><br/>");
        if (this.regcodeUserid > 0)
        {
            strhtml.Append("<b>�ѱ���Ա��<a href=\""+this.http_start +"bbs/userinfo.aspx?siteid="+this.siteid +"&amp;touserid="+this.regcodeUserid +"\">" + this.regcodeUserid + "</a>ʹ�ã�</b><br/>");
        }
        else if (this.regcodeUserid==-1)
        {
            strhtml.Append("<b>�������벻�棡</b><br/>");
        }
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("�������Ϊ�գ�|�������Ϊ�գ�|not null!") + "</b><br/>");
    }
    else if (this.INFO == "MAILERR")
    {
        strhtml.Append("<b>�����ʽ����</b><br/>");
    }
    else if (this.INFO == "CHECKERR")
    {
        strhtml.Append("<b>" + this.GetLang("У�������(���һֱ��������ϵ����Ա�����ı�����)|У�������|checkcode error!") + "</b><br/>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        strhtml.Append("<b>" + this.GetLang("�û���ֻ����Ӣ�Ļ����֣�|�û���ֻ����Ӣ�Ļ����֣�|username need en or num!") + "</b><br/>");
    }
    else if (this.INFO == "MAXLEN")
    {
        strhtml.Append("<b>" + this.GetLang("�û�������Ҫ����" + this.len + "λ��|�û�������Ҫ����" + this.len + "λ��|username to more than " + this.len + " words!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        strhtml.Append("<b>" + this.GetLang("�û����Ѵ��ڣ�|�û����Ѵ��ڣ�|username exist!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        strhtml.Append("<b>" + this.GetLang("�ǳ��Ѵ��ڣ�|�ǳ��Ѵ���2�֣�|nickname exist!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTEMAIL")
    {
        strhtml.Append("<b>�����ַ�Ѵ��ڣ������һ����</b><br/>");
    }

    //��ʼ��ʾ
    if (this.isclose == "2")
    {
        strhtml.Append("<b>" + this.GetLang("��վ��ʱ�ر�ע�ᣡ|��վ��ʱ�ر�ע�ᣡ|Close reg!") + "</b><br/>");
       

    }
    else if (this.INFO != "OK")
    {
        //�ֶ�ע��
        if ((this.isclose == "0" || this.isclose == "3" || this.isclose == "4" || this.isclose == "5") && KL_SMS_ALLREG == "")
        {

            strhtml.Append(this.GetLang("�û������ֻ�����|�û������ֻ�����|username or mobile") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tousername" + r + "\" value=\""+this.tousername+"\"/><br/>");
            
            strhtml.Append(this.GetLang("�ǳ�|�ǳ�|nickname") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tonickname" + r + "\" value=\""+this.tonickname+"\"/><br/>");
            

            strhtml.Append(this.GetLang("����|����|password") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"topassword" + r + "\" value=\"" + this.topassword + "\"/><br/>");

            strhtml.Append(this.GetLang("����,����ȡ������|����,����ȡ������|email"));
            if (this.isclose == "5")
            {
                strhtml.Append(",������֤���ܼ����ʻ�");
            }
            strhtml.Append("*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
           

            strhtml.Append(this.GetLang("�Ա�|�Ա�|sex ") + "*:");
            strhtml.Append("<select name=\"tosex" + r + "\" value=\"" + this.tosex + "\">");
            strhtml.Append("<option value=\"0\">Ů</option>");
            strhtml.Append("<option value=\"1\">��</option>");
            strhtml.Append("</select><br/>");
            if (this.isclose == "4")
            {
                strhtml.Append(this.GetLang("������|������|������") + "*:");
                strhtml.Append("<input type=\"text\" name=\"regcode" + r + "\" value=\"" + this.regcode + "\" size=\"8\"/><br/>");
            
            }

            strhtml.Append(this.GetLang("��֤��|��֤��|code check") + "*:");
            strhtml.Append("<input type=\"text\" name=\"codecheck" + r + "\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
            if (this.TJ != "")
            {
                strhtml.Append("�Ƽ���:" + this.TJ + "<br/>");
            }
            strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[����ͬ�ⱾվЭ��]|[����ͬ�ⱾվЭ��]|[�� ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                strhtml.Append("��ӭ�����뱾վ��μӽ��������ۣ�Ϊά�����Ϲ������������ȶ��������Ծ������������<br/>");
                strhtml.Append("һ�� �������ñ�վΣ�����Ұ�ȫ��й¶�������ܣ������ַ�������Ἧ��ĺ͹���ĺϷ�Ȩ�棬�������ñ�վ���������ƺʹ����Ƿ���Ϣ��<br/>");
                strhtml.Append("�����������أ����Լ������ۺ���Ϊ����<br/>");
                strhtml.Append("����������ͬ�ⲻ�����������,����,����,�̰�,���г����,���ŵ�,�������Ļ����κ�Υ�����ɵ����ݣ�<br/>");
            }
            
            strhtml.Append("<anchor><go href=\"" + http_start + "wapreg.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"goadd\"/>");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<postfield name=\"codechecks\" value=\"" + r + "\"/>");
            strhtml.Append("<postfield name=\"tousername\" value=\"$(tousername" + r + ")\"/>");
            strhtml.Append("<postfield name=\"tonickname\" value=\"$(tonickname" + r + ")\"/>");   
            strhtml.Append("<postfield name=\"topassword\" value=\"$(topassword" + r + ")\"/>");
            strhtml.Append("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");            
            strhtml.Append("<postfield name=\"tosex\" value=\"$(tosex" + r + ")\"/>");
            strhtml.Append("<postfield name=\"tomobile\" value=\"13\"/>");
            strhtml.Append("<postfield name=\"codecheck\" value=\"$(codecheck" + r + ")\"/>");
            if (this.isclose == "4")
            {
                strhtml.Append("<postfield name=\"regcode\" value=\"$(regcode" + r + ")\"/>");
            }           
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("</go>" + this.GetLang("�� �� ע ��|�� �� ע ��|reg submit") + "</anchor><br/>");



            
        }
        
        //����ע��
        if (this.isclose == "1" || this.isclose == "3" || KL_SMS_ALLREG != "")
        {
            string myorder=smsVo.myorder;
            string myorderid=smsVo.myorderid.ToString();
            string t = "";
            if(long.Parse(r) % 2==0 ){
                t=m1;
                m1 = m3;
                m3 = t;
            }

            if (KL_SMS_ALLREG != "")
            {
                
                string[] mobiles = KL_SMS_ALLREG.Split('|');
                if (mobiles.Length == 1)
                {
                    m1 = mobiles[0];
                    m2 = m1;
                    m3 = m1;
                }
                else if (mobiles.Length == 2)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = m1;
                }
                else if (mobiles.Length == 3)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = mobiles[2];
                }
                
                myorder = this.siteid;
                myorderid = KL_SMS_ALLREG_ID;
            }
            
            if (this.TJ != "")
            {
                myorder = myorder + "#" + this.TJ+"#";
            }


            strhtml.Append("<b>���������ע�ᡢȡ�����룺</b><br/>�༭���� <b>" + myorder + "</b> ��������������һ��ͨ��:<br/>");
            strhtml.Append("<b>ͨ��һ:</b><a href=\"sms:" + m1 + "?body=" + myorder + "\">" + m1 + "</a><br/>");
            strhtml.Append("<b>ͨ����:</b><a href=\"sms:" + m2 + "?body=" + myorder + "\">" + m2 + "</a><br/>");
            strhtml.Append("<b>ͨ����:</b><a href=\"sms:" + m3 + "?body=" + myorder + "\">" + m3 + "</a><br/>");
           if(KL_SMS_ALLREG=="") strhtml.Append("ʵʱ״̬:<img src=\"http://sms.kelink.com/smsstate/img.asp?id=" + myorderid + "\" alt=\"" + m1 + "\"/><br/>");

            strhtml.Append("<b>�û���:</b>Ϊ����ֻ����룬��������ú�11λ<br/>");
            strhtml.Append("<b>����:</b>Ϊ�ֻ��������λ��<br/>");
            strhtml.Append("��������д���޷�ע��ɹ���������룬������ƶ����������ӳٷ��ͣ������ĵȴ�����<b>��ͬͨ�����뷢��Ϣ</b>��");
            strhtml.Append("<br/>ϵͳ����ظ����κ���Ϣ��ע�᲻��ȡ�κη��ã�����ģ�");
            strhtml.Append("<br/>");
            //��ʾǰ8λ
            strhtml.Append("<a href=\""+http_start+"wapreg.aspx?siteid="+siteid+"&amp;go="+r+"&amp;sid="+this.sid+"\">ˢ��</a>-<a href=\"http://sms.kelink.com/showError.asp?id="+myorderid+"\">�鿴����</a><br/><b>��վ����ע��ǰ8λ��</b><br/>");
            for (int i = 0; (listVo != null && i < listVo.Count); i++)
            {
                if (listVo[i].username.Length > 7)
                {
                    strhtml.Append(listVo[i].username.Substring(0,6) + "*****<br/>");
                }
                else
                {
                    strhtml.Append(listVo[i].username + "****<br/>");
                }
            }

        }



    }

    if (this.remark != "")
    {
        strhtml.Append(WapTool.ToWML(this.remark,wmlVo) + "<br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ص�¼|���ص�¼|Please Login") + "</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("������ҳ|������ҳ|back home") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //��ʾWAP2.0


    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("ע����ͨ��Ա|ע����ͨ��Ա|Reg") + "</div>");
    strhtml.Append(this.ERROR);
    
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        //�����ʼ�
        string title = "��ϲ��ע���Ա�ɹ���";
        string content = "�ҵ��û�����" + tousername + "\n�ҵĻ�ԱID��" + this.userid + "\n�ҵ����룺" + topassword + "\n�뱣�ܺ������ʺ���Ϣ��\n" + siteVo.sitename + "��ӭ�� " + this.http_start + "\n";
        string content2 = "";
        if (this.isclose == "5")
        {
            content2 = content2 + "\n\n �������µ�ַ���м����ʺ�:" + this.http_start + "wapreg.aspx?action=checkuser&siteid=" + this.siteid + "&touserid=" + this.userid + "&checkcode=" + checkcode_lockuser + "";
        }


        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content + content2, false);        
        strhtml.Append("<b>" + title + "</b><br/>");
        strhtml.Append("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        strhtml.Append("ϵͳ�ѽ�������Ϣ������������" + toemail + "��" + this.EMAIL_INFO + "<br/>");
        if (this.isclose == "5")
        {
            strhtml.Append("���¼����������м����ʺš�<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ϵ�¼|���ϵ�¼|Please Login") + "</a><br/>");
        }
        strhtml.Append("</div>");


    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b></div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("�������Ϊ�գ�|�������Ϊ�գ�|not null!") + "</b></div>");
    }
    else if (this.INFO == "REGCODEERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>��������Ч��</b><br/>");
        if (this.regcodeUserid > 0)
        {
            strhtml.Append("<b>�ѱ���Ա��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.regcodeUserid + "\">" + this.regcodeUserid + "</a>ʹ�ã�</b><br/>");
        }
        else if (this.regcodeUserid == -1)
        {
            strhtml.Append("<b>�������벻�棡</b><br/>");
        }
        strhtml.Append("</div>");
    }
    else if (this.INFO == "CHECKERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("У�������(���һֱ��������ϵ����Ա�����ı�����)|У�������|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("�û���ֻ����Ӣ�Ļ����֣�|�û���ֻ����Ӣ�Ļ����֣�|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("�û�������Ҫ����" + this.len + "λ��|�û�������Ҫ����" + this.len + "λ��|username to more than " + this.len + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("�û����Ѵ��ڣ�|�û����Ѵ��ڣ�|username exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("�ǳ��Ѵ��ڣ�|�ǳ��Ѵ���2�֣�|nickname exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTEMAIL")
    {
        strhtml.Append("<div class=\"tip\"><b>�����ַ�Ѵ��ڣ������һ����</b></div>");
    }
    else if (this.INFO == "MAILERR")
    {
        strhtml.Append("<div class=\"tip\"><b>�����ʽ����</b></div>");
    }

    //��ʼ��ʾ
    if (this.isclose == "2")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("��վ��ʱ�ر�ע�ᣡ|��վ��ʱ�ر�ע�ᣡ|Close reg!") + "</b></div>");


    }
    else if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        //�ֶ�ע��
        if ((this.isclose == "0" || this.isclose == "3" || this.isclose == "4" || this.isclose == "5") && KL_SMS_ALLREG == "")
        {
            strhtml.Append("<form name=\"f\" action=\"" + http_start + "wapreg.aspx\" method=\"post\">");
            strhtml.Append(this.GetLang("�û������ֻ�����|�û������ֻ�����|username or mobile") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tousername\" class=\"txt\" value=\"" + this.tousername + "\"/><br/>");

            strhtml.Append(this.GetLang("�ǳ�|�ǳ�|nickname") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tonickname\" class=\"txt\" value=\"" + this.tonickname + "\"/><br/>");


            strhtml.Append(this.GetLang("����|����|password") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"topassword\" class=\"txt\" value=\"" + this.topassword + "\"/><br/>");

            strhtml.Append(this.GetLang("����,����ȡ������|����,����ȡ������|email"));
            if (this.isclose == "5")
            {
                strhtml.Append(",������֤���ܼ����ʻ�");
            }
            strhtml.Append("*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"toemail\" class=\"txt\" value=\"" + this.toemail + "\"/><br/>");
            


            strhtml.Append(this.GetLang("�Ա�|�Ա�|sex ") + "*:<br/>");
            strhtml.Append("<select name=\"tosex\" class=\"txt\" >");
            strhtml.Append("<option value=\"0\">Ů</option>");
            strhtml.Append("<option value=\"1\">��</option>");
            strhtml.Append("</select><br/>");
            if (this.isclose == "4")
            {
                strhtml.Append(this.GetLang("������|������|������") + "*:<br/>");
                strhtml.Append("<input type=\"text\" name=\"regcode\" class=\"txt\"  value=\"" + this.regcode + "\" size=\"8\"/><br/>");

            }
            strhtml.Append(this.GetLang("��֤��|��֤��|code check") + "����*:" + checkcodeinfo + "<br/>");
            strhtml.Append("<input type=\"text\" name=\"codecheck\" class=\"txt\" value=\"" + this.codecheck + "\" size=\"4\"/> <br/>");
            if (this.TJ!="")
            {
                strhtml.Append("�Ƽ���:" + this.TJ + "<br/>");
            }
            strhtml.Append("<a href=\""+http_start+"wapreg.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;lice=view&amp;sid="+this.sid+"\">"+this.GetLang("[����ͬ�ⱾվЭ��]|[����ͬ�ⱾվЭ��]|[�� ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                strhtml.Append("��ӭ�����뱾վ��μӽ��������ۣ�Ϊά�����Ϲ������������ȶ��������Ծ������������<br/>");
                strhtml.Append("һ�� �������ñ�վΣ�����Ұ�ȫ��й¶�������ܣ������ַ�������Ἧ��ĺ͹���ĺϷ�Ȩ�棬�������ñ�վ���������ƺʹ����Ƿ���Ϣ��<br/>");
                strhtml.Append("�����������أ����Լ������ۺ���Ϊ����<br/>");
                strhtml.Append("����������ͬ�ⲻ�����������,����,����,�̰�,���г����,���ŵ�,�������Ļ����κ�Υ�����ɵ����ݣ�<br/>");
            }

            
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("�� �� ע ��|�� �� ע ��|reg submit") + "\"/><br/>");
            strhtml.Append("</form>");



        }

        //����ע��
        if (this.isclose == "1" || this.isclose == "3" ||  KL_SMS_ALLREG!="")
        {
            
            string myorder = smsVo.myorder;
            string myorderid = smsVo.myorderid.ToString();
            string t = "";
            if (long.Parse(r) % 2 == 0)
            {
                t = m1;
                m1 = m3;
                m3 = t;
            }
            if (KL_SMS_ALLREG != "")
            {
                
                string[] mobiles = KL_SMS_ALLREG.Split('|');
                if (mobiles.Length == 1)
                {
                    m1 = mobiles[0];
                    m2 = m1;
                    m3 = m1;
                }
                else if (mobiles.Length == 2)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = m1;
                }
                else if (mobiles.Length == 3)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = mobiles[2];
                }
                 
                myorder = this.siteid;
                myorderid = KL_SMS_ALLREG_ID;
            }
            if (this.TJ !="")
            {
                myorder = myorder + "#" + this.TJ  + "#";
            }


            strhtml.Append("<b>���������ע�ᡢȡ�����룺</b><br/>�༭���� <b>" + myorder + "</b> ��������������һ��ͨ��:<br/>");
            strhtml.Append("<b>ͨ��һ:</b><a href=\"sms:" + m1 + "?body=" + myorder + "\">" + m1 + "</a><br/>");
            strhtml.Append("<b>ͨ����:</b><a href=\"sms:" + m2 + "?body=" + myorder + "\">" + m2 + "</a><br/>");
            strhtml.Append("<b>ͨ����:</b><a href=\"sms:" + m3 + "?body=" + myorder + "\">" + m3 + "</a><br/>");
            if (KL_SMS_ALLREG == "") strhtml.Append("ʵʱ״̬:<img src=\"http://sms.kelink.com/smsstate/img.asp?id=" + myorderid + "\" alt=\"" + m1 + "\"/><br/>");

            strhtml.Append("<b>�û���:</b>Ϊ����ֻ����룬��������ú�11λ<br/>");
            strhtml.Append("<b>����:</b>Ϊ�ֻ��������λ��<br/>");
            strhtml.Append("��������д���޷�ע��ɹ���������룬������ƶ����������ӳٷ��ͣ������ĵȴ�����<b>��ͬͨ�����뷢��Ϣ</b>��");
            strhtml.Append("<br/>ϵͳ����ظ����κ���Ϣ��ע�᲻��ȡ�κη��ã�����ģ�");
            strhtml.Append("<br/>");
            //��ʾǰ8λ
            strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
            strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + siteid + "&amp;go=" + r + "\">ˢ��</a> <a href=\"http://sms.kelink.com/showError.asp?id=" + myorderid + "\">�鿴����</a></div></div><b>��վ����ע��ǰ8λ��</b><br/>");
            strhtml.Append("");
            for (int i = 0; (listVo != null && i < listVo.Count); i++)
            {
                if (listVo[i].username.Length > 7)
                {
                    strhtml.Append(listVo[i].username.Substring(0, 6) + "*****<br/>");
                }
                else
                {
                    strhtml.Append(listVo[i].username + "****<br/>");
                }
            }

        }

        strhtml.Append("</div>");

    }

    if (this.remark != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(WapTool.ToWML(this.remark,wmlVo) + "</div>");
    }

    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����   

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ص�¼|���ص�¼|Please Login") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("������ҳ|������ҳ|back home") + "</a>");

    strhtml.Append("</div></div>");
    if (isWebHtml == "") strhtml.Append(WapTool.GetVS(wmlVo));


    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    Response.Write(strhtml);


}
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
%>