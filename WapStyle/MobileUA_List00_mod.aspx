<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="MobileUA_List00_mod.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_List00_mod" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
    function add() {
        if (messageForm.rand.value == "" || messageForm.mode.value == "") {
            alert("���кźͻ��Ͳ���Ϊ�գ�");
            return;
        } 

        showDoing();
        messageForm.submit();
      
    }

    function showDoing() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
</script>
<title>������ʽ</title>
    <style type="text/css">
        .style1
        {
            FONT-SIZE: 12px;
            BORDER-LEFT: #d2d2d2 1px solid;
            COLOR: #333333;
            BORDER-BOTTOM: #d2d2d2 1px solid;
            FONT-FAMILY: "����";
            width: 334px;
        }
    </style>
    </head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??��?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">���ڴ������������ĵȴ�......
	</td>
  </tr>
</table>
</div>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="../NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="../NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">ϵͳ��Դ &gt;&gt; ������Դ &gt;&gt; �޸Ļ���</td>
                </tr>
              </table></td>
              <td width="13"><img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0" background="../NetImages/dw.gif">
                    <tr>
                      <td> 
 
 
 
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="messageForm" action="MobileUA_List00_mod.aspx" method="post">
      	<input type="hidden" name="action" value="mod" />
      	<input type="hidden" name="id" value="<%=id %>" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height="554">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3"><b> &nbsp;
                                    </b></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="26" align="right" class="style1" ><b>����ţ�</b></TD>
                                  <TD class="TD3"> <div align="left">&nbsp;  
                                      <INPUT Class="input" name="rand" value="<%=bookVo.rand %>" size=50>
                                    </div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="32" align="right" class="style1"><strong>����Ʒ��:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;
                                  
                                  <select name="namecn">
                                  <option value="<%=bookVo.nameCN %>"><%=bookVo.nameCN %></option>
                                  <%=this.band %>
                                  <option value="">����-��ʱ��֪��</option>
                                  </select>
                                    </div>
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>Ӣ��Ʒ��:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="nameen" value="<%=bookVo.nameEN %>" size=50>
                                    </div> 
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>�ֻ��ͺ�:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="mode" value="<%=bookVo.Mode %>" size=50>
                                    </div> 
                                  </TD>
                                </TR>
                                                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>����ϵ��:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      
                                      <select name="series">
                                      <option value="<%=bookVo.Series %>"><%=bookVo.Series%></option>
                                  <%=this.serial %>
                                  <option value="">����-��ʱ��֪��</option>
                                  </select>
                                    </div> 
                                  </TD>
                                </TR>
                                                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>����ϵͳ:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      
                                      <select name="osystem">
                                      <option value="<%=bookVo.OSystem %>"><%=bookVo.OSystem%></option>
                                  <%=this.platform %>
                                  <option value="">����-��ʱ��֪��</option>
                                  </select>
                                    </div> 
                                  </TD>
                                </TR>
                                                               <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>�ֻ���Ļ:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;                                        
                                      <select name="screen">
                                      <option value="<%=bookVo.widthpx %>X<%=bookVo.heightpx %>"><%=bookVo.widthpx %>X<%=bookVo.heightpx %></option>
                                  <%=this.screen %>
                                  <option value="0X0">����-��ʱ��֪��</option>
                                  </select>
                                    </div> 
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>�����֧��:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <select name="version">
                                      <option value="<%=bookVo.version %>"><%=bookVo.version %></option>
                                      <option value="�����">�����</option>
                                      <option value="WAP1.0">WAP1.0</option>
                                      <option value="WAP2.0">WAP2.0</option>
                                      <option value="WAP1.0/2.0">WAP1.0/2.0</option>
                                      <option value="����WEB">����WEB</option>
                                      <option value="ȫ֧��">ȫ֧��</option>
                                      </select>
                                    </div> 
                                  </TD>
                                </TR>
                                <%if(this.ManagerLvl=="00"){ %>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>�޸���Ϣ:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="ismodify" value="<%=bookVo.ismodify %>" size=50>
                                    </div> 
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>��ʾ��ѡ�������ҳ:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <select name="showindex">
                                      <option value="0" <%if(bookVo.showIndex==0) Response.Write("selected"); %>>����ʾ</option>
                                      <option value="1" <%if(bookVo.showIndex==1) Response.Write("selected"); %>>��ʾ</option>                                      
                                      </select>
                                    </div> 
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1"><strong>��ǰ����ѡ����XXX��������ʾ:</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="remark" value="<%=bookVo.remark %>" size=100>
                                      <br />(֧��UBB���ݣ�����̳��Ŀ���ӣ�ͼƬ��Ŀ����)
                                    </div> 
                                  </TD>
                                </TR>
                                <%} %>
                                <TR align="center" class="tdbg" > 
                                  <TD height="59" colspan="2" class="TD3">
                                      <input name="" type="button" value=" �� �� �� �� " onclick="add()" id="Button3" size="20" class="bt"/>
                                       &nbsp;<input name="" type="button" value=" �� �� " onclick="jacascript:window.location='MobileUA_List00.aspx';" id="Button1" class="bt"/></TD>
                                </TR>
                              	<tr>
                                  <TD height="34" colspan="2" class="TD3">
                                     
                                      </TD>
                                </tr>
                              </TABLE>
                </td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>


</body>
</html>