<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaseSiteModifyWML.aspx.cs" Inherits="KeLin.WebSite.admin.BaseSiteModifyWML" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�ֻ������̨|�֙C������̨|Mobile Admin"), wmlVo));//��ʾͷ   


if (ver == "1")
{%>
<p>
<a href="login.aspx">00.<%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></a><br />
��¼WEB�����̨��ֱ�ۣ����ܸ�ǿ��<br />
----------<br/>
<%=this.GetLang("�ֻ������̨|�֙C������̨|Mobile WAP Admin")%><br />
----------<br/>
<a href="<%=http_start%>admin/applicationadmin.aspx?siteid=<%=siteid%>">01.��վ�������</a><br />
<a href="<%=http_start%>admin/webconfig.aspx?siteid=<%=siteid%>">02.ϵͳȫ������</a><br />
<a href="<%=http_start%>admin/sitesetdefault.aspx?siteid=<%=siteid%>">03.��վĬ������</a><br/>
<a href="<%=http_start%>admin/basesitemodifywmlInfo.aspx?siteid=<%=siteid%>">04.������Ϣ����</a><br/>
<a href="<%=http_start%>search/book_list.aspx?classid=0&amp;siteid=<%=siteid%>&amp;backurl=<%= HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid="+siteid)%>">05.ע���Ա����</a><br/>
<a href="<%=http_start%>wapstyle/style_list01.aspx?siteid=<%=siteid%>">*06.CSS��ʽ����</a><br/>
<a href="<%=http_start%>admin/wapindexeditwap.aspx?siteid=<%=siteid%>">*07.WAP/HTML5ҳ���ۺ��Ű�</a><br/>
(WEB�Ű����¼IE��̨)<br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">*08.<%=this.GetLang("���ɾ������|��ӄh������|Add or Remove Content")%></a><br/>
<a href="<%=http_start%>visiteCount/visitedCount.aspx?siteid=<%=siteid%>">09.��վ����ͳ��</a><br/>
<a href="<%=http_start%>admin/backupsqlwml.aspx?siteid=<%=siteid%>">10.����������־</a>
<br/>----------<br/>
<a href="<%=http_start%>admin/ModifyQR.aspx?siteid=<%=siteid%>">11.���ɶ�ά��</a>|<a href="<%=http_start%>admin/MakeApp.aspx?siteid=<%=siteid%>">����APP</a><br/>
<a href="<%=http_start%>bbs/UserRegCode.aspx?siteid=<%=siteid%>">12.ע�����������</a><br/>
<a href="<%=http_start%>bbs/ModifySMS_close.aspx?siteid=<%=siteid%>">13.��վע�Ὺ������</a><br/>
<a href="<%=http_start%>bbs/ModifySMS.aspx?siteid=<%=siteid%>">14.��ͨ����ע������</a><br/>
*<a href="<%=http_start%>OAuth/QQ/OAuth_help.htm">��ͨ������QQ�ʺŵ�¼</a> <br />
<a href="<%=http_start%>bbs/ModifyDomain.aspx?siteid=<%=siteid%>">15.��վ����������</a><br/>
<a href="<%=http_start%>bbs/ModifyRight.aspx?siteid=<%=siteid%>">16.��ɫȨ�޷�������</a><br/>
<a href="<%=http_start%>bbs/ModifyAllSid.aspx?siteid=<%=siteid%>">17.���»�Ա��ݹ���</a><br/>
<a href="<%=http_start%>bbs/ModifyAllUBB.aspx?siteid=<%=siteid%>">18.��ԱUBB��������</a><br/>
<a href="<%=http_start%>bbs/ModifyDownLink.aspx?siteid=<%=siteid%>">19.�������Ӳ�������</a><br />
<a href="<%=http_start%>admin/siteshare.aspx?siteid=<%=siteid%>">20.��վ��Դ��������</a>
<br/>----------<br/>
<a href="<%=http_start%>bbs/toMoneylvl.aspx?siteid=<%=siteid%>">21.���־����������</a><br/>
<a href="<%=http_start%>bbs/toLvlMedal.aspx?siteid=<%=siteid%>">22.����ͷ�εȼ�����</a><br/>
<a href="<%=http_start%>bbs/toLvlFace.aspx?siteid=<%=siteid%>">23.����ʱ��ͼƬ����</a><br/>
<a href="<%=http_start%>bbs/toLvlXingZhang.aspx?siteid=<%=siteid%>">24.�Զ�����ѫ������</a><br/>
<a href="<%=http_start%>bbs/toMedal.aspx?siteid=<%=siteid%>">25.�ֶ�����ѫ������</a><br/>
<a href="<%=http_start%>bbs/smalltypelist.aspx?siteid=<%=siteid%>&amp;systype=card">26.���û�Ա�������</a><br />
<a href="<%=http_start%>bbs/modifyusername.aspx?siteid=<%=siteid%>&amp;systype=card">27.���Ļ�Ա�û���</a><br />
<a href="<%=http_start%>bbs/resetvip.aspx?siteid=<%=siteid%>">28.����VIP��Ա����</a>
<br/>----------<br/>
<%
Response.Write("<a href=\"" + http_start + "chinabank/cardindex_chinaBank_WAP.aspx?siteid=" + siteid + "" + "\">29.��ֵ�ҵ���վ</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/cardindex_chinaBank_WAP.aspx?siteid=" + siteid + "" + "\">30.��վ��Ա��ֵ����</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/RMBAdd.aspx?siteid=" + siteid + "" + "\">31.��վ��Ա�ֹ����</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid="+this.siteid) + "" + "\">32.��վ��Ա��ֵ��־</a>*<br/>");
Response.Write("<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid=" + this.siteid) + "" + "\">33.������Ҳ�����־</a>*"); 
    %>

