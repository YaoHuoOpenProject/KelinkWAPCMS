<!-- #include file="hmac-md5.asp" -->
<!-- #include file="merchantProperties.asp" -->
<%
'**************************************************
'* @Description �ױ�֧�������п�֧��רҵ��ӿڷ��� 
'* @V3.0
'* @Author rui.xin
'**************************************************

	Dim reqURL_SNDApro
	Dim p0_Cmd
	Dim pa0_Mode
	Dim pr_NeedResponse
	Dim sbOld
	Dim sFormString
	
	' ҵ������
	''�����п�רҵ��֧�����󣬹̶�ֵ "AnnulCard" .	
	p0_Cmd = "AnnulCard"
	
	'	�����п�֧������ģʽ
	''Ϊ"3"��ʾ���ܴ��䣬���ܷ�ʽΪ3des��Ϊ"1"��ʾ��ͨ������.
	pa0_Mode				= "1" 
	
	'	Ӧ�����
	''Ϊ"1": ��ҪӦ�����;Ϊ"0": ����ҪӦ�����.
	pr_NeedResponse	= "1"			
	
'	����ǩ����.
Function getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	'	����ǩ������һ�������ĵ��б�����ǩ��˳�����
	sbOld  = ""
	sbOld = sbOld + p0_Cmd
	sbOld = sbOld + p1_MerId
	sbOld = sbOld + p2_Order
	sbOld = sbOld + p3_Amt		
	sbOld = sbOld + p8_Url
	sbOld = sbOld + pa_MP
	sbOld = sbOld + pa7_cardNo
	sbOld = sbOld + pa8_cardPwd
	sbOld = sbOld + pd_FrpId
	sbOld = sbOld + pa0_Mode
	sbOld = sbOld + pr_NeedResponse
	
	getReqHmacString = HmacMd5(sbOld,merchantKey) 
	
End Function

'	�����п�֧��רҵ��ģ�⽻�׽��.
Function generationTestCallback(sFormString)
	
	'	�����п�֧��רҵ��������Ե�ַ
	reqURL_SNDAproTest = "http://tech.yeepay.com:8080/robot/generationCallback.action"
	
	set objHttp = Server.CreateObject("MSXML2.ServerXMLHTTP")
 
	objHttp.open "POST", reqURL_SNDAproTest, false
	objHttp.setRequestHeader "Content-type", "application/x-www-form-urlencoded"
	objHttp.Send sFormString
   
	If (objHttp.status <> 200 ) Then
		'HTTP ������
		strCallBack = "Status=" & objHttp.status & " ���Ե�ַ��Ӧʧ��!!!"
	Else
		strCallBack = objHttp.responseText
		strCallBack = mid(strCallBack,42)
		strCallBack = "ģ��Ľ��׽��֪ͨ��:" & strCallBack
		
	End If
	generationTestCallback = strCallBack

End Function

