<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.ÿ��Ӯ�һ�ý���" + WapTool.getArryString(configVo.config, '|', 38) + "%<br/>");
info.Append("2.ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 4) + "-" + WapTool.getArryString(configVo.config, '|', 5) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 3) == "0")
{
    info.Append("3.ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("3.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 3) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 67) == "0")
{
    info.Append("4.ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("4.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 67) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 68) == "0")
{
    info.Append("5.ÿ��ÿ���淨����Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("5.ÿ��ÿ���淨���Ͷ" + WapTool.getArryString(configVo.config, '|', 68) + siteVo.sitemoneyname + "<br/>");
}
Response.Write(WapTool.showTop("���ձ�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append(info);
    strhtml.Append("----------<br/>");
    
    strhtml.Append("<b>��ɫ���ձ�</b><br/>");

    strhtml.Append("�첨����: " + arry[30] + "<br/>");
    strhtml.Append("��������:" + arry[31] + "<br/>");
    strhtml.Append("�̲�����  " + arry[32] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>��Ф���ձ�</b><br/>");

    strhtml.Append("��: " + arry[39] + "<br/>");
    strhtml.Append("��: " + arry[40] + "<br/>");
    strhtml.Append("��: " + arry[41] + "<br/>");
    strhtml.Append("ţ: " + arry[42] + "<br/>");
    strhtml.Append("��: " + arry[43] + "<br/>");
    strhtml.Append("��: " + arry[44] + "<br/>");
    strhtml.Append("��: " + arry[45] + "<br/>");
    strhtml.Append("��: " + arry[46] + "<br/>");
    strhtml.Append("��: " + arry[47] + "<br/>");
    strhtml.Append("��: " + arry[48] + "<br/>");
    strhtml.Append("��: " + arry[49] + "<br/>");
    strhtml.Append("��: " + arry[50] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>���ж��ձ�</b><br/>");

    strhtml.Append("��: " + arry[25] + "<br/>");
    strhtml.Append("ľ: " + arry[26] + "<br/>");
    strhtml.Append("ˮ: " + arry[27] + "<br/>");
    strhtml.Append("��: " + arry[28] + "<br/>");
    strhtml.Append("��: " + arry[29] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>��Ұ���ձ�</b><br/>");

    strhtml.Append("����: " + arry[60] + "<br/>");
    strhtml.Append("Ұ��: " + arry[61] + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>�������ձ�</b><br/>");

    strhtml.Append("�ϵ�: " + arry[62] + "<br/>");
    strhtml.Append("��˫: " + arry[63] + "<br/>");
    strhtml.Append("�ϴ�: " + arry[64] + "<br/>");
    strhtml.Append("��С: " + arry[65] + "<br/>");
    strhtml.Append("<br/>");

    //������ť
    strhtml.Append("--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //��ʾ����
    //strhtml.Append("<div class=\"title\">���Զ���</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"a\"></a>��ɫ���ձ�</div>");    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�첨����: " + arry[30] + "<br/>");
    strhtml.Append("��������:" + arry[31] + "<br/>");
    strhtml.Append("�̲�����  " + arry[32] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"b\"></a>��Ф���ձ�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��: " + arry[39] + "<br/>");
    strhtml.Append("��: " + arry[40] + "<br/>");
    strhtml.Append("��: " + arry[41] + "<br/>");
    strhtml.Append("ţ: " + arry[42] + "<br/>");
    strhtml.Append("��: " + arry[43] + "<br/>");
    strhtml.Append("��: " + arry[44] + "<br/>");
    strhtml.Append("��: " + arry[45] + "<br/>");
    strhtml.Append("��: " + arry[46] + "<br/>");
    strhtml.Append("��: " + arry[47] + "<br/>");
    strhtml.Append("��: " + arry[48] + "<br/>");
    strhtml.Append("��: " + arry[49] + "<br/>");
    strhtml.Append("��: " + arry[50] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"c\"></a>���ж��ձ�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��: " + arry[25] + "<br/>");
    strhtml.Append("ľ: " + arry[26] + "<br/>");
    strhtml.Append("ˮ: " + arry[27] + "<br/>");
    strhtml.Append("��: " + arry[28] + "<br/>");
    strhtml.Append("��: " + arry[29] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"d\"></a>��Ұ���ձ�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����: " + arry[60] + "<br/>");
    strhtml.Append("Ұ��: " + arry[61] + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\"><a name=\"e\"></a>�������ձ�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�ϵ�: " + arry[62] + "<br/>");
    strhtml.Append("��˫: " + arry[63] + "<br/>");
    strhtml.Append("�ϴ�: " + arry[64] + "<br/>");
    strhtml.Append("��С: " + arry[65] + "<br/>");
    strhtml.Append("</div>");
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