<br/>----------<br/>
<a href="<%=http_start%>admin/ubb2.aspx">32.UBB��ȫ</a><br/>
<a href="<%=http_start%>admin/ubb3.aspx">33.��վ��Դ����</a><br/>
<a href="<%=http_start%>admin/ubb4.aspx">34.�û��ֲ�</a><br/>
<a href="<%=http_start%>admin/ubb5.aspx">35.����Ա�ֲ�</a><br/>
<a href="http://bbs.kelink.com">36.WAP��վ֪ʶ��</a><br/>
<br/>----------<br/>
<b>ע�⣺������ģ��WAP1.0�ֻ����������ʹ��Opera8�汾��<a href="http://www.kelink.com/download/opera8.rar">���������</a></b>
<br/>----------<br/>
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">�����ϼ�</a>-<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>

<%}
else //2.0����
{%>
<div class="subtitle"><%=this.GetLang("����IE�����̨|��XIE������̨|WEB Admin Login")%></div>
<div class="content"><a href="login.aspx">00.<%=this.GetLang("�����¼WEB��̨|�c�����WEB��̨|Click here")%></a><br />����IE�������¼WEB�����̨��ֱ�ۣ����ܸ�ǿ�󣡽�������û�ʹ�ã�</div>
<div class="subtitle"><%=this.GetLang("�ֻ������̨|�֙C������̨|Mobile WAP Admin")%></div>
<div class="content">
<a href="<%=http_start%>admin/applicationadmin.aspx?siteid=<%=siteid%>">01.��վ�������</a><br />
<a href="<%=http_start%>admin/webconfig.aspx?siteid=<%=siteid%>">02.ϵͳȫ������</a><br />
<a href="<%=http_start%>admin/sitesetdefault.aspx?siteid=<%=siteid%>">03.��վĬ������</a><br/>
<a href="<%=http_start%>admin/basesitemodifywmlInfo.aspx?siteid=<%=siteid%>">04.������Ϣ����</a><br/>
<a href="<%=http_start%>search/book_list.aspx?classid=0&amp;siteid=<%=siteid%>&amp;backurl=<%= HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid="+siteid )%>">05.ע���Ա����</a><br/>
<a href="<%=http_start%>wapstyle/style_list01.aspx?siteid=<%=siteid%>">*06.CSS��ʽ����</a><br/>
<a href="<%=http_start%>admin/wapindexeditwap.aspx?siteid=<%=siteid%>">*07.WAP/HTML5ҳ���ۺ��Ű�</a><br/>
(WEB�Ű����¼IE��̨)<br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">*08.<%=this.GetLang("���ɾ������|��ӄh������|Add or Remove Content")%></a><br/>
<a href="<%=http_start%>visiteCount/visitedCount.aspx?siteid=<%=siteid%>">09.��վ����ͳ��</a><br/>
<a href="<%=http_start%>admin/backupsqlwml.aspx?siteid=<%=siteid%>">10.����������־</a>
<br/>----------<br/>
<a href="<%=http_start%>admin/ModifyQR.aspx?siteid=<%=siteid%>">11.���ɶ�ά��</a>|<a href="<%=http_start%>admin/MakeApp.aspx?siteid=<%=siteid%>">����APP</a><br/>
<a href="<%=http_start%>bbs/UserRegCode.aspx?siteid=<%=siteid%>">12.ע�����������</a><br/>
<a href="<%=http_start%>bbs/ModifySMS_close.aspx?siteid=<%=siteid%>">13.��վע�Ὺ������</a><br/>
<a href="<%=http_start%>bbs/ModifySMS.aspx?siteid=<%=siteid%>">14.��ͨ����ע������</a><br/>
*<a href="<%=http_start%>OAuth/QQ/OAuth_help.htm">��ͨ������QQ�ʺŵ�¼</a> <br />
<a href="<%=http_start%>bbs/ModifyDomain.aspx?siteid=<%=siteid%>">15.��վ����������</a><br/>
<a href="<%=http_start%>bbs/ModifyRight.aspx?siteid=<%=siteid%>">16.��ɫȨ�޷�������</a><br/>
<a href="<%=http_start%>bbs/ModifyAllSid.aspx?siteid=<%=siteid%>">17.���»�Ա��ݹ���</a><br/>
<a href="<%=http_start%>bbs/ModifyAllUBB.aspx?siteid=<%=siteid%>">18.��ԱUBB��������</a><br/>
<a href="<%=http_start%>bbs/ModifyDownLink.aspx?siteid=<%=siteid%>">19.�������Ӳ�������</a><br />
<a href="<%=http_start%>admin/siteshare.aspx?siteid=<%=siteid%>">20.��վ��Դ��������</a>

