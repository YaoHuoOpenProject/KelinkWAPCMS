<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.apple.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("ƻ������Ϸ����˵��<br/>");
info.Append("1.ƻ������ϷΪ"+second+"���ӿ�һ�֣����10��Ϊ������ת�׶Σ��޷��ٽ�����ע<br/>");
info.Append("2.��Ϸ�й���14��Ŀ�����ע���н��Ժ���в�ͬ����������ÿעΪ"+every+"���<br/>");
info.Append("3.����ľ�ϡ����ϡ�â����˫�ǡ�˫�ߡ����ӷִ�С����Ӧ�ķ���������ͬ��<br/>");
info.Append("4.�û���С��:"+min+"ע�������:"+max+"ע<br/>");
info.Append("5.ÿ��Ӯ�һ�ö�ע" + per + "%<br/>");
info.Append("6.ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 17) + "-" + WapTool.getArryString(configVo.config, '|', 18) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 21) == "0")
{
    info.Append("7.ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("7.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 21) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 22) == "0")
{
    info.Append("8.ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("8.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 22) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 23) == "0")
{
    info.Append("9.ÿ��ÿ���淨����Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("9.ÿ��ÿ���淨���Ͷ" + WapTool.getArryString(configVo.config, '|', 23) + siteVo.sitemoneyname + "<br/>");
}

Response.Write(WapTool.showTop("ƻ������Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>ƻ������Ϸ����</b><br/>");


    strhtml.Append(info);
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">ƻ������Ϸ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
