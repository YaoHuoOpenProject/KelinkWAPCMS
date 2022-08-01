<%
'**************************************************
'* @Description 易宝支付非银行卡支付专业版接口范例 
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
	
	'商户编号p1_MerId,以及密钥merchantKey 需要从易宝支付平台获得
	'p1_MerId		= "10000432521"																											'测试使用
	'merchantKey	= "8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t"		'测试使用
%>