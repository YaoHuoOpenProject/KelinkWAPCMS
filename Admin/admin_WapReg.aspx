<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WapReg.aspx.cs" Inherits="KeLin.WebSite.admin_WapReg" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//���ֶ������ĺ���
string m1,m2,m3;
m1 = "13556000271";
m2 = "13725199063";
m3 = "13119529349";
    
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("ע����ͨ��Ա|ע����ͨ��Ա|Reg"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{

    

}else{ //��ʾWAP2.0

    if (userVo.managerlvl == "00" && ( this.KL_VERSION == "0" || this.KL_VERSION == "1"))
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt2\"><a href=\"admin_wapregsite.aspx?siteid=" + this.siteid + "\">ע��վ��</a> <a href=\"#\" class=\"btSelect\">ע����ͨ��Ա</a></div></div>");
    }
    Response.Write(this.ERROR);
    
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        //�����ʼ�
        string title = "��ϲ��ע���Ա�ɹ���";
        string content = "�ҵ��û�����" + tousername + "\n�ҵĻ�ԱID��" + this.userid + "\n�ҵ����룺" + topassword + "\n�뱣�ܺ������ʺ���Ϣ��\n" + siteVo.sitename + "��ӭ�� " + this.http_start + "\n";
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content,false);        
        Response.Write("<b>" + title + "</b><br/>");
        Response.Write("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        Response.Write("ϵͳ�ѽ�������Ϣ������������" + toemail + "��" + this.EMAIL_INFO + "<br/>");
        //Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("���ϵ�¼|���ϵ�¼|Please Login") + "</a><br/>");      
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
        Response.Write("<b>" + this.GetLang("У�������(���һֱ��������ϵ����Ա�����ı�����)|У�������|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û���ֻ����Ӣ�Ļ����֣�|�û���ֻ����Ӣ�Ļ����֣�|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û�������Ҫ����" + this.len + "λ��|�û�������Ҫ����" + this.len + "λ��|username to more than " + this.len + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�û����Ѵ��ڣ�|�û����Ѵ��ڣ�|username exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("�ǳ��Ѵ��ڣ�|�ǳ��Ѵ���2�֣�|nickname exist!") + "</b></div>");
    }

    //��ʼ��ʾ
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //�ֶ�ע��
       
            Response.Write("<form name=\"f\" action=\"" + http_start + "admin/admin_wapreg.aspx\" method=\"post\">");
            Response.Write(this.GetLang("������վID|������վID|siteID") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tositeid\" value=\"" + this.siteid + "\"/><br/>");
    
           Response.Write(this.GetLang("�û������ֻ�����|�û������ֻ�����|username or mobile") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tousername\" value=\"" + this.tousername + "\"/><br/>");

            Response.Write(this.GetLang("�ǳ�|�ǳ�|nickname") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tonickname\" value=\"" + this.tonickname + "\"/><br/>");


            Response.Write(this.GetLang("����|����|password") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"topassword\" value=\"" + this.topassword + "\"/><br/>");

            Response.Write(this.GetLang("����(����Ҫȡ������)|����(����Ҫȡ������)|email") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\"/><br/>");


            Response.Write(this.GetLang("�Ա�|�Ա�|sex ") + "*:");
            Response.Write("<select name=\"tosex\">");
            Response.Write("<option value=\"0\">Ů</option>");
            Response.Write("<option value=\"1\">��</option>");
            Response.Write("</select><br/>");

            Response.Write(this.GetLang("��֤��|��֤��|code check") + ":");
            Response.Write("<input type=\"text\" name=\"codecheck\" value=\"" + this.codecheck + "\" size=\"4\"/> " + checkcodeinfo + "<br/>");
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
            Response.Write("</form>");



       

       
        

        Response.Write("</div>");

    }

   



}
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
%>