<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaseSiteModifyWML00.aspx.cs" Inherits="KeLin.WebSite.admin.BaseSiteModifyWML00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��������Ա��̨|��������Ա��̨|Mobile Admin"), wmlVo));//��ʾͷ   


if (ver == "1")
{%>
<p>
<%=this.GetLang("ע�����|ע�����|Reg")%><br/>
��<a href="<%=http_start%>admin/ModifyDomainREG.aspx?siteid=<%=siteid%>">ע���������</a><br />
<b><%= this.isReg%></b><br />
��<a href="<%=http_start%>version.aspx?siteid=<%=siteid%>">ϵͳ����</a><br />
<%Response.Write(WapTool.ToWML(KL_Site_INFO,wmlVo)+"<br/>"); %>
��<a href="http://bbs.kelink.com">WAP��վ֪ʶ��</a><br />
----------<br />
<a href="login.aspx">00.<%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></a><br />
��¼WEB�����̨��ֱ�ۣ����ܸ�ǿ����:<br />
**.<a href="<%=http_start%>admin/applicationadmin.aspx?back=00&amp;siteid=<%=siteid%>">��վ�������</a><br />
01.��������Ϣ<br />
02.������ͳ��<br />
03.��վ����<br />
04.<a href="<%=http_start%>admin/backupsqlwml.aspx?siteid=<%=siteid %>&amp;back=00">���ݿ�ά��</a><br />
05.<a href="<%=http_start%>admin/SysSetDefaultWEB00.aspx?siteid=<%=siteid%>">ϵͳWEB����</a><br />

06.<a href="<%=http_start%>admin/deletetemp00.aspx?siteid=<%=siteid%>">�ϴ��ļ�����</a><br />
07.�������<br />
08.������վ<br />
09.��Ա����<br />
10.<a href="<%=http_start%>admin/ModifyDomain00.aspx?siteid=<%=siteid%>">����������</a><br />
11.������ַת��<br />

12.<a href="<%=http_start%>admin/webconfig.aspx?back=00&amp;siteid=<%=siteid%>">ϵͳȫ������</a><br />
13.<a href="<%=http_start%>admin/webconfig_top.aspx?back=00&amp;siteid=<%=siteid%>">ȫ�ֶ��͵ײ�����</a><br />
14.<a href="<%=http_start%>admin/webconfig_code.aspx?back=00&amp;siteid=<%=siteid%>">α��֤������</a><br />
15.<a href="<%=http_start%>admin/SysSetDefault00.aspx?siteid=<%=siteid%>">ϵͳĬ������</a><br />
16.<a href="<%=http_start%>wapstyle/style_list00WAP.aspx?siteid=<%=siteid%>">ϵͳCSS����</a><br />
17.<a href="<%=http_start%>wapstyle/mobileua_list00wap.aspx?siteid=<%=siteid%>">�ֻ��ͺŹ���</a><br />
18.�������ģ�����<br />
19.<a href="http://bbs.kelink.com">WAP��վ֪ʶ��</a><br />
----------<br/>
<%Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml00.aspx?siteid="+this.siteid) + "" + "\">20.��Ա��ֵ��ϸ</a><br/>");
  Response.Write("<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml00.aspx?siteid=" + this.siteid) + "" + "\">21.������Ҳ�����ϸ</a><br/>"); 
     %>
