<%@language=vbscript codepage=936 %>
<!--#include file="../../ASP_API/connGB.asp"--><!--#include file="../../ASP_API/userconfigGB.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
dim startime
startime=timer()
dim classid
classid=request("classid")
key=request("key")


if not isnumeric(classid) then classid="0" end if

'''''''''''''''''''
select case request("action")
case "del"
	call del()
	case "daoru3"
	call daoru3()
case "removeall"
	call removeall()
end select

sub del()
set id1=request("checkbox")
for i=1 to id1.count
				id=id1(i)
if not isnumeric(id) or isnull(id) or id="" or classid="" then
	response.write("<div align=center><br><br><font color=""red"">�Ƿ��Ĳ���!</font><br><br></div>")
response.end
	call default()
	exit sub
end if
		conn.execute("delete from wap_game_chuiniu where siteid="&siteid&" and id="&id)
next
response.write "<script>alert('ɾ�� "&id1.count&" ����¼�ɹ�!');</script>"

end sub




'''''''''''''''''''''''
dim strFileName 
MaxPerPage=20
dim totalPut,CurrentPage,TotalPages
dim rs, sql


strFileName="userlist.asp?classid="&classid&"&key="&key
if siteid="" or classid="" then
	response.write("<div align=center><br><br><font color=""red"">�Ƿ��Ĳ������޷����д���Ŀ�ĺ�̨����</font><br><br></div>")
  response.end
end if
if request("page")<>"" then
    currentPage=Clng(request("page"))
else
	  currentPage=1
end if

'----------------����ÿҳ��--------
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

sql=" and  siteid="&siteid



if key<>"" then
	sql=sql& " and  txt like '%"&tohtm(key)&"%'"
end if


dim totalsql,totalrs,totalall,condition
condition=sql '(������Ĳ�ѯ��������condition)

sql="select top "&MaxPerPage&" id,txt,d1,d2,zs,zb,fbz,tzz,fbdate,tzcg from wap_game_chuiniu  where id not in (select top "&(currentPage-1)*MaxPerPage&" id from wap_game_chuiniu where 1=1 "&condition&"  order by id DESC) "&condition&" order by id DESC"
totalrs="select count(id) as n from wap_game_chuiniu where 1=1 "&condition

set totalrs=conn.execute(totalrs)
if not totalrs.eof then
	totalall=CLng(totalrs("n"))
end if
totalrs.close
set totalrs=nothing
set rs=conn.execute(sql)
%>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
function gosubmit(){
document.all("panel").style.visibility="visible";
document.all("panel").style.cursor="wait";
messageForm.submit();
}
</SCRIPT>
<title>��ţ��Դ</title>
</head>
<body>	
	<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px;solid;">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??��?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">���ڴ������������ĵȴ�......
	</td>
  </tr>
</table>
</div>
<form method="post" name="messageForm" action="userlist.asp" >
	<input type=hidden name="action" >
	
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
                  <td width="98%" height="24" valign="middle">&nbsp;��ţ����ģ�� &gt;&gt;  
                  	<font color=red><b><%
                  	if classid<> "0" then
                     Set rsUser2=conn.execute("select classname from [class] where classid=" & Clng(classid))	                   
	                   if not rsUser2.eof then
		                   response.write  rsUser2("classname") 
                     else
                     	 response.write "������ĿID"
                     end if
                      rsUser2.close
	                    set rsUser2=nothing
	                  else
	                  	response.write "���д�ţ����Ŀ"
	                  end if
                     %></b></font>
���⣺<input type="text" name="key" value="<%=key%>" size="8">&nbsp;&nbsp;<input type=button name=Submit onclick="gosubmit()"  class="bt" value="��ѯ" style="cursor:hand">         
<input type="hidden" name="classid" value="<%=classid%>" >
                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="384%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif" class="TABLE6">
              <tr>
              <td height="24"><table width="100%"  border="0">
               <tr>
                      <td > <img src="/NetImages/articleadmin.gif" width="77" height="18" align="absbottom">
                      	&nbsp; 
                       <input type=button name=Submit onclick="delType()"  class="bt" value="ɾ��" style="cursor:hand">
                       
                       
                        <%
  	if rs.eof and rs.bof then

		response.write "Ŀǰ���� 0 ����¼"
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
        	  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> ѡ��/��ѡ����"
        	showpage strFileName,totalput,MaxPerPage,true,true,"����¼"
   	 	else
   	     	if (currentPage-1)*MaxPerPage<totalPut then
         	   	'rs.move  (currentPage-1)*MaxPerPage
         		'dim bookmark
           		'bookmark=rs.bookmark        		
            	showContent
            	  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> ѡ��/��ѡ����"
            	showpage strFileName,totalput,MaxPerPage,true,true,"����¼"
        	else
	        	currentPage=1        
           		showContent
           		  	response.write "&nbsp;&nbsp;&nbsp;<input type=""checkbox"" name=""chkall"" value=""ON"" onclick=""CheckAll(this.form)""> ѡ��/��ѡ����"
           		showpage strFileName,totalput,MaxPerPage,true,true,"����¼"
	    	end if
		end if
	end if

sub showContent
   	dim i
    i=0
%>
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  
 <tr align="center" >
                  <td width="49" height="25" align="center" class="TD_title2"><strong>ѡ��</strong></td>
               
                  <td width="250" height="25" align="center" class="TD_title2"><strong>����</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>��һ</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>�𰸶�</strong></td>
                  
                  <td width="80" height="25" align="center" class="TD_title2"><strong>����ȷ��</strong></td>
                  <td width="100" height="25" align="center" class="TD_title2"><strong>������</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>������</strong></td>
                  
                  <td width="120" height="25" align="center" class="TD_title2"><strong>��ս�ɹ���</strong></td>
                  <td width="120" height="25" align="center" class="TD_title3"><strong>����ʱ��</strong></td>
                  

</tr>
  
                <%do while not rs.EOF %>
<%if i mod 2=0 then%>              	
                	<tr align="center" bgcolor="#e0e5f5"     onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
<%else%>
                <tr align="center"  onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
	
<%end if%>
                  <td class="TD1">&nbsp;<input type="checkbox" name="checkbox" value="<%=rs("id")%>"></td>                  
                  <td class="TD2" align="left"><%=rs("txt")%></td>
                  <td class="TD2">&nbsp;<%=rs("d1")%></td>
                  <td class="TD2">&nbsp;<%=rs("d2")%></td>                  
                  <td class="TD2">&nbsp;<%=rs("zs")%></td>
                  <td class="TD2">&nbsp;<%=rs("zb")%> </td> 
                  <td class="TD2">&nbsp;<a href="/admin/UserModify.asp?UserID=<%=rs("fbz")%>" target="_blank"><%=rs("fbz")%></a></td>                 
                  <td class="TD2">&nbsp;<%if rs("tzz")="0" then%>������<%else%><a href="/admin/UserModify.asp?UserID=<%=rs("tzz")%>" target="_blank"><%=rs("tzz")%></a> <%end if%> </td>
                  <td class="TD3">&nbsp;<%=rs("fbdate")%> </td>
                  
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
			  </td>
            </tr>
            <tr>
                    <td> </td>
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
function addwin() { 
//window.showModalDialog ("/systemManage/mainSendMsg.jsp", window, "dialogHeight=350px; dialogWidth=550px; status:no;scroll:no;toolbar= no, menubar=no,resizable=no, location=no")
window.open ("addUser.asp?site=<%=siteid%>&classid=<%=classid%>", "addsystemwindow", "height=520, width=600, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") 
}
function daoru() { 
window.open ("systemindex.asp?site=<%=siteid%>&classid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
function daorunews() { 
window.open ("../../caiji/systemindex.asp?site=<%=siteid%>&typeid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
function modifywin() {
	//ȡ��ѡ�е�һ��checkbox��ֵ
	var temp;
	var isselect=false;
	var count=0;//ѡ�еļ�¼��
       if(messageForm.checkbox.length!=null){

	for(var i=0;i<messageForm.checkbox.length;i++){
			if(messageForm.checkbox[i].checked==true){
                          isselect=true;
                          count = count +1;
		        temp=messageForm.checkbox[i].value;
       }
    }
  }

     else{
    if(messageForm.checkbox.checked==true){
      temp=messageForm.checkbox.value;
       isselect=true;
        count=count+1;
                    }
                  }
      if(count==1){//�����޸�
window.open ("modifyUser.asp?id="+temp+"&classid=<%=classid%>", "modifysystemwindow", "height=520, width=600, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") 

     }
     if(count==0){
         alert("��ѡ����Ҫ�޸ĵ�����!");
     }

    if(count>1){
         alert("һ��ֻ���޸�һ����¼��Ϣ!");
       }
             }




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
function openwin(a) {
window.open ("viewUser.asp?id="+a+"&classid=<%=classid%>", "viewsystemwindow", "height=520, width=620, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
function delType()
  {
    var isselect=false;
    try
    {
    delemp=messageForm.checkbox;
    var typeId;
    var count=0;
    if(delemp.length!=null)
    {
            for(i=0;i<delemp.length;i++)
            {

              if(delemp[i].checked==true)
              {
                typeId=delemp[i].value;
                isselect=true;
                count=count+1;
              }

            }

       }else{
          if(delemp.checked==true){
               typeId=delemp.value;
               isselect=true;
               count=count+1;
          }
       }

    if(isselect)
    {

     if(confirm("ȷ��Ҫɾ����ѡ�ļ�¼��"))
	         {
           messageForm.action.value='del';
	         messageForm.submit();
	        }
����
    }
    else
    {
      alert("��ѡ��Ҫɾ���ļ�¼��")
    }
}catch(e)
  { }
}
function daoru3()
  {
  	if(messageForm.changeid.value==""){
  		alert("�㻹û����Ŀ�����Ƚ�����");
  		return false;
  		
  	}
  	
    var isselect=false;
    try
    {
    delemp=messageForm.checkbox;
    var typeId;
    var count=0;
    if(delemp.length!=null)
    {
            for(i=0;i<delemp.length;i++)
            {

              if(delemp[i].checked==true)
              {
                typeId=delemp[i].value;
                isselect=true;
                count=count+1;
              }

            }

       }else{
          if(delemp.checked==true){
               typeId=delemp.value;
               isselect=true;
               count=count+1;
          }
       }

    if(isselect)
    {

     if(confirm("ȷ��Ҫ����ѡ������ת����"))
	         {
           messageForm.action.value='daoru3';
	       messageForm.submit();
	        }
����
    }
    else
    {
      alert("��ѡ��Ҫת�Ƶ����£�")
    }
}catch(e)
  { }
}
</script>
<%
'response.write sql
dim endtime
endtime=timer()
%>
ҳ��ִ��ʱ�䣺<%=FormatNumber((endtime-startime)*1000,3)%>����
</body>
</html>
<%
rs.Close
set rs=Nothing
call CloseConn()  
%>