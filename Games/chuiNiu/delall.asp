<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="Mon, 1 Jan 1990 00:00:00 GMT"/>
</head>
<card id='main' title='管理员删除牛牛'>  
<p align='left'>
<%
book_classid=request("classid")

if managerlvl<>"01" and managerlvl<>"00" then%>
你没有权限！
<%
else
id=int(request("id"))
yy=request("yy")
 set rsq=Server.CreateObject("ADODB.Recordset")
  ssql="select * from wap_game_chuiniu where id="&id&" and siteid="&siteid
  rsq.open ssql,conn
  if rsq.eof then
%>
不存在该牛牛!<br/>
<%else
set rss=Server.CreateObject("ADODB.Recordset")
ssql="select userid,nickname from [user] where userid="&rsq("fbz")&" and siteid="&siteid
rss.open ssql,conn
%>
内容:<%=rsq("txt")%><br/>


<%if yy<>"1" then%>
确认删除?<br/>
我的密码:<input type="text"  name="checkpassword" size="5"/><br/>
<a href="<%=http_start%>games/chuiniu/delall.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;yy=1&amp;id=<%=id%>&amp;checkpassword=$(checkpassword)">确认</a>|<anchor>取消<prev/></anchor><br/>
<%else
	
	if managerlvl="00" or managerlvl="01" then
   checkpassword=request("checkpassword")
   if len(password)=16 then
	    checkpassword=MD5(checkpassword)
   end if
   if lcase(checkpassword)<>lcase(password)  then
      response.write "输入我的密码错误，返回重试！"
    
   else
   
      conn.execute("delete from wap_game_chuiniu where id="&id&" and siteid="&siteid)
      conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','你的牛牛被删除了！','你在"& rsq("fbdate") &"提交的牛牛已被管理员(<a href="""& http_start &"bbs/userinfo.aspx?siteid="& siteid &"&amp;classid="&classid&"&amp;sid=[sid]&amp;touserid="& userid &""">ID:"&userid&")</a>删除！',"&rsq("fbz")&",0)")
      response.write "删除成功!"   
   end if
  end if
%>
<br/>
<a href="<%=http_start%>games/chuiniu/aniu.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">全部牛牛</a><br/>
<%end if


end if
end if%>
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>