----------<br/>
<%=this.GetLang("�ֻ���������|�֙C��������|Mobile WAP Admin")%><br />
----------<br/>
��Ҫ���ģ��|<a href="<%=http_start %>admin/admin_waplistFun00.aspx?siteid=<%=siteid %>">����&gt;&gt;</a><br />
50.<a href="<%=http_start%>article/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
51.<a href="<%=http_start%>bbs/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��̳�������</a><br/>
52.<a href="<%=http_start%>picture/admin_userlistWAP00.aspx?siteid=<%=siteid%>">ͼƬ�������</a><br/>
53.<a href="<%=http_start%>ring/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
54.<a href="<%=http_start%>video/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��Ƶ�������</a><br/>
55.<a href="<%=http_start%>download/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
56.<a href="<%=http_start%>wml/admin_userlistWAP00.aspx?siteid=<%=siteid%>">WML�������</a><br/>
57.<a href="<%=http_start%>guessbook/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
58.<a href="<%=http_start%>chat/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
59.<a href="<%=http_start%>airplane/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
60.<a href="<%=http_start%>hotel/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�Ƶ��������</a><br/>
61.<a href="<%=http_start%>paimai/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
62.<a href="<%=http_start%>shop/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�̵��������</a><br/>
63.<a href="<%=http_start%>yuehui/admin_userlistWAP00.aspx?siteid=<%=siteid%>">Լ���������</a><br/>
64.<a href="<%=http_start%>rizhi/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
65.<a href="<%=http_start%>album/admin_userlistWAP00.aspx?siteid=<%=siteid%>">����������</a><br/>
66.<a href="<%=http_start%>link/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
67.<a href="<%=http_start%>gongqiu/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��ҵ�������</a><br/>
68.<a href="<%=http_start%>adlink/admin_userlistWAP00.aspx?siteid=<%=siteid%>">���������</a><br/>
69.<a href="<%=http_start%>class/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��Ŀ�������</a><br/>
70.<a href="<%=http_start%>class/admin_infolistWAP00.aspx?siteid=<%=siteid%>">�Ű��������</a><br/>
71.<a href="<%=http_start%>search/admin_userlistWAP00.aspx?siteid=<%=siteid%>">վ�ڶ������</a><br/>
72.<a href="<%=http_start %>bbs/Report_List.aspx?action=class&amp;siteid=<%=siteid %>&amp;classid=0">���Ӿٱ����</a><br/>
73.<a href="<%=http_start%>guangbo/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�㲥�������</a><br/>
74.<a href="<%=http_start%>myaccount/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
75.<a href="<%=http_start%>novel/admin_userlistWAP00.aspx?siteid=<%=siteid%>">С˵�������</a><br/>
76.<a href="<%=http_start%>games/gamesadmin00.aspx?siteid=<%=siteid%>">��Ϸ�������</a><br/>
77.<a href="<%=http_start%>xinzhang/admin_userlistWAP00.aspx?siteid=<%=siteid%>">����ѫ�����</a><br/>
78.<a href="<%=http_start%>Signin/admin_userlistWAP00.aspx?siteid=<%=siteid%>">ǩ��������</a><br/>
79.<a href="<%=http_start%>wabao/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�ڱ�������</a><br/>
80.<a href="<%=http_start%>FormEdit/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��������</a><br/>

<br/>----------<br/>
<b>ע�⣺Ϊ��ϵͳ��ȫ������û�����ӵĹ��ܿ�����IE��������ʽ���WEB��̨������</b>
<br/>----------<br/>
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">�����ϼ�</a>-<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>

<%}
else //2.0����
{
//for (int i=0;i< (Application.Count);i++){
    
//Response.Write("��������" + Application.GetKey(i) );
//Response.Write(" ,����ֵ��" + Application.Get(i));
//}


    %>
<div class="subtitle"><%=this.GetLang("ע�����|ע�����|Reg")%></div>
<div class="content">��<a href="<%=http_start%>admin/ModifyDomainREG.aspx?siteid=<%=siteid%>">ע���������</a><br />
<b><%= this.isReg%></b><br />
��<a href="<%=http_start%>version.aspx?siteid=<%=siteid%>">ϵͳ����</a><br />
<% Response.Write(WapTool.ToWML(KL_Site_INFO,wmlVo)+"<br/>");%>
</div>
<div class="subtitle"><%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></div>
<div class="content"><a href="login.aspx">00.<%=this.GetLang("�����¼WEB��̨|�c�����WEB��̨|Click here")%></a><br />����IE�������¼WEB�����̨��ֱ�ۣ����ܸ�ǿ����:<br />
**.<a href="<%=http_start%>admin/applicationadmin.aspx?back=00&amp;siteid=<%=siteid%>">��վ�������</a><br />
01.��������Ϣ<br />
02.������ͳ��<br />
03.��վ����<br />
04.<a href="<%=http_start%>admin/backupsqlwml.aspx?siteid=<%=siteid %>&amp;back=00">���ݿ�ά��</a><br />
05.<a href="<%=http_start%>admin/SysSetDefaultWEB00.aspx?siteid=<%=siteid%>">ϵͳWEB����</a><br />
06.<a href="<%=http_start%>admin/deletetemp00.aspx?siteid=<%=siteid%>">�ϴ��ļ�����</a><br />
07.�������<br />
08.������վ<br />
09.��Ա����<br />
10.<a href="<%=http_start%>admin/ModifyDomain00.aspx?siteid=<%=siteid%>">����������</a><br />
11.������ַת��<br />
12.<a href="<%=http_start%>admin/webconfig.aspx?back=00&amp;siteid=<%=siteid%>">ϵͳȫ������</a><br />
13.<a href="<%=http_start%>admin/webconfig_top.aspx?back=00&amp;siteid=<%=siteid%>">ȫ�ֶ��͵ײ�����</a><br />
14.<a href="<%=http_start%>admin/webconfig_code.aspx?back=00&amp;siteid=<%=siteid%>">α��֤������</a><br />
15.<a href="<%=http_start%>admin/SysSetDefault00.aspx?siteid=<%=siteid%>">ϵͳĬ������</a><br />
16.<a href="<%=http_start%>wapstyle/style_list00WAP.aspx?siteid=<%=siteid%>">ϵͳCSS����</a><br />
17.<a href="<%=http_start%>wapstyle/mobileua_list00wap.aspx?siteid=<%=siteid%>">�ֻ��ͺŹ���</a><br />
18.�������ģ�����<br />
19.<a href="http://bbs.kelink.com">WAP��վ֪ʶ��</a><br />
<hr />
<%Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml00.aspx?siteid="+this.siteid) + "" + "\">20.��Ա��ֵ��ϸ</a><br/>");
  Response.Write("<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml00.aspx?siteid=" + this.siteid) + "" + "\">21.������Ҳ�����ϸ</a><br/>"); 
     %>
