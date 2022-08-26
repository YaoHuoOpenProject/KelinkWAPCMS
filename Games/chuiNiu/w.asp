<%
jnn=0
nng=0
 set rsdd=Server.CreateObject("ADODB.Recordset")
  ssql="select sum(zb) as zbs,count(id) as ii from wap_game_chuiniu where datediff(d,fbdate,getdate())<1 and datediff(d,fbdate,getdate())>-1 and siteid="&siteid
  rsdd.open ssql,conn,3
  if not rsdd.eof then
  jnn=rsdd("zbs")
  nng=rsdd("ii")
  end if
  if isnull(jnn) then jnn=0
  rsdd.close
  set rsdd=nothing
%>
今日吹牛总数:<%=nng%>个<br/>
今日吹牛总量:<%=jnn%><%=getMoneyName(siteid)%><br/>