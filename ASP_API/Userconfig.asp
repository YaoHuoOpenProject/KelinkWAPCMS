<!--#include file="cookies.asp"--><!--#include file="md5.asp"--><%

dim nickname,password,lockuser,money,SidTimeOut,mybankmoney,mybanktime,sessiontimeout,expR,RMB

 if userid="" or userid="0" then   	
   	 	response.redirect http_start&"waplogin.aspx?siteid="&siteid
   	  response.end
 else	  
		  
		  set siters=conn.execute("select username,nickname,password,managerlvl,money,moneyname,logintimes,lockuser,sessiontimeout,SidTimeOut,mybankmoney,mybanktime,DATEDIFF(dd, mybanktime, GETDATE())  as dtimes,expR,RMB from [user] where  userid="&userid &" and siteid="&siteid)	
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
         RMB=siters("RMB")
         if isNull(dtimes) then dtimes=0 end if
      end if
      siters.close()
	    set siters=nothing   
  
   
	    if Cint(lockuser)=1 then 
	    	 ShowTipInfo("你被锁定了，请联系站长解锁！") 	
	    end if
	    
	    if isNull(SidTimeOut) or SidTimeOut<>sessionid then	    	 
	    	 ShowTipInfo("身份过期了，请点击此<a href="""&http_start&"waplogin.aspx?siteid="&siteid&""">重新登录</a>") 	
	    end if


 end if

%>