<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWap.aspx.cs" Inherits="KeLin.WebSite.admin.LoginWap" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�ֻ������̨|�֙C������̨|Mobile Admin"), wmlVo));//��ʾͷ   


if (ver == "1")
{%>
<p>
<a href="login.aspx"><%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></a><br />
��¼WEB�����̨��ֱ�ۣ����ܸ�ǿ��<br />
----------<br/>
<%=this.GetLang("�ֻ������̨|�֙C������̨|Mobile WAP Admin")%><br />
<a href="<%=http_start%>admin/basesitemodifywml00.aspx?siteid=<%=siteid%>">��������Ա�����̨</a><br />
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>">վ�������̨</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">�ܱ༭�����̨</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">��Ŀ����Ա��̨</a><br/>
----------<br/>
<%=this.GetLang("��վ�����ɫ˵��|��վ�����ɫ˵��|WEBmaster")%><br/>
<b>[00]��������Ա</b>������������վ���������ݡ�������������Ա(��վID���ڻ�ԱID)�͸���������Ա(��վID�����ڻ�ԱID)��Ȩ��һ���� <br />
<b>[01]վ��</b>�������Լ���վ�ڵ��������ݣ�����վ��(��վID���ڻ�ԱID)�͸�վ��(��վID�����ڻ�ԱID)��Ȩ��һ����  <br />
<b>[03]�ܱ༭</b>�������Լ���վ�ڵ�������Ŀ���ݡ������Ű棬��վ���õȣ�ֻ������Ŀ���ݡ�  <br />
<b>[04]�ܰ���</b>�������Լ���վ�ڵ���̳��Ŀ���ݡ�WAPǰ̨�������ӡ�  <br />
<b>[02]��ͨ</b>��ĳ��վ�µĻ�Ա������Ϊ�Զ�����ʽ�ɫ��VIP1��VIP2�ȡ�  <br />
<b>[**]��Ŀ����Ա(����)</b>��ֻ�����趨����Ŀ���ݡ���Ȩ����Ҫ���޸���Ŀ���Դ���ӡ� <br/>
<b>��ʾ:ֻ�����Ĳ��ܷ���Ȩ�ޣ������ܷ�����Ŀ����Ա��</b><br />
----------<br/>
<%=this.GetLang("��վ����߼�˵��|��վ����߼�˵��|WEBmaster check")%>
<br />
[0]������˷�Ϊ������������� + �ϴ��ļ��ײ����(WEB��̨���ϴ��ļ���������ϸ����˵��)��<br />
[1]��������Ա�������ø�ע����վ�Ƿ���Ҫ�������(WEB��̨����������Ա����ϵͳȫ�����á�������)<br />
[2]��������Ա��������A��վ�Ƿ���Ҫ�������(WEB��̨����������Ա����������վ)��<br />
[3]A��վվ�����������Լ���վ�Ƿ���Ҫ�������(WEB/WAP��̨����վĬ������)��<br />
[4]<b>����һ:</b>��������Ա��A��վ��Ҫ������ݡ�A��վ�����û��������ݺ��ϴ����ļ���ֻ���ɳ�������Ա���ͨ����<br />
[5]<b>������:</b>��������Ա��A��վ����Ҫ������� + Aվ������A��վ��Ҫ��ˣ�Aվ��Ȩ�����µ������û��������ݺ��ϴ����ļ�ֻ����Aվ���򳬼�����Ա���ͨ����<br />
[6]<b>������:</b>��������Ա��A��վ����Ҫ������� + Aվ������A��վ����Ҫ��ˣ����������ͨ����˺���ʾ��<br />
[7]ע��:����ģ����˺���Ҫ���»���Ż���ʾ������<br />
[8]�ļ��ײ����ָ�����ļ���ַhttp://abc.com/1.gif�����δ���ͨ��ֱ����ʾδ���ͼƬ����������ײ����������ʱֱ����ʾ������ͼƬ��
<br/>----------<br/>
<%=this.GetLang("����Ա�������|����Ա�������|WEBmaster need Soft")%><br/>
1.<a href="http://www.kelink.com/download/opera8.rar">opera8�ֻ�ģ����(�����Ĵ�����ʾ)</a><br />
2.<a href="http://www.kelink.com/download/m3gate12.rar">M3gate�ֻ�ģ����(�ϸ����WAP1.0)</a><br />
3.<a href="http://www.kelink.com/download/flashfxp.rar">FTP�ļ��������</a><br />
4.<a href="http://www.kelink.com/download/ue.rar">����༭����(UE)</a>
<br/>----------<br/>
<a href="<%=http_start + backurl%>">�����ϼ�</a>-<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>

<%}
else //2.0����
{%>
<div class="subtitle"><a name="top"></a><%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></div>
<div class="content"><a href="login.aspx"><%=this.GetLang("�����¼WEB��̨|�c�����WEB��̨|Click here")%></a><br />����IE�������¼WEB�����̨��ֱ�ۣ����ܸ�ǿ�󣡽�������û�ʹ�ã�</div>
<div class="subtitle"><%=this.GetLang("�ֻ������̨|�֙C������̨|Mobile WAP Admin")%></div>
<div class="content">
<a href="<%=http_start%>admin/basesitemodifywml00.aspx?siteid=<%=siteid%>">��������Ա�����̨</a><br />
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>">վ�������̨</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">�ܱ༭�����̨</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">��Ŀ����Ա��̨</a><br/>
</div>
<div class="subtitle"><%=this.GetLang("��վ�����ɫ˵��|��վ�����ɫ˵��|WEBmaster")%></div>
<div class="content">
<b>[00]��������Ա</b>������������վ���������ݡ�������������Ա(��վID���ڻ�ԱID)�͸���������Ա(��վID�����ڻ�ԱID)��Ȩ��һ���� <br />
<b>[01]վ��</b>�������Լ���վ�ڵ��������ݣ�����վ��(��վID���ڻ�ԱID)�͸�վ��(��վID�����ڻ�ԱID)��Ȩ��һ����  <br />
<b>[03]�ܱ༭</b>�������Լ���վ�ڵ�������Ŀ���ݡ������Ű棬��վ���õȣ�ֻ������Ŀ���ݡ�  <br />
<b>[04]�ܰ���</b>�������Լ���վ�ڵ���̳��Ŀ���ݡ�WAPǰ̨�������ӡ�  <br />
<b>[02]��ͨ</b>��ĳ��վ�µĻ�Ա������Ϊ�Զ�����ʽ�ɫ��VIP1��VIP2�ȡ�  <br />
<b>[**]��Ŀ����Ա(����)</b>��ֻ�����趨����Ŀ���ݡ���Ȩ����Ҫ���޸���Ŀ���Դ���ӡ�<br />
<b>��ʾ:ֻ�����Ĳ��ܷ���Ȩ�ޣ������ܷ�����Ŀ����Ա��</b><br />
<br /><a name="check"></a> 
</div>
<div class="subtitle"><%=this.GetLang("��վ����߼�˵��|��վ����߼�˵��|WEBmaster check")%></div>
<div class="content">
[0]������˷�Ϊ������������� + �ϴ��ļ��ײ����(WEB��̨���ϴ��ļ���������ϸ����˵��)��<br />
[1]��������Ա�������ø�ע����վ�Ƿ���Ҫ�������(WEB��̨����������Ա����ϵͳȫ�����á�������)<br />
[2]��������Ա��������A��վ�Ƿ���Ҫ�������(WEB��̨����������Ա����������վ)��<br />
[3]A��վվ�����������Լ���վ�Ƿ���Ҫ�������(WEB/WAP��̨����վĬ������)��<br />
[4]<b>����һ:</b>��������Ա��A��վ��Ҫ������ݡ�A��վ�����û��������ݺ��ϴ����ļ���ֻ���ɳ�������Ա���ͨ����<br />
[5]<b>������:</b>��������Ա��A��վ����Ҫ������� + Aվ������A��վ��Ҫ��ˣ�Aվ��Ȩ�����µ������û��������ݺ��ϴ����ļ�ֻ����Aվ���򳬼�����Ա���ͨ����<br />
[6]<b>������:</b>��������Ա��A��վ����Ҫ������� + Aվ������A��վ����Ҫ��ˣ����������ͨ����˺���ʾ��<br />
[7]ע��:����ģ����˺���Ҫ���»���Ż���ʾ������<br />
[8]�ļ��ײ����ָ�����ļ���ַhttp://abc.com/1.gif�����δ���ͨ��ֱ����ʾδ���ͼƬ����������ײ����������ʱֱ����ʾ������ͼƬ��
</div>
<div class="subtitle"><%=this.GetLang("����Ա�������|����Ա�������|WEBmaster need Soft")%></div>
<div class="content">
1.<a href="http://www.kelink.com/download/opera8.rar">opera8�ֻ�ģ����(�����Ĵ�����ʾ)</a><br />
2.<a href="http://www.kelink.com/download/m3gate12.rar">M3gate�ֻ�ģ����(�ϸ����WAP1.0)</a><br />
3.<a href="http://www.kelink.com/download/flashfxp.rar">FTP�ļ��������</a><br />
4.<a href="http://www.kelink.com/download/ue.rar">����༭����(UE)</a>
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start + backurl%>">�����ϼ�</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	

</div></div>


<%}

Response.Write(WapTool.showDown(wmlVo));   //��ʾ�ײ�
%>
