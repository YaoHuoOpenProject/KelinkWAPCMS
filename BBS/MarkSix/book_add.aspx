<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_add.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.book_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�ֹ��������|�ֹ��������|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("��ӳɹ���|��ӳɹ���|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("��˺���ʾ��");
        }     
        
        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">����</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");

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

    strhtml.Append("<b>�����ʰ������</b><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">�ֹ���������</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("��ӳɹ���|��ӳɹ���|Successfully add"));
       


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("��ʽ����");
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "EXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�����ˣ���ǰ���м�¼���Ѵ��ڣ���ע��״̬�ļ�¼�����Բ�����������</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b>");
        strhtml.Append("</div>");

    }
    //��ʾ�����
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/book_add.aspx\" method=\"get\">");
        strhtml.Append("���:<input type=\"text\" name=\"years\" size=\"4\" value=\"" + years + "\"/> ");
        strhtml.Append("�ں�:<input type=\"text\" name=\"period\" size=\"4\" value=\"" + period + "\"/><br/>");
        strhtml.Append("����ʱ��:<input type=\"text\" name=\"opentime\" size=\"15\" value=\"" + opentime + "\"/><br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"go\" value=\" �� �� \"/></form> ");


        strhtml.Append("</div>");
    }
   
    strhtml.Append("<div class=\"tip\">");
   strhtml.Append("<b>�ֶ��������</b>����ǰ���м�¼�в����ڣ���ע��״̬ʱ��������<br/>");
   strhtml.Append("<b>�Զ����</b>��Ĭ������£�ϵͳ���Զ���Զ��Ŀ����վ��ȡ���ݣ����Զ���ӡ���ȷ�����õ�������ռ���֧��С͵����<br/>");
    
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
