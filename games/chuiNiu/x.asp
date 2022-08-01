【最新吹牛】<a href="<%=http_start%>games/chuiniu/show.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;t=<%=time%>">刷新</a><br/>
<%
 set rsa=Server.CreateObject("ADODB.Recordset")
  ssql="select top 3 fbdate,id,txt,zb from wap_game_chuiniu where siteid="&siteid&" order by fbdate desc"
  rsa.open ssql,conn,1,2
  if rsa.eof then
  response.write "暂无牛牛<br/>"
  else
  j=1
  do while (j<=3 and not rsa.eof)
  txt=left(rsa("txt"),15)
  if len(rsa("txt"))>15 then txt=txt&"..."
  response.write "·<a href='"&http_start&"games/chuiniu/view.asp?siteid="&siteid&"&amp;classid="&classid&jid2&"&amp;id="&rsa("id")&"'>"&txt&"</a>("&rsa("zb")&getMoneyName(siteid)&")<br/>"
  j=j+1
  rsa.movenext
  loop
  end if
  rsa.close
  set rsa=nothing
  %>