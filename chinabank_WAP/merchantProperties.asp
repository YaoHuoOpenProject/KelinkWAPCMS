<%
'**************************************************
'* @Description �ױ�֧�������п�֧��רҵ��ӿڷ��� 
'* @V3.0
'* @Author rui.xin
'**************************************************

	Dim p1_MerId
	Dim merchantKey
	dim getsiteids
	dim tomoney
	getsiteids=request("pa_MP")
	if getsiteids<>"" then
		 siteid=getsiteids
	end if
	
  set rs=conn.execute("select p1_MerId,merchantKey,tomoney from [chinabank_wap_config] where siteid="&siteid)
  if not rs.eof then
  	 p1_MerId=rs("p1_MerId")
  	 merchantKey=rs("merchantKey")
  	 tomoney=rs("tomoney")
  end if
  rs.close
  set rs=nothing
	
	'�̻����p1_MerId,�Լ���ԿmerchantKey ��Ҫ���ױ�֧��ƽ̨���
	'p1_MerId		= "10000432521"																											'����ʹ��
	'merchantKey	= "8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t"		'����ʹ��
%>