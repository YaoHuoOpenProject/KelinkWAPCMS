<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
set rsnn=Server.CreateObject("ADODB.Recordset")
ssql="select chuiniu from [user] where userid="& Clng(userid) &" and siteid="&CLng(siteid)
rsnn.open ssql,conn
b_n=0
b_s=0
b_d=now
if not rsnn.eof and not isnull(rsnn("chuiniu")) and rsnn("chuiniu")<>"" then
bbb=split(rsnn("chuiniu"),",")
b_n=int(bbb(0))
b_s=int(bbb(1))
b_d=bbb(2)
end if
rsnn.close
set rsnn=nothing

Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="Mon, 1 Jan 1990 00:00:00 GMT"/>
</head>
<card id='main' title='我要吹牛'>  
<p align='left'>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
else
   checkpassword=request.form("checkpassword")
   if len(password)=16 then
	    checkpassword=MD5(checkpassword)
   end if
   if lcase(checkpassword)<>lcase(password)  then
      response.write "输入我的密码错误，返回重试！</p></card></wml>"
      response.end
   end if
	
	
txt=request("txt")
d1=request("d1")
d2=request("d2")
zs=request("zs")
if zs<>"1" and zs<>"2" then
response.end
end if
zb=request("zb")
zb=replace(zb,"-","")
if not isnumeric(zb) then zb="0" end if

allcount=0
set rs=conn.execute("select count(id) from wap_game_chuiniu where siteid="&siteid&" and fbz="&userid&" and DATEDIFF(dd, fbdate, GETDATE()) <1")
if not rs.eof then
	 allcount=rs(0)
end if
rs.close
set rs=nothing
'if datediff("d",b_d,now)=0 and b_s>=1 then
if Cint(allcount) >10 then
response.write "你今天已经吹了十个牛了,要想继续吹牛,就快去抢别人的牛牛吧!</p></card></wml>"
response.end
end if

if trim(txt)="" then
response.write "吹牛内空不能为空!请返回重写!</p></card></wml>"
response.end
end if
if len(trim(txt))<5 or len(trim(txt))>100 then
response.write "吹牛内空必须大于5小于100!请返回重写!</p></card></wml>"
response.end
end if
if trim(d1)="" then
response.write "答案一不能为空!请返回重写!</p></card></wml>"
response.end
end if
if len(trim(d1))>50 then
response.write "答案一内空必须小于50!请返回重写!</p></card></wml>"
response.end
end if
if trim(d2)="" then
response.write "答案二不能为空!请返回重写!</p></card></wml>"
response.end
end if
if len(trim(d2))>50 then
response.write "答案二内空必须小于50!请返回重写!</p></card></wml>"
response.end
end if
if trim(zb)="" then
response.write "钻币不能为空!请返回重写!</p></card></wml>"
response.end
end if
if int(zb)<100 then
response.write "吹牛"&getMoneyName(siteid)&"不能小于100!请返回重写!</p></card></wml>"
response.end
end if
if int(zb)>10000 then
response.write "吹牛"&getMoneyName(siteid)&"不能大于10000!请返回重写!</p></card></wml>"
response.end
end if
if int(zb)>clng(money) then
response.write "您的"&getMoneyName(siteid)&"不足您本次吹牛!请返回重写!</p></card></wml>"
response.end
end if
if txt=session("cntxt") then
response.write "不能在短时间内发表相同的内容!请返回重写!</p></card></wml>"
response.end
end if
txt=tohtm(txt)
d1=tohtm(d1)
d2=tohtm(d2)
zs=tohtm(zs)
zb=tohtm(zb)
'set objgbrs=Server.CreateObject("ADODB.Recordset")
'  ssql="select txt,d1,d2,zs,zb,fbz,fbdate,siteid from wap_game_chuiniu"
'  objgbrs.open ssql,conn,1,3
'  objgbrs.addnew
 ' objgbrs("txt")=(txt)
  'objgbrs("d1")=(d1)
  'objgbrs("d2")=(d2)
  'objgbrs("zs")=(zs)
  'objgbrs("zb")=(zb)
  'objgbrs("fbz")=userid
  'objgbrs("fbdate")=now()
  'objgbrs("siteid")=siteid
  'objgbrs.update
  'objgbrs.close
  'set objgbrs=nothing
  
  conn.execute("insert into wap_game_chuiniu(txt,d1,d2,zs,zb,fbz,fbdate,siteid)values('"&txt&"','"&d1&"','"&d2&"','"&zs&"','"&zb&"','"&userid&"','"&now()&"','"&siteid&"')")
  bb=""
  if b_n<3 then b_n=b_n+1
  if b_n>=3 then b_s=b_s+1
  b_d=now
  bb=b_n&","&b_s&","&b_d
  conn.execute("update [user] set money=money-"&int(zb)&",chuiniu='"&bb&"' where userid="& Clng(userid) &" and siteid="&CLng(siteid))
  conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'发表吹牛，扣除"&zb&"个','-"&zb&"')")    
				
  session.timeout=30
  session("cntxt")=txt
%>
吹牛成功!<br/>
<%end if%>
-----------<br/>
<!--#INCLUDE file="w.asp"-->
-----------<br/>
<a href="<%=http_start%>games/chuiniu/my.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">我的牛牛</a><br/>
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>