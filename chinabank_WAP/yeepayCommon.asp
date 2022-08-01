<!-- #include file="hmac-md5.asp" -->
<!-- #include file="merchantProperties.asp" -->
<%
'**************************************************
'* @Description 易宝支付非银行卡支付专业版接口范例 
'* @V3.0
'* @Author rui.xin
'**************************************************

	Dim reqURL_SNDApro
	Dim p0_Cmd
	Dim pa0_Mode
	Dim pr_NeedResponse
	Dim sbOld
	Dim sFormString
	
	' 业务类型
	''非银行卡专业版支付请求，固定值 "AnnulCard" .	
	p0_Cmd = "AnnulCard"
	
	'	非银行卡支付传递模式
	''为"3"表示加密传输，加密方式为3des；为"1"表示不通过加密.
	pa0_Mode				= "1" 
	
	'	应答机制
	''为"1": 需要应答机制;为"0": 不需要应答机制.
	pr_NeedResponse	= "1"			
	
'	生成签名串.
Function getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	'	进行签名处理，一定按照文档中标明的签名顺序进行
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

'	非银行卡支付专业版模拟交易结果.
Function generationTestCallback(sFormString)
	
	'	非银行卡支付专业版请求测试地址
	reqURL_SNDAproTest = "http://tech.yeepay.com:8080/robot/generationCallback.action"
	
	set objHttp = Server.CreateObject("MSXML2.ServerXMLHTTP")
 
	objHttp.open "POST", reqURL_SNDAproTest, false
	objHttp.setRequestHeader "Content-type", "application/x-www-form-urlencoded"
	objHttp.Send sFormString
   
	If (objHttp.status <> 200 ) Then
		'HTTP 错误处理
		strCallBack = "Status=" & objHttp.status & " 测试地址响应失败!!!"
	Else
		strCallBack = objHttp.responseText
		strCallBack = mid(strCallBack,42)
		strCallBack = "模拟的交易结果通知串:" & strCallBack
		
	End If
	generationTestCallback = strCallBack

End Function

'	非银行卡支付专业版请求测试环境.
Function annulCardTest(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	hmac = getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	
	'	易宝支付自动调试机器人请求地址,测试使用.
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
		'HTTP 错误处理
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
				returnMsg = returnMsg + "提交成功!<BR>"
				returnMsg = returnMsg + "<BR>商户订单号:" + r6_Order 
				returnMsg = returnMsg + "<BR><BR>"
				returnMsg = returnMsg + generationTestCallback(sFormString)
			ElseIf CStr(r1_Code)="2" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>非银行卡密无效!"
		 	ElseIf CStr(r1_Code)="7" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>非银行卡密无效!"
		 	ElseIf CStr(r1_Code)="11" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>商户订单号:" + r6_Order 
				returnMsg = returnMsg + "<BR>商户订单号重复!"
		 	ElseIf CStr(r1_Code)="61" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>您的账号尚未开通!"
		 	Else
				returnMsg = returnMsg + "提交失败!<BR>" + r1_Code
		 	End If
		Else
			returnMsg = returnMsg + "交易信息被篡改!<BR>"
			returnMsg = returnMsg + "<BR>localhost:" + sNewString 
			returnMsg = returnMsg + "<BR>YeePay:" + hmac 
		End If
	End If

	annulCardTest = returnMsg

End Function

'	非银行卡支付专业版请求处理结果.
Function annulCard(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)

	hmac = getReqHmacString(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	
	'	非银行卡支付专业版请求地址
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
		'HTTP 错误处理
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
				returnMsg = returnMsg + "提交成功!<BR>"
				returnMsg = returnMsg + "<BR>商户订单号:" + r6_Order 
			ElseIf CStr(r1_Code)="2" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>非银行卡密无效!"
		 	ElseIf CStr(r1_Code)="7" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>非银行卡密无效!"
		 	ElseIf CStr(r1_Code)="11" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>商户订单号:" + r6_Order 
				returnMsg = returnMsg + "<BR>商户订单号重复!"
		 	ElseIf CStr(r1_Code)="61" Then
				returnMsg = returnMsg + "提交失败!<BR>"
				returnMsg = returnMsg + "<BR>您的账号尚未开通!"
		 	Else
				returnMsg = returnMsg + "提交失败!<BR>r1_Code:"&r1_Code
		 	End If
		Else
			returnMsg = returnMsg + "交易信息被篡改!<BR>"
			returnMsg = returnMsg + "<BR>localhost:" + sNewString 
			returnMsg = returnMsg + "<BR>YeePay:" + hmac 
		End If
	End If

	annulCard = returnMsg

End Function


Function CheckHmac(r0_Cmd,r1_Code,rb_Order,r2_TrxId,pa_MP,rc_Amt,hmac)

	'取得签名数据前的字符串，一定按照文档中标明的签名顺序进行
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


'	取得支付返回数据中的参数
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


'callback支付服务器返回，服务器点对点通讯
'写入log日志，这里用来调试接口
Sub createLog(ByRef returnMsg)
    filename = "./" & returnMsg & ".log"
    content = now()		&	","							&	request.ServerVariables("REMOTE_ADDR")
    content = content &	","							& returnMsg
    content = content &	",支付结果:"		& r1_Code
    content = content &	",商户订单号:"	& rb_Order
    content = content &	",支付金额:"		& rc_Amt
    content = content &	",非银行卡号:"	& rq_CardNo
    content = content &	",商户扩展信息:"& pa_MP
    content = content &	",签名数据:"		& hmac
    
    Set FSO = Server.CreateObject("Scripting.FileSystemObject")   
    Set TS = FSO.OpenTextFile(Server.MapPath(filename),8,true) 
    TS.write content   
    TS.Writeline ""
    TS.Writeline ""
    Set TS = Nothing   
    Set FSO = Nothing   
End Sub
%>