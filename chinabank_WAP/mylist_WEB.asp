<%@language=vbscript codepage=936 %>
<!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="../ASP_API/userconfigGB.asp"-->
<%

dim startime
startime=timer()
dim classid
classid=request("classid")
'''''''''''''''''''
select case request("action")
case "del"
	call del()
end select
	


'''''''''''''''''''''''
dim strFileName ,key
MaxPerPage=50
dim totalPut,CurrentPage,TotalPages,valid
dim rs, sql


key=request("key")
key=replace(key,"'","''")
result=request("result")
banktype=request("banktype")
search_userid=request("search_userid")

strFileName="mylist_WEB.asp?key="&key&"&search_userid="&search_userid&"&result="&result&"&sid="&sid&"&banktype="&banktype

if request("page")<>"" then
    currentPage=Clng(request("page"))
else
	currentPage=1
end if

	if currentPage = 3  then
   ' conn.execute("DELETE FROM chinabank_wap_order WHERE siteid="&siteid&" and  (DATEDIFF(hh, addtime, GETDATE()) > 720)")
	end if
'----------------设置每页数--------
dim Re_myPage,myPage
Re_myPage=request.form("myPage")
if Re_myPage<>"" and isNumeric(Re_myPage) then
	 Re_myPage=left(Re_myPage,5)
	 if CLng(Re_myPage) > 0 then
	 session("myPage")= Re_myPage
	 end if
end if

myPage=session("myPage")
if myPage<>""   then	 
	 MaxPerPage= Clng(myPage)	 
end if
'----------------------------------
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
function gosubmit(){
document.all("panel").style.visibility="visible";
document.all("panel").style.cursor="wait";
messageForm.submit();
}
function checknum(){
	
	var numReg = /^(\+|-)?(0|[0-9]\d*)(\.\d*[0-9])?$/;
	var temp=messageForm.search_userid.value;
	if(!numReg.test(temp)){
		
		alert("只能输入数字!");
		messageForm.search_userid.value="";
	}
	
	
}
</SCRIPT>
<title>充值记录</title>
</head>
<body>	
	<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px;solid;">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">正在处理请求，请耐心等待......
	</td>
  </tr>
</table>
</div>
<form method="post" name="messageForm" action="mylist_WEB.asp" >
	<input type=hidden name="action" >
	<input type=hidden name="classid" value=<%=classid%>>
	<input type=hidden name="sid" value="<%=sid%>">
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="1%"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><div align="center"><img src="/NetImages/i08.gif" width="16" height="16"></div></td>
                  <td width="98%" height="24" valign="middle">&nbsp;网站管理 &gt;&gt; 虚拟货币管理 &gt;&gt; 充值记录
                               

                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="384%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" background="images/dw.gif" class="TABLE6">
              <tr>
              <td height="24"><table width="100%"  border="0">
               <tr>
                      <td >  &nbsp; 
                      	接口：<select name="bankType" size="1">
<option value="" >所有</option>
<option value="0" <%if bankType="0" then response.write "selected" end if%>>0_易宝支付</option>
<option value="1" <%if bankType="1" then response.write "selected" end if%>>1_WAP支付宝/手机网银</option>
<!--<option value="2" <%if bankType="2" then response.write "selected" end if%>>2_手机网银</option>-->
<option value="3" <%if bankType="3" then response.write "selected" end if%>>3_手工入款</option>
<option value="-3" <%if bankType="-3" then response.write "selected" end if%>>-3_手工扣款</option>
<option value="4" <%if bankType="4" then response.write "selected" end if%>>4_商品支付</option>
<option value="-1" <%if bankType="-1" then response.write "selected" end if%>>-1_购买虚拟币</option>
<option value="-2" <%if bankType="-2" then response.write "selected" end if%>>-2_购买身份级别</option>
<option value="5" <%if bankType="-2" then response.write "selected" end if%>>5_RMB购买论坛贴收入</option>
<option value="-5" <%if bankType="-2" then response.write "selected" end if%>>-5_RMB购买论坛贴消费</option>
</select>
                        条件：<select name="result" size="1">
<option value="" >所有记录</option>
<option value="1" <%if result="1" then response.write "selected" end if%>>支付成功</option>
<option value="0" <%if result="0" then response.write "selected" end if%>>支付失败</option>
</select>
                       
                        会员ID:<input type=text class="input" name="search_userid" value="<%=search_userid%>" onkeyup="checknum();">
                       
                      
                        订单:<input type=text class="input" name="key" value="<%=key%>"> &nbsp;<input type="button" name="g" value=" 查询 " onClick="javascript:gosubmit();" class="bt"/>
             
<%
sql=" and siteid="&siteid
if search_userid<>"" then
   sql=sql& " and userid="&search_userid
end if 


if key<>"" then
 	sql= sql & " and (orderid='"&key&"') " 
end if
if result<>"" then'
	if result="1" then
	   sql= sql & " and code='1' "
  elseif result="0" then
  	 sql= sql & " and code='0' "
  end if
	
end if
if banktype<>"" then	
	sql= sql & " and banktype="&banktype
end if

set ts=conn.execute("select sum(amount) as m from [chinabank_wap_order] where 1=1 "&sql)
if not ts.eof then
response.write "<font color=red><b>金额￥:"&ts(0)&".00</b></font>    "
end if
ts.close
set ts=nothing

dim totalsql,totalrs,totalall,condition
condition=sql '(将上面的查询条件付给condition)

sql="select top "&MaxPerPage&" * from  [chinabank_wap_order]  where id not in (select top "&(currentPage-1)*MaxPerPage&" id from [chinabank_wap_order] a where 1=1 "&condition&"  order by id DESC) "&condition&" order by id DESC"
totalrs="select count(id) as n from  [chinabank_wap_order] where 1=1 "&condition

set totalrs=conn.execute(totalrs)
if not totalrs.eof then
	totalall=CLng(totalrs("n"))
end if
totalrs.close
set totalrs=nothing
set rs=conn.execute(sql)
  	if rs.eof and rs.bof then

		response.write "目前共有 0 个记录"
	else
    	totalPut=totalall
		if currentpage<1 then
       		currentpage=1
    	end if
    	if (currentpage-1)*MaxPerPage>totalput then
	   		if (totalPut mod MaxPerPage)=0 then
	     		currentpage= totalPut \ MaxPerPage
		  	else
		      	currentpage= totalPut \ MaxPerPage + 1
	   		end if

    	end if
	    if currentPage=1 then        
        	showContent
        	  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> 选择/不选所有"
        	showpage strFileName,totalput,MaxPerPage,true,true,"个记录"
   	 	else
   	     	if (currentPage-1)*MaxPerPage<totalPut then
         	   	'rs.move  (currentPage-1)*MaxPerPage
         		'dim bookmark
           		'bookmark=rs.bookmark        		
            	showContent
            	  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> 选择/不选所有"
            	showpage strFileName,totalput,MaxPerPage,true,true,"个记录"
        	else
	        	currentPage=1        
           		showContent
           		  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> 选择/不选所有"
           		showpage strFileName,totalput,MaxPerPage,true,true,"个记录"
	    	end if
		end if
	end if

sub showContent
   	dim i
    i=0
%>
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  
 <tr align="center" >
                  <td width="30" height="25" align="center" class="TD_title2"><strong>选择</strong></td>
                  <td width="80" height="25" align="center" class="TD_title2"><strong>会员ID</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>订单</strong></td>
                  <td width="100" height="25" align="center" class="TD_title2"><strong>价钱(元)</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>卡号/交易号</strong></td>
                  <td width="80" height="25" align="center" class="TD_title2"><strong>卡密码</strong></td> 
                  <td width="120" height="25" align="center" class="TD_title2"><strong>卡类型</strong></td>                  
                  <td width="60" height="25" align="center" class="TD_title2"><strong>结果</strong></td>                   
                  <td width="120" height="25" align="center" class="TD_title3"><strong>返回信息</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>支付时间</strong></td>
                  

</tr>
  
                <%do while not rs.EOF%>
<%if i mod 2=0 then%>              	
                	<tr align="center" bgcolor="#e0e5f5"     onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
<%else%>
                <tr align="center"  onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
<%end if%>	
                  <td class="TD1">&nbsp;<input type="checkbox" name="checkbox" value="<%=rs("id")%>"></td>
                  <td class="TD2">&nbsp;<%=rs("userid")%></td>
                  <td class="TD2">&nbsp;<%=rs("orderid")%></td>
                  <td class="TD2">&nbsp;<%=rs("amount")%>.00</td>
                  <td class="TD2">&nbsp;<%=rs("cardno")%></td>       
                  <td class="TD2">&nbsp;<%=rs("cardpwd")%></td>
                  <td class="TD2">&nbsp;<%=rs("frpid")%> </td>                   
                  <td class="TD2">&nbsp;<%if "1"=rs("code") then%><img src="/NetImages/yes.gif" ><%else%><img src="/NetImages/nono.gif" ><%end if%> </td>           
                  <td class="TD3">&nbsp;<%=rs("codeinfo")%> </td>
                  <td class="TD2">&nbsp;<%=rs("addtime")%> </td>
                  
                </tr>
                
                
                
                
                <%
	i=i+1
	if i>=MaxPerPage then exit do
	rs.movenext
loop
%>                
                
               
              
</table>
      <%
end sub 
%>
<br/>
<br/>

			  </td>
            </tr>
            <tr>
                    <td></td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>
</form>

<script LANGUAGE="JavaScript">

function doCheckAll() {
			for (var i=0;i<document.form.length ;i++) {
				var e = document.form[i];
				if (e.name.indexOf('objID')!=-1)
				e.checked = document.form.checkbox.checked;
			}
		}

function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked;
   }
  }
function openwin(a,b) {
window.open ("viewUser.asp?id="+a+"&classid="+b, "viewsystemwindow", "height=520, width=620, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}


</script>
<%
'response.write sql
dim endtime
endtime=timer()
%>
页面执行时间：<%=FormatNumber((endtime-startime)*1000,3)%>毫秒
</body>
<%

rs.Close
set rs=Nothing
call CloseConn()  

%>