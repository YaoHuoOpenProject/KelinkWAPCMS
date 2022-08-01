【大牛推荐】<a href="<%=http_start%>games/chuiniu/dniu.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">更多...</a><br/>
<%
 set rsa=Server.CreateObject("ADODB.Recordset")
  ssql="select top 3 * from wap_game_chuiniu where siteid="&siteid&" and zb>=5000 order by id desc"
  rsa.open ssql,conn,1,2
  if rsa.eof then
  response.write "暂无牛牛<br/>"
  else
  j=1
  do while (j<=3 and not rsa.eof)
  response.write "<a href='"&http_start&"games/chuiniu/view.asp?siteid="&siteid&"&amp;classid="&classid&jid2&"&amp;id="&rsa("id")&"'>"&rsa("txt")&"</a>("&rsa("zb")&getMoneyName(siteid)&")<br/>"
  j=j+1
  rsa.movenext
  loop
  end if
  rsa.close
  set rsa=nothing
%>
