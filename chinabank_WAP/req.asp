<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><% Response.ContentType="text/vnd.wap.wml; charset=gb2312" %><?xml version="1.0" encoding="GB2312"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml><!--#include file="../ASP_API/cookies.asp"--><!--#include file="../ASP_API/conngb.asp"--><!-- #include file="yeepayCommon.asp" -->
<%
'**************************************************
'* @Description �ױ�֧�������п�֧��רҵ��ӿڷ��� 
'* @V3.0
'* @Author rui.xin
'**************************************************

	Dim p2_Order
	Dim p3_Amt
	Dim p8_Url
	Dim pa7_cardNo
	Dim pa8_cardPwd
	Dim pd_FrpId
	Dim returnMsg

	'	�̼������û�������Ʒ��֧����Ϣ.
	''�ױ�֧��ƽ̨ͳһʹ��GBK/GB2312���뷽ʽ,�������õ����ģ���ע��ת��
	
	'	�̻�������,ѡ��.
	''����Ϊ""���ύ�Ķ����ű����������˻�������Ψһ;Ϊ""ʱ���ױ�֧�����Զ�����������̻�������.
	'p2_Order				=	request("p2_Order")
	curdate = now()										' ����ϵͳʱ�������������ʽ��YYYYMMDD-v_mid-HMMSS
	p2_Order = year(curdate) & right("0"&month(curdate),2) &  right("0"&day(curdate),2) & right("0"&hour(curdate),2) & right("0"&minute(curdate),2) & right("0"&second(curdate),2) &"-" & siteid

	
	
	'	֧�����,����.
	''��λ:Ԫ����ȷ����.
	p3_Amt					=	request("p3_Amt")
	if p3_Amt="" then p3_Amt="0" end if
	'	�̻�����֧���ɹ����ݵĵ�ַ,֧���ɹ����ױ�֧������õ�ַ�������γɹ�֪ͨ.
	'p8_Url					= request("p8_Url")		
	p8_Url=http_start&"chinabank_wap/callBack.asp"
	
	'	�̻���չ��Ϣ.
	''�̻�����������д1K ���ַ���,֧���ɹ�ʱ��ԭ�����أ��˲������õ����ģ���ע��ת��.
	pa_MP						= request("pa_MP") '���ڴ����վID
	
	' �����п����к�
	pa7_cardNo			= request("pa7_cardNo")
	if pa7_cardNo="" then pa7_cardNo="0" end if
	' �����п�����
	pa8_cardPwd			= request("pa8_cardPwd")
	if pa8_cardPwd="" then pa8_cardPwd="0" end if
	'	���б���
	pd_FrpId			  = request("pd_FrpId")
	
  '���½���Ҫ���ݿ�д�����ݿ���
  sql="insert into [chinabank_wap_order](siteid,userid,orderid,amount,cardno,cardpwd,frpid,code,banktype)values"
  sql=sql&"('"&siteid&"',"&userid&",'"&p2_Order&"',"&p3_Amt&",'"&pa7_cardNo&"','"&pa8_cardPwd&"','"&pd_FrpId&"','0',0)"
  conn.execute(sql)
  closeconn()
	
	' �����п�֧����ʽ����,�ӿڲ���ͨ��������ø���ʽ����
	 returnMsg = annulCard(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	' �����п�֧����������,����ʱ����ø�����
	'returnMsg = annulCardTest(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	

%>   
<card id="main" title="�����п�֧��">
<p align="left">
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;Click Back</a>	<br/>
<b>֧�������</b><br/>
<%
	
returnMsg=replace(returnMsg,"&","&amp;") 
returnMsg=replace(returnMsg,"<BR>","<br/>")
response.write returnMsg
%>
<br/><br/>
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;FORWARD</a>	<br/>
<a href="<%=http_start%>myfile.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;BACKZone</a>	<br/>
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">�����ϼ�</a>	<br/>
</p>
</card></wml>