<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.ÿ��"+second+"���ӿ���<br/>");
info.Append("2.ÿ��Ӯ�һ�ý���" + per + "%<br/>");
info.Append("3.ÿע��ע��Χ��(" + WapTool.getArryString(configVo.config, '|', 8) + "-" + WapTool.getArryString(configVo.config, '|', 9) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 17) == "0")
{
    info.Append("4.ÿ�ڲ��޴���<br/>");

}
else
{
    info.Append("4.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 17) + "��<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 18) == "0")
{
    info.Append("5.ÿ�ڲ���Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("5.ÿ�����Ͷ" + WapTool.getArryString(configVo.config, '|', 18) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 20) == "0")
{
    info.Append("6.ÿ��ÿ���淨����Ͷ" + siteVo.sitemoneyname + "����<br/>");

}
else
{
    info.Append("6.ÿ��ÿ���淨���Ͷ" + WapTool.getArryString(configVo.config, '|', 20) + siteVo.sitemoneyname + "<br/>");
}
Response.Write(WapTool.showTop("����ʮ����Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"" + classVo.position + "\">");
    
    
    Response.Write("<b>����ʮ����Ϸ����</b><br/>");


    Response.Write(info);
    Response.Write("<br/>--------<br/>");  
    

    Response.Write("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    Response.Write(WapTool.GetVS(wmlVo));   
    Response.Write("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    Response.Write("<div class=\"subtitle\">����ʮ����Ϸ����</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(info);
    Response.Write("</div>");
    
    %>

<div class="content">
    <p><a href="#p1">һ���淨���ͼ�����</a></p>
    <p><a href="#p2">�����淨˵��</a></p>
    <p><a href="#p3">�����轱���н�</a></p>
    <p><a href="#p4">�ġ�Ͷע��ʽ</a></p>
    <p><a href="#p5">�塢����ʽ</a></p>
    <p><a href="#p6">��������������</a></p>
    <p><a href="#p7">�ߡ��淨�ص�</a></p><br />
    <p id="p1">һ���淨���ͼ�����</p>
    �㶫����ʮ����һ�����߼����Ͳ�Ʊ�淨�����ڻ�ŵ�Ͳ�Ʊ���룬�ɹ㶫ʡ������Ʊ�������ĸ��������<br /><br />
    <p id="p2">�����淨˵��</p>
    ������ʮ�֡��Ǵ�01��20����������ѡ1��5���������Ϊһע��Ʊ����Ͷע��������10���淨�����������С����Ͷע��ʽ���ر���ֵ��һ����ǣ�ѡһͶע�С�ѡһ��Ͷ���͡�ѡһ��Ͷ������Ͷעʱ����ѡ���֣�Ҳ����ѡ��ɫ��10���淨�����С���ϵķ�ʽ���Է�Ϊ���֣�һ������淨��ѡ����ѡ��ѡ����ѡ��ѡ����ѡ��ѡ����ѡ����4���淨��Ͷע���н�����˳��ֻҪ���ڿ�����8������������Ͷע�ĺ��룬����н��ˣ�������ϼ����еĶ�λ�淨�������н�����λ�õ������н��������˳�򣬰���ѡ�����顢ѡ��ǰ�飻���������淨���Ǽȶ��н�����λ���ֶ��н��������˳�򣬰���ѡһ��Ͷ��ѡһ��Ͷ��ѡ����ֱ��ѡ��ǰֱ��4���淨��<br /><br />
    <p id="p3">�����轱���н�</p>
    <table cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC">
        <thead>
            <tr>
                <td width=12% bgcolor="#eFeFeF">�淨</td>
                <td width=20% bgcolor="#eFeFeF">��������ʾ��</td>
                <td width=18% bgcolor="#eFeFeF">Ͷע����ʾ��</td>
                <td width=40% bgcolor="#eFeFeF">�н�����</td>
                <td width=10% bgcolor="#eFeFeF">��ע����</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td bgcolor="#FFFFFF" align="center">ѡһ��Ͷ</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01|-|-|-|-</td>
                <td bgcolor="#FFFFFF">Ͷע�����뿪�����ֵĵ�һ��λ�õĺ������</td>
                <td bgcolor="#FFFFFF" align="center">25Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">ѡһ��Ͷ</td>
                <td bgcolor="#F7F7F7">20 01 02 03 04 05 06 07</td>
                <td bgcolor="#F7F7F7">20|-|-|-|-��19|-|-|-|-</td>
                <td bgcolor="#F7F7F7">Ͷע�����뿪���а�����˳����ֵĵ�һ��λ��Ϊ��ɫ�������</td>
                <td bgcolor="#F7F7F7" align="center">5Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">��ѡ��</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">03 06</td>
                <td bgcolor="#FFFFFF">Ͷע�����뿪������������2��λ�õĺ������</td>
                <td bgcolor="#FFFFFF" align="center">8Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">ѡ������</td>
                <td bgcolor="#F7F7F7">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">02 03</td>
                <td bgcolor="#F7F7F7">Ͷע�����뿪�������а�����˳����ֵ�2������λ�õĺ��������˳���ޣ�</td>
                <td bgcolor="#F7F7F7" align="center">31Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">ѡ����ֱ</td>
                <td bgcolor="#FFFFFF">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">03 02</td>
                <td bgcolor="#FFFFFF">Ͷע�����뿪�������а�����˳����ֵ�2������λ�õĺ��밴λ���</td>
                <td bgcolor="#FFFFFF" align="center">62Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">��ѡ��</td>
                <td bgcolor="#F7F7F7">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">04 06 07</td>
                <td bgcolor="#F7F7F7">Ͷע�����뿪������������3��λ�õĺ������</td>
                <td bgcolor="#F7F7F7" align="center">24Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">ѡ��ǰ��</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01 02 03</td>
                <td bgcolor="#FFFFFF">Ͷע�����뿪�������а�����˳����ֵ�ǰ3��λ�õĺ��������˳���ޣ�</td>
                <td bgcolor="#FFFFFF" align="center">1300Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">ѡ��ǰֱ</td>
                <td bgcolor="#F7F7F7">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">01 03 02</td>
                <td bgcolor="#F7F7F7">Ͷע�����뿪�������а�����˳����ֵ�ǰ3��λ�õĺ��밴λ���</td>
                <td bgcolor="#F7F7F7" align="center">8000Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">��ѡ��</td>
                <td bgcolor="#FFFFFF">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01 04 06 07</td>
                <td bgcolor="#FFFFFF">Ͷע�����뿪������������4��λ�õĺ������</td>
                <td bgcolor="#FFFFFF" align="center">80Ԫ</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">��ѡ��</td>
                <td bgcolor="#F7F7F7">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">01 02 03 06 08</td>
                <td bgcolor="#F7F7F7">Ͷע�����뿪������������5��λ�õĺ������</td>
                <td bgcolor="#F7F7F7" align="center">320Ԫ</td>
            </tr>
        </tbody>
    </table><br />
    <p id="p4">�ġ�Ͷע��ʽ</p>
    <strong>1��ѡһ��Ͷ</strong><br />ѡһ��Ͷ��01-18��ѡ1��,Ͷע�����뿪�������һλ��ͬ���н�������25Ԫ��<br />
    <strong>2��ѡһ��Ͷ</strong><br />19��20Ϊ��ţ���������������ѡһ��Ͷע�����������һλ�Ǻ�ţ�19��20�����н�������5Ԫ��<br />
    <strong>3��ѡ����ѡ</strong><br />��01-20����ѡ2��,Ͷע�����뿪������������λ��ͬ���н�������8Ԫ��Ͷעʱ��ѡ��1��������Ϊÿע���еĵ��룬�ٲ�������������Ϊ����Ͷע��<br />
    <strong>4��ѡ������</strong><br />��01-20����ѡ2��,Ͷע���뿪��������������λ������ͬ(˳����)���н�������31Ԫ��Ͷעʱ��ѡ��1��������Ϊÿע���еĵ��룬�ٲ�������������Ϊ����Ͷע��<br />
    <strong>5��ѡ����ֱ</strong><br />��01-20����ѡ������λ,Ͷע�����뿪����������������λ���֡�˳�����ͬ���н�������62Ԫ��<br />
    <strong>6��ѡ����ѡ</strong><br />��01-20����ѡ3��,Ͷע�����뿪������������λ��ͬ���н�������24Ԫ��Ͷעʱ��ѡ��1��2������Ϊÿע���еĵ��룬�ٲ�������������Ϊ����Ͷע��<br />
    <strong>7��ѡ��ǰ��</strong><br />��01-20�в¿��������ǰ��λ,Ͷע���뿪����ǰ��λ������ͬ(˳����)���н�,����1300Ԫ��Ͷעʱ��ѡ�� 1��2������Ϊÿע���еĵ��룬�ٲ�������������Ϊ�������Ͷע��<br />
    <strong>8��ѡ��ǰֱ</strong><br />��01-20�в¿�������ǰ��λ,Ͷע�����뿪������ǰ��λ���֡�˳�����ͬ���н�������8000Ԫ��<br />
    <strong>9��ѡ����ѡ</strong><br />��01-20����ѡ4��,Ͷע�����뿪������������λ��ͬ���н�������80Ԫ��Ͷעʱ��ѡ�� 1��3����Ϊÿע���еĵ��룬�ٲ�������������Ϊ�������Ͷע��<br />
    <strong>10��ѡ����ѡ</strong><br />��01-20����ѡ5��,Ͷע�����뿪������������λ��ͬ���н�������320Ԫ��Ͷעʱ��ѡ�� 1��4��Ϊÿע���еĵ��룬�ٲ�������������Ϊ�������Ͷע��<br /><br />
    <p id="p5">�塢����ʽ</p>
    <strong>1������</strong><br />����ָ�û���������ѡ�ŷ��𷽰������Ϲ�ȫ���ݶȻ��ί�б�վ��Ϊ�����Ʊ��<br />
    <strong>2��׷��</strong><br />׷��ָ��һע��һ�����������ڻ��������ϵ�Ͷע��׷�ſɷ�Ϊ����׷�źͼ��׷�ţ�����׷��ָ׷�ŵ������������ģ����׷��ָ׷�ŵ�������������<br /><br />
    <p id="p6">��������������</p>
    <strong>1������</strong><br /> ÿ��09:10��һ�ڿ�����23:00���һ�ڿ�����ÿ10���ӿ���һ�Σ�ÿ��84�ڿ���ͨ�����ӿ���ϵͳ���У������������Ƶ�źŻ���ý�岥����<br />
    <strong>2������</strong><br />С���Զ��������û��ڱ�վ�˻��У��ɼ���Ͷע������ί�б�վ��Ϊ��ȡ������������<br /><br />
    <p id="p7">�ߡ��淨�ص�</p>
    <strong>1����Ͷ������������</strong><br />ÿ10����һ�ڣ�ȫ��84�ڣ����߼�Ͷ�����������ң������������淨�Ĵ̼��ԡ�<br />
    <strong>2���淨�򵥶���</strong><br />������ʮ�֡��Ǵ�01��20����������ѡ1��5���������Ϊһע��Ʊ����Ͷע��������10���淨�����������С����Ͷע��ʽ���ر���ֵ��һ����ǣ�ѡһͶע�С�ѡһ��Ͷ���͡�ѡһ��Ͷ������Ͷעʱ����ѡ���֣�Ҳ����ѡ��ɫ��10���淨�����С���ϵķ�ʽ���Է�Ϊ���֣�һ������淨��ѡ����ѡ��ѡ����ѡ��ѡ����ѡ��ѡ����ѡ����4���淨��Ͷע���н�����˳��ֻҪ���ڿ�����8������������Ͷע�ĺ��룬����н��ˣ�������ϼ����еĶ�λ�淨�������н�����λ�õ������н��������˳�򣬰���ѡ�����顢ѡ��ǰ�飻���������淨���Ǽȶ��н�����λ���ֶ��н��������˳�򣬰���ѡһ��Ͷ��ѡһ��Ͷ��ѡ����ֱ��ѡ��ǰֱ��4���淨��<br />
    <strong>3��Ͷע�����٣����������</strong><br />������ʮ�֡�ÿעͶע����Ϊ1��5��������ÿ�ڿ���8��������Ϊ���ڿ������룬��������ԶԶ������Ͷע���룬ʹ�н������ס��ԡ�����ʮ�֡���Ͷע���������淨����ѡ�塱Ϊ����ÿעͶע5�����룬ֻҪ��5����������������8���н������о��н����ر��Ƕ���ϲ������Ͷע�Ĳ�����ԣ��������ѡ5����8����Ͷע�����������8��������8���н�������ȫ��ͬ�������н�ע���ʹﵽ56ע���ܽ���17920Ԫ��<br />
    
    
    
   
</div>

    
    
    
    <%
    //������ť
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    Response.Write("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
