<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.lucky28.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("ÿ��Ӯ�һ�ý���" + WapTool.getArryString(configVo.config, '|', 0) + "%<br/>");
info.Append("ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 2) + "-" + WapTool.getArryString(configVo.config, '|', 3) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 5) == "0")
{
    info.Append("ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 5) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 7) == "0")
{
    info.Append("ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 7) + siteVo.sitemoneyname + "<br/>");
}
info.Append("<b>1.ʲô������28?</b><br/>");
info.Append("����28��ʹ�ü�������������.���������������,ÿһ��,���ܿ����κκ���,��Ҷ���ȫ�������������,ϵͳÿ��Ҳ��ע��һ�������,�ָ������.����28���ּ�,ƾ���������ǻ�,һҹ����������.<br/>");
info.Append("--------<br/>");
info.Append("<b>2.����������β���?</b><br/>");
info.Append("����28�ܹ���28������,��0���ε�27,���������������ĸ�λ�����������.�н������ɻ����Զ�����,����Ѻ��,���ɻ�ý���.ÿ�����ֳ��ֵĸ��ʲ���һ��.�������0�Ŀ���ֻ��һ��,����0��0��0,����1�����������,�ֱ���:1��0��0��0��1��0��0��0��1.��������,���ǿ��Լ���õ�,Խ���м�����֣�����13��14�������Խ��,�������13��14�Ŀ��������75��.<br/>");
info.Append("--------<br/>");
info.Append("<b>3.Ͷע���ɴ����?</b><br/>");
info.Append("�����:ÿ��ѡͶ4��5������,��ע�������,����֤,���ַ�ʽϸˮ����,�ʺ϶����������,�����Ҳ������׬�ұ�,��Ȼ��,����Ҳ����Ҫ.���:28������ȫ��Ͷע,���ַ����������õ���ҵ�,����Ӯ������?Ҫ������Ͷ������,����Ͷע�ʺ����ȵ����. ���:�ܹ�28����,ֻͶһ������,��ע�������,��ѹ��,һ�Ѿ�׬����,��Ȼ���˾Ͳ���,�ʺϸ�����ż��һ��.<br/>");
info.Append("--------<br/>");
info.Append("<b>4.�н���ҽ����η���?</b><br/>");
info.Append("����н���ң����Ͷע�������ֵĽ�ҡ�����. ���ʣ�������ܱ����±����������ֵ���Ͷע���.��:��1�ڽ����Ϊ100��,��������Ϊ8,�������Ͷ��8�Ľ��������10��,��:����=100��/10��=10.�����Ͷע8�Ľ����1��,�㽫��ý����=��100��/10��*1�� * "+per+"%(˰��)="+Double.Parse(per)/10+"��<br/>");
info.Append("--------<br/>");
info.Append("<b>5.���ĳһ��û���н���ô��?</b><br/>");
info.Append("���ĳһ��û�����Ͷ����������,����Ͷע��ҽ����ۼƵ����ڽ����.<br/>");
info.Append("--------<br/>");

Response.Write(WapTool.showTop("����28��Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>����28��Ϸ����</b><br/>");


    strhtml.Append(info);
   

    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">����28��Ϸ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
