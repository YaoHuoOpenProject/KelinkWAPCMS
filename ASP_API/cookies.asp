<%
'siteid|fid|userid|username|password
dim siteid,fid,userid,username,sessionid
dim sid,jid1,jid2,http_start,sid2,sid1
sid=request("sid")
siteid=request("siteid")
jid1=""
jid2=""

http_start="http://"&Request.ServerVariables("HTTP_HOST")&"/"

if sid="" then
	sid=session("sid")
else
	session("sid")=sid
end if
if instr(sid,"-")>0 then
	
	arrytemp=split(sid,"-")	
	sid1=arrytemp(0)
	for i=1 to ubound(arrytemp)
	    sid2=sid2 & "-"&arrytemp(i)
  next
	
end if

if sid1<>"" then 		 
	 arry=split(decode_KL(sid1),"_")	 	  
	 siteid=arry(0)	 	 
	 fid=arry(1)
	 userid=arry(2)	 
	 username=arry(3)
	 sessionid=arry(4)		 
	 if not isnumeric(userid) then userid="0" end if  
end if

jid1="?sid="&sid
jid2="&amp;sid="&sid	

'------------
id=request("id")
classid=request("classid")
if not isnumeric(siteid) then siteid="0" end if  
if not isnumeric(id) then id="0" end if  
if not isnumeric(classid) then classid="0" end if  

'------------

'ÃÜÂë½âÃÜ³ÌÐò
function decode_KL(sid)
  dim lens,key,str,mykey,TempNum,x
  x=sid
  lens=len(x)
  mykey=Cint(mid(x,lens,1))
  x=mid(x,1,lens-1)  
  if mykey=0 or mykey=2 then
  lens=len(x)
  end if  
  if lens mod 2 =0 then
    key=2
  else
    key=3
  end if  
 for i=1 to lens step key
  TempNum=mid(x,i,key)
  if i=1 then
    if mykey=1 then
       TempNum=right(TempNum,2)
    elseif mykey=2 then
       TempNum=right(TempNum,1)
    end if
  end if
  str= cstr(TempNum)  & str 
 next
 
 decode_KL=str 
end function
%>