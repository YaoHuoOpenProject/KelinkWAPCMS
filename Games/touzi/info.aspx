<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.touzi.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("С:4,5,6,7,8,9,10<br/>");
info.Append("��:11,12,13,14,15,16,17<br/>");
info.Append("��:5,7,9,11,13,15,17<br/>");
info.Append("˫:4,6,8,10,12,14,16<br/>");
info.Append("����:�������ӵ�����ͬ<br/>");
info.Append("ÿ��Ӯ�һ�ý���" + per + "%<br/>");
info.Append("ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 7) + "-" + WapTool.getArryString(configVo.config, '|', 8) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 11) == "0")
{
    info.Append("ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 11) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 12) == "0")
{
    info.Append("ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 12) + siteVo.sitemoneyname + "<br/>");
}

Response.Write(WapTool.showTop("��������Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>��������Ϸ����</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">��������Ϸ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
