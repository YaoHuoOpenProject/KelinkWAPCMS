<%@language=vbscript codepage=936 %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="../ASP_API/userconfigGB.asp"--><!--#include file="function.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
dim startime
startime=timer()
dim classid,classname,keyword,typeid,typename,sdate
typename=trim(request("typename"))
keyword=trim(request("keyword"))
typeid=trim(request("typeid"))
sdate=request("sdate")

if sdate="" then
	 sdate=date()
end if

%>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">



function calCtrlPopup(inputField) {
	showCalendar(inputField.name, 'y-mm-dd');
}


function gosubmit(){
document.all("panel").style.visibility="visible";
document.all("panel").style.cursor="wait";
window.location.href="systemlist.asp?typeid=<%=typeid%>&typename=<%=typename%>&sdate="+messageForm.sdate.value+"&classid=<%=classid%>";
}

</SCRIPT>
<title>������Դ</title>
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
<form method="POST" name="messageForm" action="DaoRu.asp" >
	<input type=hidden name="action" >
	<input type=hidden name="classid" value="<%=classid%>">
	<input type=hidden name="typeid" value="<%=typeid%>">
	<input type=hidden name="sid" value="<%=sid%>">
		<input type=hidden name="typename" value="<%=typename%>">
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
                  <td width="98%" height="24" valign="middle">ϵͳ��Դ &gt;&gt;  ���Ųɼ� &gt;&gt; <%=typename%>

                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif" class="TABLE6">
              <tr>
              <td height="24"><table width="100%"  border="0">
               <tr>
                      <td> 
ѡ��/��ѡ����<input type="checkbox" name="chkall" value="ON" onclick="CheckAll(this.form)">        
               &nbsp;&nbsp; ���ŷ���ʱ�䣺    
<INPUT Class="input" name="sdate" value="<%=sdate%>" size=10 >  <img style="cursor:hand;" onclick="setday(this,document.messageForm.sdate)" TITLE="ѡ��" NAME="anchor17" ID="anchor17" src="/NetImages/choose.gif">  
<input type="button" name="g" value=" �� ѯ " onClick="javascript:gosubmit();"  class="bt"/>
  

                        &nbsp;&nbsp; 

                         <!--����Դ����-->
                         
                         &nbsp;&nbsp;
                         <select name="classid2" >
                         	<%dim rs1,m
m=0
set rs1=conn.execute("select b.classid,b.classname from [systype] a,[class] b where a.typeid=b.typeid  and b.userid="&siteid&" and a.typepath='article/index.aspx'")
while not rs1.eof
m=m+1
%>
<option value="<%=rs1("classid")%>" <%if Cstr(rs1("classid"))=typeid then response.write "selected" end if%>>��<%=rs1("classid")%>_<%=rs1("classname")%>��</option>
<%
rs1.movenext
wend
rs1.close
set rs1=nothing
if m=0 then
%> 
<option value="" >��û���ҵ���������Ŀ</option>
<%end if%>
                          
                        
                         </select>
                         <input type="button" name="g" value=" �� �� " onClick="javascript:daoru2();"  class="bt"/>
                                   
                                      
                         <!--�������-->
               
                        


         
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  
 <tr align="center" >
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>ѡ��</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>���</strong></td>
                  <td width="50%" height="25" align="center" class="TD_title2"><strong>����</strong></td>            
                  <td width="20%" height="25" align="center" class="TD_title3"><strong>ʱ��</strong></td>

</tr>


<%
dim temp1,temp2
typeid=request("typeid")
if typeid="" then typeid="1" end if


temp1="<item>"


temp2="</item>"




if typeid="1" then
	 Url = "http://rss.news.sohu.com/rss/focus.xml"
elseif typeid="2" then

  Url = "http://rss.news.sohu.com/rss/guonei.xml"

elseif typeid="3" then
	Url = "http://rss.news.sohu.com/rss/guoji.xml"
	
elseif typeid="4" then
	Url = "http://rss.news.sohu.com/rss/shehui.xml"
elseif typeid="5" then
	Url = "http://mil.news.sohu.com/rss/junshi.xml"
elseif typeid="6" then
	Url = "http://rss.news.sohu.com/rss/sports.xml"
elseif typeid="7" then
	Url = "http://rss.news.sohu.com/rss/business.xml"
elseif typeid="8" then
	Url = "http://rss.news.sohu.com/rss/it.xml"
elseif typeid="9" then
	Url = "http://rss.news.sohu.com/rss/learning.xml"
elseif typeid="10" then
	Url = "http://rss.news.sohu.com/rss/yule.xml"

	
end if

'on error resume next

List_PageCode = getHTTPPage(Url,"UTF-8")
'if classid=9 then
'List_PageCode = RegExpText(List_PageCode,"<!-- �������� begin -->","<a name=bbs></a>",0)
'List_PageCode = RegExpText(List_PageCode,"<span style='padding-left:6px'><a href="," target=_blank",1)
'else
List_url = RegExpText(List_PageCode,temp1,temp2,0)
List_url = RegExpText(List_url,"<link>","</link>",1)


List_title = RegExpText(List_PageCode,temp1,temp2,0)
List_title = RegExpText(List_title,"<title>","</title>",1)
'end if
  
'response.write List_PageCode
'response.end

Array_ArticleID = Split(List_url,",")  

Array_ArticleTitle = Split(List_title,",")  

for i = 0 to ubound(Array_ArticleID)-1
  
    ArticleID = Array_ArticleID(i) 
    name=Array_ArticleTitle(i)
    
    
    name=replace(name,"��ͼ��","")
    name=replace(name,"(��ͼ)","")
    name=replace(name,"(ͼ)","")
    name=replace(name,"(��ͼ)","")
    name=replace(name,"-�Ѻ�����","")
    name=replace(name,"�Ѻ�","")
    
%>

<%if i mod 2=0 then%>              	
                	<tr align="center" bgcolor="#e0e5f5"     onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
<%else%>
                <tr align="center"  onMouseDown="selectRow(this);" onmouseover="this.className='menuItemOver'" onmouseout="this.className='menuItem'" >	
<%end if%>	  
                  <td class="TD1">&nbsp;<input type="checkbox" name="checkbox" value="<%=ArticleID%>"></td>
                  <td class="TD2" align="center"><b><%=i+1%></b></td>   
                  <td class="TD2" align="left">&nbsp;<a href="<%=ArticleID%>" target="_blank"><%=name%></a></td>                  
                  <td class="TD3">&nbsp; <%=sdate%> </td>
                </tr>
                
<%next%> 
               
              
</table>
<br>
<font color=red>ע�⣺�������Ųɼ����ܣ����Է���ҳ�ṹ�����仯ʱ�����ܲɼ�������ᱨ���뻻��ʱ�����Ի���<a href="http://www.kelink.com" taget=_blank>kelink.com</a>������ϵ��</font>

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

function daoru2()
  {
  	if(messageForm.classid2.value==""){
  		alert("�㻹û�д˹���ģ�����Ŀ�����Ƚ�����");
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

     if(confirm("ȷ��Ҫ����ѡ�����µ�����"))
	         {
	         document.all("panel").style.visibility="visible";
           document.all("panel").style.cursor="wait";
           
           messageForm.action.value='daoru2';
	         messageForm.submit();
	        }
����
    }
    else
    {
      alert("��ѡ��Ҫ��������£�")
    }
}catch(e)
  { }
}

</script>
<%
dim endtime
endtime=timer()
%>
ҳ��ִ��ʱ�䣺<%=FormatNumber((endtime-startime)*1000,3)%>����
</body>
<%

call CloseConn()  
%>