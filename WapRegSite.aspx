<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapRegSite.aspx.cs" Inherits="KeLin.WebSite.WapRegSite" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("ע��վ��|ע��վ��|Reg webMaster"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{

    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        string title = "��ϲ��ע��վ���ɹ���";
        string content = "����û�����" + tousername + "\n�����վID�ͻ�ԱID��" + this.userid + "\n������룺" + topassword + "\n�����վ����:" + tousername + "." + DomainVo.domain + "\n�뱣�ܺ������ʺ���Ϣ��\n";
        //�����ʼ�
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, tositename, title, content,false);
        Response.Write("<b>" + title + "<br/>" + content.Replace("\n", "<br/>") + "</b><br/>");
        Response.Write("ϵͳ�ѽ�������Ϣ������������" + toemail + "��" + this.EMAIL_INFO + "<br/>");
        

    }   
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("�������Ϊ�գ�|�������Ϊ�գ�|not null!") + "</b><br/>");
    }
    else if (this.INFO == "CHECKERR")
    {
        Response.Write("<b>" + this.GetLang("У�������|У�������|checkcode error!") + "</b><br/>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<b>" + this.GetLang("�û���ֻ����Ӣ�Ļ����֣�|�û���ֻ����Ӣ�Ļ����֣�|username need en or num!") + "</b><br/>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<b>" + this.GetLang("�û�������Ҫ����" + DomainVo.length + "λ��|�û�������Ҫ����" + DomainVo.length + "λ��|username to more than " + DomainVo.length + " words!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<b>" + this.GetLang("�û����Ѵ��ڣ�|�û����Ѵ��ڣ�|username exist!") + "</b><br/>");
    }
   

    //��ʼ��ʾ
    if (DomainVo.isclose == 1)
    {
        Response.Write("<b>" + this.GetLang("ϵͳ��ʱ�ر�ע��վ����|ϵͳ��ʱ�ر�ע��վ����|Close reg!") + "</b><br/>");
       

    }
    else if (this.INFO != "OK")
    {
        

            Response.Write(this.GetLang("�û���|�û���|username ") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tousername" + r + "\" value=\""+this.tousername+"\"/><br/>");
            Response.Write("��������:<u>�û���."+DomainVo.domain+"</u><br/>");
        
            Response.Write(this.GetLang("��վ����|��վ����|webSite name") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tositename" + r + "\" value=\""+this.tositename+"\"/><br/>");
            
        
            Response.Write(this.GetLang("�ǳ�|�ǳ�|nickname") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tonickname" + r + "\" value=\""+this.tonickname+"\"/><br/>");
            

            Response.Write(this.GetLang("����|����|password") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"topassword" + r + "\" value=\"" + this.topassword + "\"/><br/>");

            Response.Write(this.GetLang("����(����Ҫȡ��������)|����|email") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
           

            Response.Write(this.GetLang("�Ա�|�Ա�|sex ") + "*:");
            Response.Write("<select name=\"tosex" + r + "\" value=\"" + this.tosex + "\">");
            Response.Write("<option value=\"0\">Ů</option>");
            Response.Write("<option value=\"1\">��</option>");
            Response.Write("</select><br/>");

            Response.Write(this.GetLang("��֤��|��֤��|code check") + ":");
            Response.Write("<input type=\"text\" name=\"codecheck" + r + "\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
            if (Session["TJ"] != null)
            {
                Response.Write("�Ƽ���:" + Session["TJ"] + "<br/>");
            }
            Response.Write("<a href=\"" + http_start + "wapregsite.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[����ͬ�ⱾվЭ��]|[����ͬ�ⱾվЭ��]|[�� ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                Response.Write("��ӭ�����뽨վ��Ϊά�����Ϲ������������ȶ��������Ծ������������<br/>");
                Response.Write("һ�� �������ñ�վΣ�����Ұ�ȫ��й¶�������ܣ������ַ�������Ἧ��ĺ͹���ĺϷ�Ȩ�棬�������ñ�վ���������ƺʹ����Ƿ���Ϣ��<br/>");
                Response.Write("�����������أ����Լ������ۺ���Ϊ����<br/>");
                Response.Write("����������ͬ�ⲻ�����������,����,����,�̰�,���г����,���ŵ�,�������Ļ����κ�Υ�����ɵ����ݣ�<br/>");
            }

            Response.Write("<anchor><go href=\"" + http_start + "WapRegSite.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"goadd\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"codechecks\" value=\"" + r + "\"/>");
            Response.Write("<postfield name=\"tousername\" value=\"$(tousername" + r + ")\"/>");
            Response.Write("<postfield name=\"tonickname\" value=\"$(tonickname" + r + ")\"/>");  
            Response.Write("<postfield name=\"tositename\" value=\"$(tositename" + r + ")\"/>");   
            Response.Write("<postfield name=\"topassword\" value=\"$(topassword" + r + ")\"/>");
            Response.Write("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");            
            Response.Write("<postfield name=\"tosex\" value=\"$(tosex" + r + ")\"/>");
            Response.Write("<postfield name=\"tomobile\" value=\"13\"/>");
            Response.Write("<postfield name=\"codecheck\" value=\"$(codecheck" + r + ")\"/>");            
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>" + this.GetLang("�� �� ע ��|�� �� ע ��|reg submit") + "</anchor><br/>");



            
        

        }






    if (this.INFO != "OK")
    {
        if (DomainVo.remark != "")
        {
            Response.Write(WapTool.ToWML(DomainVo.remark,wmlVo) + "<br/>");
        }
        Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ص�¼|���ص�¼|Please Login") + "</a>-");
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("������ҳ|������ҳ|back home") + "</a>");

        Response.Write(WapTool.GetVS(wmlVo));
    }
    else
    {

        Response.Write("<a href=\"http://" + this.tousername + "." + DomainVo.domain + "\">" + this.GetLang("�����ҵ���վ|�����ҵ���վ|click my WebSite") + "</a>");

    }
    Response.Write("</p>");

}else{ //��ʾWAP2.0


    Response.Write("<div class=\"subtitle\">" + this.GetLang("ע��վ��|ע��վ��|Reg webMaster") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        string title = "��ϲ��ע��վ���ɹ���";
        string content = "����û�����" + tousername + "\n�����վID�ͻ�ԱID��" + this.userid + "\n������룺" + topassword + "\n�����վ����:" + tousername + "." + DomainVo.domain + "\n�뱣�ܺ������ʺ���Ϣ��\n";
        //�����ʼ�
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, tositename, title, content,false);
        Response.Write("<b>" + title + "<br/>" + content.Replace("\n", "<br/>") + "</b><br/>");        
        Response.Write("ϵͳ�ѽ�������Ϣ������������" + toemail + "��" + this.EMAIL_INFO + "<br/>");
        
        Response.Write("</div>");

    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b></div>");
        
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�������Ϊ�գ�|�������Ϊ�գ�|not null!") + "</b></div>");
    }
    else if (this.INFO == "CHECKERR")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("У�������|У�������|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û���ֻ����Ӣ�Ļ����֣�|�û���ֻ����Ӣ�Ļ����֣�|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û�������Ҫ����" + DomainVo.length + "λ��|�û�������Ҫ����" + DomainVo.length + "λ��|username to more than " + DomainVo.length + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û����Ѵ��ڣ�|�û����Ѵ��ڣ�|username exist!") + "</b></div>");
    }


    //��ʼ��ʾ
    if (DomainVo.isclose == 1)
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("ϵͳ��ʱ�ر�ע��վ����|ϵͳ��ʱ�ر�ע��վ����|Close reg!") + "</b></div>");


    }
    else if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "WapRegSite.aspx\" method=\"post\">");
        Response.Write(this.GetLang("�û���|�û���|username ") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tousername\" value=\"" + this.tousername + "\"/><br/>");
        Response.Write("��������:<u>�û���." + DomainVo.domain + "</u><br/>");

        Response.Write(this.GetLang("��վ����|��վ����|webSite name") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tositename\" value=\"" + this.tositename + "\"/><br/>");


        Response.Write(this.GetLang("�ǳ�|�ǳ�|nickname") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tonickname\" value=\"" + this.tonickname + "\"/><br/>");


        Response.Write(this.GetLang("����|����|password") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"topassword\" value=\"" + this.topassword + "\"/><br/>");

        Response.Write(this.GetLang("����(����Ҫȡ��������)|����|email") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\"/><br/>");


        Response.Write(this.GetLang("�Ա�|�Ա�|sex ") + "*:");
        Response.Write("<select name=\"tosex" + r + "\">");
        Response.Write("<option value=\"0\">Ů</option>");
        Response.Write("<option value=\"1\">��</option>");
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("��֤��|��֤��|code check") + ":");
        Response.Write("<input type=\"text\" name=\"codecheck\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
        if (Session["TJ"] != null)
        {
            Response.Write("�Ƽ���:" + Session["TJ"] + "<br/>");
        }
        Response.Write("<a href=\"" + http_start + "wapregsite.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[����ͬ�ⱾվЭ��]|[����ͬ�ⱾվЭ��]|[�� ok]") + "</a><br/>");
        if (this.lice == "view")
        {
            Response.Write("��ӭ�����뽨վ��Ϊά�����Ϲ������������ȶ��������Ծ������������<br/>");
            Response.Write("һ�� �������ñ�վΣ�����Ұ�ȫ��й¶�������ܣ������ַ�������Ἧ��ĺ͹���ĺϷ�Ȩ�棬�������ñ�վ���������ƺʹ����Ƿ���Ϣ��<br/>");
            Response.Write("�����������أ����Լ������ۺ���Ϊ����<br/>");
            Response.Write("����������ͬ�ⲻ�����������,����,����,�̰�,���г����,���ŵ�,�������Ļ����κ�Υ�����ɵ����ݣ�<br/>");
        }


        Response.Write("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("�� �� ע ��|�� �� ע ��|reg submit") + "\"/><br/>");
        Response.Write("</form></div>");





    }





    if (this.INFO != "OK"&&DomainVo.remark !=null && DomainVo.remark != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(WapTool.ToWML(DomainVo.remark,wmlVo) + "</div>");
        
    }
    
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
        Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ص�¼|���ص�¼|Please Login") + "</a> ");
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("������ҳ|������ҳ|back home") + "</a>");
        Response.Write("</div></div>");
         
    }
    else
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
        Response.Write("<a href=\"http://" + this.tousername + "." + DomainVo.domain + "\">" + this.GetLang("�����ҵ���վ|�����ҵ���վ|click my WebSite") + "</a>");
        Response.Write("</div></div>");
    }

   
                                                                                                                                                                         



}
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
%>