<hr />
</div>
<div class="title"><%=this.GetLang("�ֻ���������|�֙C��������|Mobile WAP Admin")%></div>
<div class="subtitle">��Ҫ���ģ��|<a href="<%=http_start %>admin/admin_waplistFun00.aspx?siteid=<%=siteid %>">����&gt;&gt;</a></div>
<div class="content">
50.<a href="<%=http_start%>article/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
51.<a href="<%=http_start%>bbs/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��̳�������</a><br/>
52.<a href="<%=http_start%>picture/admin_userlistWAP00.aspx?siteid=<%=siteid%>">ͼƬ�������</a><br/>
53.<a href="<%=http_start%>ring/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
54.<a href="<%=http_start%>video/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��Ƶ�������</a><br/>
55.<a href="<%=http_start%>download/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
56.<a href="<%=http_start%>wml/admin_userlistWAP00.aspx?siteid=<%=siteid%>">WML�������</a><br/>
57.<a href="<%=http_start%>guessbook/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
58.<a href="<%=http_start%>chat/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
59.<a href="<%=http_start%>airplane/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
60.<a href="<%=http_start%>hotel/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�Ƶ��������</a><br/>
61.<a href="<%=http_start%>paimai/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
62.<a href="<%=http_start%>shop/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�̵��������</a><br/>
63.<a href="<%=http_start%>yuehui/admin_userlistWAP00.aspx?siteid=<%=siteid%>">Լ���������</a><br/>
64.<a href="<%=http_start%>rizhi/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
65.<a href="<%=http_start%>album/admin_userlistWAP00.aspx?siteid=<%=siteid%>">����������</a><br/>
66.<a href="<%=http_start%>link/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
67.<a href="<%=http_start%>gongqiu/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��ҵ�������</a><br/>
68.<a href="<%=http_start%>adlink/admin_userlistWAP00.aspx?siteid=<%=siteid%>">���������</a><br/>
69.<a href="<%=http_start%>class/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��Ŀ�������</a><br/>
70.<a href="<%=http_start%>class/admin_infolistWAP00.aspx?siteid=<%=siteid%>">�Ű��������</a><br/>
71.<a href="<%=http_start%>search/admin_userlistWAP00.aspx?siteid=<%=siteid%>">վ�ڶ������</a><br/>
72.<a href="<%=http_start %>bbs/Report_List.aspx?action=class&amp;siteid=<%=siteid %>&amp;classid=0">���Ӿٱ����</a><br/>
73.<a href="<%=http_start%>guangbo/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�㲥�������</a><br/>
74.<a href="<%=http_start%>myaccount/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�����������</a><br/>
75.<a href="<%=http_start%>novel/admin_userlistWAP00.aspx?siteid=<%=siteid%>">С˵�������</a><br/>
76.<a href="<%=http_start%>games/gamesadmin00.aspx?siteid=<%=siteid%>">��Ϸ�������</a><br/>
77.<a href="<%=http_start%>xinzhang/admin_userlistWAP00.aspx?siteid=<%=siteid%>">����ѫ�����</a><br/>
78.<a href="<%=http_start%>Signin/admin_userlistWAP00.aspx?siteid=<%=siteid%>">ǩ��������</a><br/>
79.<a href="<%=http_start%>wabao/admin_userlistWAP00.aspx?siteid=<%=siteid%>">�ڱ�������</a><br/>
80.<a href="<%=http_start%>FormEdit/admin_userlistWAP00.aspx?siteid=<%=siteid%>">��������</a><br/>

</div>
<div class="tip">ע�⣺Ϊ��ϵͳ��ȫ������û�����ӵĹ��ܿ�����IE��������ʽ���WEB��̨������</div>
<div class="btBox"><div class="bt2">
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">�����ϼ�</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	

</div></div>


<%}

Response.Write(WapTool.showDown(wmlVo));   //��ʾ�ײ�
%>
