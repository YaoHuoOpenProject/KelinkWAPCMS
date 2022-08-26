【等待应答】<a href="<%=http_start%>games/chuiniu/kniu.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">更多...</a><br/>
<%
 set rsa=Server.CreateObject("ADODB.Recordset")
  ssql="select top 5 * from wap_game_chuiniu where siteid="&siteid&" and tzcg<1 and fbz<>"&userid&" order by id desc"
  rsa.open ssql,conn,1,2
  if rsa.eof then
  response.write "暂无牛牛<br/>"
  else
  j=1
  do while (j<=5 and not rsa.eof)
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
