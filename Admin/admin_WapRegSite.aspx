<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WapRegSite.aspx.cs" Inherits="KeLin.WebSite.admin_WapRegSite" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("ע��վ��|ע��վ��|Reg webMaster"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{

    

}else{ //��ʾWAP2.0


    Response.Write("<div class=\"btBox\"><div class=\"bt2\"><a href=\"#\" class=\"btSelect\">ע��վ��</a> <a href=\"admin_wapreg.aspx?siteid=" + this.siteid + "\">ע����ͨ��Ա</a></div></div>");
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
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "admin/admin_WapRegSite.aspx\" method=\"post\">");
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
        

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("�� �� ע ��|�� �� ע ��|reg submit") + "\"/><br/>");
        Response.Write("</form></div>");





    }





 
    
                                                                                                                                                                         



}
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
%>