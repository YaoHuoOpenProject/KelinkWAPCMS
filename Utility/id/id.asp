<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"
siteid=request("siteid")
%>
<!--#include file="conn.asp"--><!--#include file="../../ASP_API/cookies.asp"-->
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card title="身份证升位查询">
<p align="left">输入15位或18身份证号:
<br/><input type="text" format="*N"  name="cy"  maxlength="18"/>
<br/>
 <anchor>查 询
 <go href="<%=http_start%>utility/id/id.asp<%=jid1%>" method="post">
  <postfield name="cy" value="$(cy)"/>  
<postfield name="siteid" value="<%=siteid%>"/> 
 </go>
 </anchor>
<br/>
<%
if request("cy")<>"" then
dim cy,errstr
errstr=0
cy=trim(request("cy"))
'response.write "是否日期："&IsDate("19"&mid(cy,7,2)&"-"&mid(cy,9,2)&"-"&mid(cy,11,2))
'以下用正则表达式来判断是否是个合法的身份证号码
if len(cy)=15 then
  if IsNumeric(cy) then
  if not IsDate("19"&mid(cy,7,2)&"-"&mid(cy,9,2)&"-"&mid(cy,11,2)) then
  errstr=3
  end if
  else
  errstr=1
  end if
elseif len(cy)=18 then
  dim regEx,Match
  set regEx=New RegExp
  regEx.Pattern="^\d{17}(\d|x|X)$"
  regEx.IgnoreCase=True
  Set Match=regEx.Execute(cy)
  if not Match.count=1 then
  	errstr=4
  elseif not IsDate(mid(cy,7,4)&"-"&mid(cy,11,2)&"-"&mid(cy,13,2)) then
  	errstr=5
  else
  	dim strJiaoyan,intQuan,tempnum
  	strJiaoyan=array("1","0","X","9","8","7","6","5","4","3","2")
  	intQuan=array(7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2,1)
  	tempnum=0
  	for i=0 to 16
  	tempnum=tempnum+mid(cy,i+1,1)*intQuan(i)
    next
    tempnum=tempnum Mod 11
    if not Ucase(mid(cy,18,1))=strJiaoyan(tempnum) then
    errstr=6
    end if
  end if
else
	errstr=2
end if
'校验完毕
if errstr=0 then
	dim id
	if len(cy)=18 then
		id=cy
	else
		id=mid(cy,1,6)&"19"&mid(cy,7,9)
    dim strJiaoyan1,intQuan1,tempnum1
  	strJiaoyan1=array("1","0","X","9","8","7","6","5","4","3","2")
  	intQuan1=array(7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2,1)
  	tempnum1=0
  	for i=0 to 16
  	tempnum1=tempnum1+mid(id,i+1,1)*intQuan1(i)
    next
    tempnum1=tempnum1 Mod 11
    id=id&strJiaoyan1(tempnum1)
    'response.write id
  end if
  response.write "<br/>查询："&cy
  dim cy1,cy2,cy3,address,sqlstr,rs,rs2,rs3,ishave
  ishave=0
  cy1=mid(cy,1,6)
  cy2=mid(cy,1,4)&"00"
  cy3=mid(cy,1,2)&"0000"
  set rs=server.createobject("adodb.recordset")
  if ishave=0 then
  sqlstr="select DQ from idcard where BM="&cy1
  rs.open sqlstr,conn,1,1
  while not rs.eof
  	response.write "<br/>户籍:"&rs("DQ")
  	ishave=1
    rs.movenext
  wend
  end if
  rs.close()
  if ishave=0 then
    sqlstr="select DQ from idcard where BM="&cy2
    rs.open sqlstr,conn,1,1
    while not rs.eof
  	response.write "<br/>户籍:"&rs("DQ")
  	ishave=1
    rs.movenext
    wend
  end if
  if ishave=0 then
  	sqlstr="select DQ from idcard where BM="&cy3
  	rs.open sqlstr,conn,1,1
  	while not rs.eof
  	response.write "<br/>户籍:"&rs("DQ")
  	ishave=1
    rs.movenext
    wend
  end if
  if ishave=0 then
  	response.write "<br/>户籍:未知"
  end if
  response.write "<br/>新证："&id
  response.write "<br/>生日："&mid(id,7,4)&"年"&mid(id,11,2)&"月"&mid(id,13,2)&"日"
  '判定性别
  dim sexflag,sex
  sex=0
  sexflag=mid(id,17,1)
  sex=sexflag Mod 2
  if sex=1 then
  	response.write "<br/>性别：男"
  else
  	response.write "<br/>性别：女"
  end if
  
else
	Select case errstr
		Case 1
		response.write "<br/><b>输入的15位身份证号码必须是数字!</b>"
	  Case 2
	  response.write "<br/><b>输入的位数不对！请重新输入</b>"
	  Case 3
	  response.write "<br/><b>输入的15位身份证号码中的所含日期不正确！</b>"
	  Case 4
	  response.write "<br/><b>输入的18位号码不符合18位身份证号码的格式！</b>"
	  Case 5
	  response.write "<br/><b>输入的18位身份证号码中所含日期不正确！</b>"
	  Case 6
	  response.write "<br/><b>输入的18位身份证号码的校验位错误!</b>"
  End Select
end if
end if
%>

<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<br/>
</p>
</card>
</wml>