<br/>----------<br/>
<a href="<%=http_start%>bbs/toMoneylvl.aspx?siteid=<%=siteid%>">21.���־����������</a><br/>
<a href="<%=http_start%>bbs/toLvlMedal.aspx?siteid=<%=siteid%>">22.����ͷ�εȼ�����</a><br/>
<a href="<%=http_start%>bbs/toLvlFace.aspx?siteid=<%=siteid%>">23.����ʱ��ͼƬ����</a><br/>
<a href="<%=http_start%>bbs/toLvlXingZhang.aspx?siteid=<%=siteid%>">24.�Զ�����ѫ������</a><br/>
<a href="<%=http_start%>bbs/toMedal.aspx?siteid=<%=siteid%>">25.�ֶ�����ѫ������</a><br/>
<a href="<%=http_start%>bbs/smalltypelist.aspx?siteid=<%=siteid%>&amp;systype=card">26.���û�Ա�������</a><br />
<a href="<%=http_start%>bbs/modifyusername.aspx?siteid=<%=siteid%>&amp;systype=card">27.���Ļ�Ա�û���</a><br />
<a href="<%=http_start%>bbs/resetvip.aspx?siteid=<%=siteid%>">28.����VIP��Ա����</a>

<br/>----------<br/>
<%
Response.Write("<a href=\"" + http_start + "chinabank/cardindex_chinaBank_WAP.aspx?siteid=" + siteid + "" + "\">29.��ֵ�ҵ���վ</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/cardindex_chinaBank_WAP.aspx?siteid=" + siteid + "" + "\">30.��վ��Ա��ֵ����</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/RMBAdd.aspx?siteid=" + siteid + "" + "\">31.��վ��Ա�ֹ����</a><br/>");
Response.Write("<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid="+this.siteid) + "" + "\">32.��վ��Ա��ֵ��־</a>*<br/>");
Response.Write("<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid +  "&amp;backurl=" + HttpUtility.UrlEncode("admin/basesitemodifywml.aspx?siteid="+this.siteid) +"" + "\">33.������Ҳ�����־</a>*<br/>");
    %>
<hr />
<a href="<%=http_start%>admin/ubb2.aspx">32.UBB��ȫ</a><br/>
<a href="<%=http_start%>admin/ubb3.aspx">33.��վ��Դ����</a><br/>
<a href="<%=http_start%>admin/ubb4.aspx">34.�û��ֲ�</a><br/>
<a href="<%=http_start%>admin/ubb5.aspx">35.����Ա�ֲ�</a><br/>
<a href="http://bbs.kelink.com">36.WAP��վ֪ʶ��</a><br/>
</div>
<div class="tip">ע�⣺������ģ��WAP1.0�ֻ����������ʹ��Opera8�汾��<a href="http://www.kelink.com/download/opera8.rar">���������</a></div>
<div class="btBox"><div class="bt2">
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">�����ϼ�</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">������ҳ</a>	
 
</div></div>


<%}

Response.Write(WapTool.showDown(wmlVo));   //��ʾ�ײ�
%>
