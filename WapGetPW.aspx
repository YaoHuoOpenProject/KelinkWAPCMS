<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapGetPW.aspx.cs" Inherits="KeLin.WebSite.WapGetPW" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��ʾͷ
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("ȡ������|ȡ������|Get Password"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{
    strhtml.Append("<p>");

    if (this.INFO == "NULL")
    {
        strhtml.Append("<b>* �����������Ϊ�գ�</b><br/>");

    }
    else if (this.INFO == "NOTEXIST")
    {
        strhtml.Append("<b>* ���޼�¼��</b><br/>");

    }
    else if (this.INFO == "SENDOK")
    {
        strhtml.Append("<b>* ϵͳ������һ���ʼ�����" + toemail + " ������ղ����ʼ�˵����ɲ�����<br/>�ʼ�����״̬��" + this.EMAIL_INFO + "</b><br/>");

    }
    else if (this.INFO == "SHOWNOTEXIT")
    {

        strhtml.Append("<b>* ��������ʧЧ�ˣ�</b><br/>");


    }
    else if (this.INFO == "SHOWOK")
    {
        strhtml.Append("<b>* �ѳɹ��������룬�����ѷ�����:" + toemail + "������ղ����ʼ�˵����ɲ�����<br/>�ʼ�����״̬��" + this.EMAIL_INFO + "</b><br/>");
    }

    if (this.INFO != "SENDOK" && this.INFO.IndexOf("SHOW") < 0 )
    {
        strhtml.Append("����һ�������վ���ö���ע���Ա���ܣ��ط�����ָ����������롣��<a href=\""+this.http_start +"wapreg.aspx?siteid="+this.siteid +"&amp;classid=0\">����˲鿴</a>��<br/>");
        strhtml.Append("�������������û������ԱID�͵����ʼ���ַ��<br/>");

        strhtml.Append("<select name=\"totype" + r + "\" value=\"" + this.totype + "\">");
        strhtml.Append("<option value=\"0\">�û�ID</option>");
        strhtml.Append("<option value=\"1\">�û���</option>");
        strhtml.Append("</select>*<br/>");
        strhtml.Append("<input type=\"text\" name=\"toname" + r + "\" value=\"" + this.toname + "\"/><br/>");
        strhtml.Append(this.GetLang("�����ַ|�����ַ|email") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "wapgetpw.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");
        strhtml.Append("<postfield name=\"totype\" value=\"$(totype" + r + ")\"/>");
        strhtml.Append("<postfield name=\"toname\" value=\"$(toname" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("��һ��|��һ��|Next") + "</anchor><br/>");
    }
    strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">������ҳ</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //��ʾWAP2.0

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("ȡ������|ȡ������|Get Password") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "NULL")
    {
        strhtml.Append("<b>* �����������Ϊ�գ�</b><br/>");

    }
    else if (this.INFO == "NOTEXIST")
    {
        strhtml.Append("<b>* ���޼�¼��</b><br/>");

    }
    else if (this.INFO == "SENDOK")
    {
        strhtml.Append("<b>* ϵͳ������һ���ʼ�����" + toemail + " ������ղ����ʼ�˵����ɲ�����<br/>�ʼ�����״̬��" + this.EMAIL_INFO + "</b><br/>");

    }
    else if (this.INFO == "SHOWNOTEXIT")
    {

        strhtml.Append("<b>* ��������ʧЧ�ˣ�</b><br/>");


    }
    else if (this.INFO == "SHOWOK")
    {
        strhtml.Append("<b>* �ѳɹ��������룬�����ѷ�����:" + toemail + "������ղ����ʼ�˵����ɲ�����<br/>�ʼ�����״̬��" + this.EMAIL_INFO + "</b><br/>");
    }
    strhtml.Append("</div>");
    if (this.INFO != "SENDOK" && this.INFO.IndexOf("SHOW") < 0)
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<strong>����һ��</strong>�����վ���ö���ע���Ա���ܣ��ط�����ָ����������롣��<a href=\"" + this.http_start + "wapreg.aspx?siteid=" + this.siteid + "&amp;classid=0\">����˲鿴</a>��<br/>");
        strhtml.Append("<strong>��������</strong>�����û������ԱID�͵����ʼ���ַ��<br/>");
        strhtml.Append("<form name=\"f\" aciton=\"" + http_start + "wapgetpw.aspx\" method=\"post\">");
        strhtml.Append("<select name=\"totype\" class=\"txt\">");
        strhtml.Append("<option value=\"0\">�û�ID</option>");
        strhtml.Append("<option value=\"1\">�û���</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<input type=\"text\" name=\"toname\" value=\"" + this.toname + "\" class=\"txt\"/><br/>");
        strhtml.Append(this.GetLang("�����ַ|�����ַ|email") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\" class=\"txt\"/><br/>");
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("��һ��|��һ��|Next") + "\"/>");
        strhtml.Append("</div>");
    }
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "\">�����ϼ�</a> ");
    if (isWebHtml == "")
    {
        strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">������ҳ</a> ");
       
    }
    strhtml.Append("</div></div>");
    strhtml.Append(WapTool.GetVS(wmlVo));
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