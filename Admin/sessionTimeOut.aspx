<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sessionTimeOut.aspx.cs" Inherits="KeLin.WebSite.admin.sessionTimeOut" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type=text/css>
.quote{margin:5px 20px;border:1px solid #CCCCCC;padding:5px; background:#F3F3F3 }
body{boder:0px}
.HtmlCode{margin:3px 3px;border:1px solid #CCCCCC;padding:5px;background:#FDFDDF;font-size:14px;line-height : normal ;}
</style>
<title>��ʾ</title>
</head>

<BODY bgcolor="#FFFFFF" >
<DIV  class="HtmlCode">

<p><img src="/NetImages/error.png" alt ="������" align="center"/>
<%    
    if (this.StrType == "-2")
    {

        Response.Write("����ϵ���ֹٷ����������������<a href=\"http://kelink.com\">kelink.com</a>");
    }
    else if (this.StrType == "-1")
    {

        Response.Write("��Ǹ����ʱ����ʹ�ô˹��ܣ�ԭ��û�а�װ�Ϳ����˲����");
    }
    else if (this.StrType == "00")
    {

       Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡(��������Աӵ��)");
   }
   else if (this.StrType == "01")
   {
       Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡(��������Ա��վ��ӵ��)");
   }
    else if (this.StrType == "03")
    {
        Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡(��������Ա��վ�����ܱ༭ӵ��)");
    }
    else if (this.StrType == "04")
    {
        Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡(��������Ա��վ�����ܱ༭������ӵ��)");
    }
    else if (this.StrType == "05")
    {
        Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡(����������Ա����վ��ӵ��)");
    }
    else if (this.StrType == "06")
    {
        Response.Write("��Ǹ����û��Ȩ�޲�����ҳ�棡");
    }
    else if (this.StrType == "07")
    {
        Response.Write("��Ǹ����Ȩ��ѡ���ˣ�");
    }
   else
   { %>

<b><font color="#FF0000">�������ڴ�����ˣ�Session�����ϢʧЧ�������µ�¼��<br>
��</font></b></p>
<p>������������밴����Ҫ���������IE��</p>
<p>1����IE�˵��ǣ�ѡ�����ߡ�����Internet ѡ�������˽�������߼���������ͼѡ�к�ȷ����<br>
<br>
&nbsp;&nbsp; <img border="0" src="/NetImages/session.gif"></p>
<p>2��Ȼ��������ȫ��ѡ�����վ��...�������Ը������е�...����ǰ�湳ȥ�������������վ��ַ���������ӡ�����ȷ����</p>
<p>3������ٵ����ȷ����������IE���ٴ���ַ��¼�������ɽ��������⡣</p>
<p><font color="#FF0000">�����Ȼ����������½���뽫 �����桿 ѡ���е� ɾ��cookies��ɾ���ļ� �����һ�飬���������֮���ٲ��ԡ�</font> </p>
<p>�ٲ��еĻ����Ǿ����������������ռ���������CPU���ڴ����ƻ�Ӧ�óػ���ʱ�䣬������������ϵ��<br>

<%} %>
��<a href="javascript:window.history.back();">����</a>��
</p>
</DIV>
</body>

</html>
