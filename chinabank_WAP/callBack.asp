<!--#include file="../ASP_API/connGB.asp"--><!-- #include file="yeepayCommon.asp" -->
<%
'**************************************************
'* @Description 易宝支付非银行卡支付专业版接口范例 
'* @V3.0
'* @Author rui.xin
'**************************************************
	
	Dim sValue
	Dim returns

	'取得支付返回数据中的参数
	sValue = getCallBackValue(r0_Cmd,r1_Code,rb_Order,r2_TrxId,rq_CardNo,rq_ReturnMsg,pa_MP,rc_Amt,hmac)
	
	'	创建日志
	'Call createLog("SNDApro")
	
	' 判断返回签名是否正确（True/False）
	returns = CheckHmac(r0_Cmd,r1_Code,rb_Order,r2_TrxId,pa_MP,rc_Amt,hmac)
	' 以上代码和变量不需要修改.
	
	'查询并处理
	 
   Code="0"   
   set rs=conn.execute("select siteid,userid, Code from [chinabank_wap_order] where orderid='"&rb_Order&"'")
   if not rs.eof then
   	 siteid=rs("siteid")
   	 userid=rs("userid")   	 
   	 Code=rs("code")
   end if
   rs.close
   set rs=nothing
	
	

	If returns Then
		If (CStr(r1_Code) = "1") then
			Response.Write("支付成功!")
			Response.Write("<BR>商户订单号:"& rb_Order )
			Response.Write("<BR>支付金额:"& rc_Amt )
			'tomoney=Clng(rc_Amt) * Clng(tomoney)
			if Cstr(Code)<>"1" then		
				'先要判断状态
						
           set crs=conn.execute("select id from  [chinabank_wap_order] where  code='0' and orderid='"&rb_Order&"'")
           if not crs.eof then  
           	crs.close
           	set crs=nothing
           	       	
			      conn.execute("update [chinabank_wap_order] set code='1',codeinfo='支付成功' where orderid='"&rb_Order&"'")
			      conn.execute("update [user] set RMB=RMB+"& rc_Amt  &" where userid="&userid )	
			      'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'WAP在线支付:"&rc_Amt&"元，充值本站币:"&tomoney&"个','"&  tomoney &"')")  			
		      end if
		 
		  end if
			
			
		Else			
			Response.Write("支付失败!")
			Response.Write("<BR>商户订单号:"& rb_Order )
			codeinfo=getState(rq_ReturnMsg)
			if Code<>"1" then				
			   conn.execute("update [chinabank_wap_order] set codeinfo='"&codeinfo&"' where orderid='"&rb_Order&"'")			   			
		  end if
			
		End If
	Else
		Response.Write("<br>交易信息被篡改!")

	End If
closeconn()

function getState(strs)
 dim temp
 if strs="" then
 	  temp="支付失败！"
 elseif strs="1002" then
 	  temp="卡内余额为0"
 elseif strs="1003" then
 	  temp="卡号或金额非法"
 elseif strs="1004" then
 	  temp="卡密错误或卡密无效"
 elseif strs="1005" then
 	  temp="卡密错误"
 elseif strs="1006" then
 	  temp="卡密无效"
 elseif strs="2001" then
 	  temp="移动系统或网络问题"
 elseif strs="2002" then
 	  temp="商户风险问题"
 else
 	  temp="未知原因"
 	end if
 	getState=temp
end function
%>