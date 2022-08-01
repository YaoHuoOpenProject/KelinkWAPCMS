<!--#include file="cookies.asp"--><%
''''''''''''''''''''''''校验用户'''''''''''''''''''''''''''''''
dim nickname,password,lockuser,money,SidTimeOut,mybankmoney,mybanktime,sessiontimeout,expR,managerlvl

 if userid="" then   	
   	 	response.redirect http_start&"admin/login.aspx"
   	  response.end
 else	  
		  
		  set siters=conn.execute("select username,nickname,password,managerlvl,money,moneyname,logintimes,lockuser,sessiontimeout,SidTimeOut,mybankmoney,mybanktime,DATEDIFF(dd, mybanktime, GETDATE())  as dtimes,expR from [user] where  userid="&userid &" and siteid="&siteid)	
      if not siters.eof then    	      	
         getusername=siters("username")
         nickname=siters("nickname")
         password=siters("password") 
         managerlvl=siters("managerlvl")         
         money=siters("money")
         moneyname=siters("moneyname")
         logintimes=siters("logintimes")
         lockuser=siters("lockuser")   
         sessiontimeout=siters("sessiontimeout") ' 会员身份
         SidTimeOut=siters("SidTimeOut")          
         mybankmoney=siters("mybankmoney") 
         mybanktime=siters("mybanktime")    
         dtimes=siters("dtimes") 
         expR=siters("expR")
         if isNull(dtimes) then dtimes=0 end if
      end if
      siters.close()
	    set siters=nothing   
  
  
	   if  managerlvl<>"00" and managerlvl<>"01"  then
	      ShowTipInfo("你没有权限！超级管理员，站长拥有！")	
	      response.end   
	   end if
	    
	    if isNull(SidTimeOut) or SidTimeOut<>sessionid then	    	 
	    	 ShowTipInfo("此页面调用了WAP网站上的SID身份，现sid失效了，请打开你的手机网站wap1.0/2.0，重新登录一下即可！") 
	    	 response.end   	
	    end if
	    
	    
	    


 end if
'''''''''''''''''''''''''''''''''''''''''''
Function GetUrl() 
    On Error Resume Next 
    Dim strTemp 
    If LCase(Request.ServerVariables("HTTPS")) = "off" Then 
         strTemp = "http://"
    Else 
         strTemp = "https://"
    End If 
    strTemp = strTemp & Request.ServerVariables("SERVER_NAME") 
    If Request.ServerVariables("SERVER_PORT") <> 80 Then 
         strTemp = strTemp & ":" & Request.ServerVariables("SERVER_PORT") 
    end if
    strTemp = strTemp & Request.ServerVariables("URL") 
    If Trim(Request.QueryString) <> "" Then 
         strTemp = strTemp & "?" & Trim(Request.QueryString) 
    end if
    GetUrl = strTemp 
End Function
%>