<!--#include file="../ASP_API/connGB.asp"--><!-- #include file="yeepayCommon.asp" -->
<%
'**************************************************
'* @Description �ױ�֧�������п�֧��רҵ��ӿڷ��� 
'* @V3.0
'* @Author rui.xin
'**************************************************
	
	Dim sValue
	Dim returns

	'ȡ��֧�����������еĲ���
	sValue = getCallBackValue(r0_Cmd,r1_Code,rb_Order,r2_TrxId,rq_CardNo,rq_ReturnMsg,pa_MP,rc_Amt,hmac)
	
	'	������־
	'Call createLog("SNDApro")
	
	' �жϷ���ǩ���Ƿ���ȷ��True/False��
	returns = CheckHmac(r0_Cmd,r1_Code,rb_Order,r2_TrxId,pa_MP,rc_Amt,hmac)
	' ���ϴ���ͱ�������Ҫ�޸�.
	
	'��ѯ������
	 
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
			Response.Write("֧���ɹ�!")
			Response.Write("<BR>�̻�������:"& rb_Order )
			Response.Write("<BR>֧�����:"& rc_Amt )
			'tomoney=Clng(rc_Amt) * Clng(tomoney)
			if Cstr(Code)<>"1" then		
				'��Ҫ�ж�״̬
						
           set crs=conn.execute("select id from  [chinabank_wap_order] where  code='0' and orderid='"&rb_Order&"'")
           if not crs.eof then  
           	crs.close
           	set crs=nothing
           	       	
			      conn.execute("update [chinabank_wap_order] set code='1',codeinfo='֧���ɹ�' where orderid='"&rb_Order&"'")
			      conn.execute("update [user] set RMB=RMB+"& rc_Amt  &" where userid="&userid )	
			      'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'WAP����֧��:"&rc_Amt&"Ԫ����ֵ��վ��:"&tomoney&"��','"&  tomoney &"')")  			
		      end if
		 
		  end if
			
			
		Else			
			Response.Write("֧��ʧ��!")
			Response.Write("<BR>�̻�������:"& rb_Order )
			codeinfo=getState(rq_ReturnMsg)
			if Code<>"1" then				
			   conn.execute("update [chinabank_wap_order] set codeinfo='"&codeinfo&"' where orderid='"&rb_Order&"'")			   			
		  end if
			
		End If
	Else
		Response.Write("<br>������Ϣ���۸�!")

	End If
closeconn()

function getState(strs)
 dim temp
 if strs="" then
 	  temp="֧��ʧ�ܣ�"
 elseif strs="1002" then
 	  temp="�������Ϊ0"
 elseif strs="1003" then
 	  temp="���Ż���Ƿ�"
 elseif strs="1004" then
 	  temp="���ܴ��������Ч"
 elseif strs="1005" then
 	  temp="���ܴ���"
 elseif strs="1006" then
 	  temp="������Ч"
 elseif strs="2001" then
 	  temp="�ƶ�ϵͳ����������"
 elseif strs="2002" then
 	  temp="�̻���������"
 else
 	  temp="δ֪ԭ��"
 	end if
 	getState=temp
end function
%>