<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.ÿ��" + second + "���ӿ���<br/>");
info.Append("2.ÿ��Ӯ�һ�ý���" + per + "%<br/>");
info.Append("3.ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 8) + "-" + WapTool.getArryString(configVo.config, '|', 9) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 18) == "0")
{
    info.Append("4.ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("4.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 18) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 19) == "0")
{
    info.Append("5.ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("5.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 19) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 20) == "0")
{
    info.Append("6.ÿ��ÿ���淨����Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("6.ÿ��ÿ���淨���Ͷ" + WapTool.getArryString(configVo.config, '|', 20) + siteVo.sitemoneyname + "<br/>");
}
info.Append("7.С:4,5,6,7,8,9,10<br/>");
info.Append("8.��:11,12,13,14,15,16,17<br/>");
info.Append("9.��:5,7,9,11,13,15,17<br/>");
info.Append("10.˫:4,6,8,10,12,14,16<br/>");
info.Append("11.����:�������������ͬ<br/>");
info.Append("12.����:����������ͬ<br/>");


Response.Write(WapTool.showTop("�ڱ���Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>�ڱ���Ϸ����</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">�ڱ���Ϸ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