'	�����п�֧��רҵ��������Ի���.
Function annulCardTest(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	hmac = getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	
	'	�ױ�֧���Զ����Ի����������ַ,����ʹ��.
	reqURL_SNDApro = "http://tech.yeepay.com:8080/robot/debug.action"
	
  sFormString = ""
	sFormString = sFormString + "p0_Cmd=" + p0_Cmd
	sFormString = sFormString + "&p1_MerId=" + p1_MerId
	sFormString = sFormString + "&p2_Order=" + p2_Order
	sFormString = sFormString + "&p3_Amt=" + p3_Amt
	sFormString = sFormString + "&p8_Url=" + p8_Url
	sFormString = sFormString + "&pa_MP=" + pa_MP
	sFormString = sFormString + "&pa7_cardNo=" + pa7_cardNo
	sFormString = sFormString + "&pa8_cardPwd=" + pa8_cardPwd
	sFormString = sFormString + "&pd_FrpId=" + pd_FrpId
	sFormString = sFormString + "&pa0_Mode=" + pa0_Mode
	sFormString = sFormString + "&pr_NeedResponse=" + pr_NeedResponse
	sFormString = sFormString + "&hmac=" + hmac

	set objHttp = Server.CreateObject("MSXML2.ServerXMLHTTP")
 
	objHttp.open "POST", reqURL_SNDApro, false
	objHttp.setRequestHeader "Content-type", "application/x-www-form-urlencoded"
	objHttp.Send sFormString
   
	If (objHttp.status <> 200 ) Then
		'HTTP ������
		response.Write("Status="&objHttp.status)
	Else
		
		Dim strCallBack
		Dim aryCallBack
		Dim returnMsg
		
		strCallBack = trim(objHttp.responseText)
		aryCallBack = Split(strCallBack,vbLf)
		returnMsg = ""
		For i = LBound(aryCallBack) To UBound(aryCallBack)-1
		
			aryReturn = Split(aryCallBack(i),"=")
			sKey = aryReturn(0)
			sValue = aryReturn(1)

			If sKey = "r0_Cmd" Then
				r0_Cmd=sValue
			ElseIf sKey = "r1_Code"  Then
				r1_Code = sValue   	
			ElseIf sKey = "r2_TrxId" Then	
				r2_TrxId = sValue
			ElseIf sKey = "r6_Order" Then	
				r6_Order = sValue
			ElseIf sKey = "rq_ReturnMsg" Then			
				rq_ReturnMsg = sValue
			ElseIf sKey = "hmac" Then
				hmac = trim(sValue)	 
			Else
				returnMsg = returnMsg + aryCallBack(i)   
			End If
		Next

		If trim(returnMsg)<> "" then
			annulCardTest = returnMsg
			exit Function
		End If
		
		sbOld = ""
		sbOld = sbOld + r0_Cmd
		sbOld = sbOld + r1_Code
		sbOld = sbOld + r2_TrxId
		sbOld = sbOld + r6_Order
		sbOld = sbOld + rq_ReturnMsg
		
		sNewString = ""
		sNewString = HmacMd5(sbOld,merchantKey)
		
		If trim(sNewString)=trim(hmac) Then
			If CStr(r1_Code)="1" Then
				returnMsg = returnMsg + "�ύ�ɹ�!<BR>"
				returnMsg = returnMsg + "<BR>�̻�������:" + r6_Order 
				returnMsg = returnMsg + "<BR><BR>"
				returnMsg = returnMsg + generationTestCallback(sFormString)
			ElseIf CStr(r1_Code)="2" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����п�����Ч!"
		 	ElseIf CStr(r1_Code)="7" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����п�����Ч!"
		 	ElseIf CStr(r1_Code)="11" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�̻�������:" + r6_Order 
				returnMsg = returnMsg + "<BR>�̻��������ظ�!"
		 	ElseIf CStr(r1_Code)="61" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����˺���δ��ͨ!"
		 	Else
				returnMsg = returnMsg + "�ύʧ��!<BR>" + r1_Code
		 	End If
		Else
			returnMsg = returnMsg + "������Ϣ���۸�!<BR>"
			returnMsg = returnMsg + "<BR>localhost:" + sNewString 
			returnMsg = returnMsg + "<BR>YeePay:" + hmac 
		End If
	End If

	annulCardTest = returnMsg

End Function

'	�����п�֧��רҵ����������.
Function annulCard(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	hmac = getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	
	'	�����п�֧��רҵ�������ַ
	reqURL_SNDApro = "https://www.yeepay.com/app-merchant-proxy/command.action"
	
  sFormString = ""
	sFormString = sFormString + "p0_Cmd=" + p0_Cmd
	sFormString = sFormString + "&p1_MerId=" + p1_MerId
	sFormString = sFormString + "&p2_Order=" + p2_Order
	sFormString = sFormString + "&p3_Amt=" + p3_Amt
	sFormString = sFormString + "&p8_Url=" + p8_Url
	sFormString = sFormString + "&pa_MP=" + pa_MP
	sFormString = sFormString + "&pa7_cardNo=" + pa7_cardNo
	sFormString = sFormString + "&pa8_cardPwd=" + pa8_cardPwd
	sFormString = sFormString + "&pd_FrpId=" + pd_FrpId
	sFormString = sFormString + "&pa0_Mode=" + pa0_Mode
	sFormString = sFormString + "&pr_NeedResponse=" + pr_NeedResponse
	sFormString = sFormString + "&hmac=" + hmac

	set objHttp = Server.CreateObject("MSXML2.ServerXMLHTTP")
 
	objHttp.open "POST", reqURL_SNDApro, false
	objHttp.setRequestHeader "Content-type", "application/x-www-form-urlencoded"
	objHttp.Send sFormString
   
	If (objHttp.status <> 200 ) Then
		'HTTP ������
		response.Write("Status="&objHttp.status)
	Else
		
		Dim strCallBack
		Dim aryCallBack
		Dim returnMsg
		
		strCallBack = trim(objHttp.responseText)
		aryCallBack = Split(strCallBack,vbLf)
		returnMsg = ""
		For i = LBound(aryCallBack) To UBound(aryCallBack)-1
		
			aryReturn = Split(aryCallBack(i),"=")
			sKey = aryReturn(0)
			sValue = aryReturn(1)

			If sKey = "r0_Cmd" Then
				r0_Cmd=sValue
			ElseIf sKey = "r1_Code"  Then
				r1_Code = sValue   	
			ElseIf sKey = "r2_TrxId" Then	
				r2_TrxId = sValue
			ElseIf sKey = "r6_Order" Then	
				r6_Order = sValue
			ElseIf sKey = "rq_ReturnMsg" Then			
				rq_ReturnMsg = sValue
			ElseIf sKey = "hmac" Then
				hmac = trim(sValue)	 
			Else
				returnMsg = returnMsg + aryCallBack(i)   
			End If
		Next

		If trim(returnMsg)<> "" then
			annulCard = returnMsg
			exit Function
		End If
		
		sbOld = ""
		sbOld = sbOld + r0_Cmd
		sbOld = sbOld + r1_Code
		sbOld = sbOld + r2_TrxId
		sbOld = sbOld + r6_Order
		sbOld = sbOld + rq_ReturnMsg
		
		sNewString = ""
		sNewString = HmacMd5(sbOld,merchantKey)
		
		If trim(sNewString)=trim(hmac) Then
			If CStr(r1_Code)="1" Then
				returnMsg = returnMsg + "�ύ�ɹ�!<BR>"
				returnMsg = returnMsg + "<BR>�̻�������:" + r6_Order 
			ElseIf CStr(r1_Code)="2" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����п�����Ч!"
		 	ElseIf CStr(r1_Code)="7" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����п�����Ч!"
		 	ElseIf CStr(r1_Code)="11" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�̻�������:" + r6_Order 
				returnMsg = returnMsg + "<BR>�̻��������ظ�!"
		 	ElseIf CStr(r1_Code)="61" Then
				returnMsg = returnMsg + "�ύʧ��!<BR>"
				returnMsg = returnMsg + "<BR>�����˺���δ��ͨ!"
		 	Else
				returnMsg = returnMsg + "�ύʧ��!<BR>r1_Code:"&r1_Code
		 	End If
		Else
			returnMsg = returnMsg + "������Ϣ���۸�!<BR>"
			returnMsg = returnMsg + "<BR>localhost:" + sNewString 
			returnMsg = returnMsg + "<BR>YeePay:" + hmac 
		End If
	End If

	annulCard = returnMsg

End Function


Function CheckHmac(r0_Cmd,r1_Code,rb_Order,r2_TrxId,pa_MP,rc_Amt,hmac)

	'ȡ��ǩ������ǰ���ַ�����һ�������ĵ��б�����ǩ��˳�����
	sbOld = ""
	sbOld = sbOld + r0_Cmd
	sbOld = sbOld + r1_Code
	sbOld = sbOld + p1_MerId
	sbOld = sbOld + rb_Order
	sbOld = sbOld + r2_TrxId
	sbOld = sbOld + pa_MP
	sbOld = sbOld + rc_Amt

	sNewString = ""
	sNewString = HmacMd5(sbOld,merchantKey)

	If(hmac=sNewString) Then
		CheckHmac = True
	Else
		CheckHmac = False
	End If
End Function


'	ȡ��֧�����������еĲ���
Function getCallBackValue(r0_Cmd,r1_Code,rb_Order,r2_TrxId,rq_CardNo,rq_ReturnMsg,pa_MP,rc_Amt,hmac)

	r0_Cmd		=	Request.QueryString("r0_Cmd")
	r1_Code		=	Request.QueryString("r1_Code")
	rb_Order	=	Request.QueryString("rb_Order")
	r2_TrxId	=	Request.QueryString("r2_TrxId")
	rq_CardNo	=	Request.QueryString("rq_CardNo")
	pa_MP		=	Request.QueryString("pa_MP")
	rq_ReturnMsg	=	Request.QueryString("rq_ReturnMsg")
	rc_Amt		=	Request.QueryString("rc_Amt")
	hmac		=	Request.QueryString("hmac")
End Function


'callback֧�����������أ���������Ե�ͨѶ
'д��log��־�������������Խӿ�
Sub createLog(ByRef returnMsg)
    filename = "./" & returnMsg & ".log"
    content = now()		&	","							&	request.ServerVariables("REMOTE_ADDR")
    content = content &	","							& returnMsg
    content = content &	",֧�����:"		& r1_Code
    content = content &	",�̻�������:"	& rb_Order
    content = content &	",֧�����:"		& rc_Amt
    content = content &	",�����п���:"	& rq_CardNo
    content = content &	",�̻���չ��Ϣ:"& pa_MP
    content = content &	",ǩ������:"		& hmac
    
    Set FSO = Server.CreateObject("Scripting.FileSystemObject")   
    Set TS = FSO.OpenTextFile(Server.MapPath(filename),8,true) 
    TS.write content   
    TS.Writeline ""
    TS.Writeline ""
    Set TS = Nothing   
    Set FSO = Nothing   
End Sub
%>