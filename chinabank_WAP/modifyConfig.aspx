<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="modifyConfig.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.modifyConfig" %>
<html>
<head>
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">

<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
    function add() {
        if (messageForm.rand.value == "" || messageForm.namecn.value == "" || messageForm.nameen.value == "" || messageForm.mode.value == "" || messageForm.series.value == "" || messageForm.osystem.value == "" || messageForm.widthpx.value == "" || messageForm.heightpx.value == "") {
            alert("�������Ϊ�գ�");           
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
                  <td width="98%" height="24" valign="middle">��վ���� &gt;&gt; ������ҹ��� &gt;&gt; �����շѽӿڲ���</td>
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
    

     <FORM name="Form1" action="modifyConfig.aspx" method="post">
     <input type="hidden" name="action" value="gomod" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3" width="545"><b> 
                                  <%=this.ERROR %>
                                    <%if (this.INFO=="OK") {%>
                                    <font color=red> �������óɹ�������</font> 
                                  
                                    <%}%>
                                    </b></TD>
                                  <TD  height=20 class="TD_title3" width="704"><b><font color="#FF0000">�ױ�֧��ƽ̨�ӿ�ʹ�÷���</font></b></TD>
                                </TR>
                              
                                 <TR class="tdbg" > 
                                  <TD width="159" height="30" align="right" class="TD2" ><b>�̻���ţ�</b></TD>
                                  <TD width="367" class="TD2"> <div align="left">&nbsp;   
                                    <INPUT Class="input" name="p1_MerId" value="<%=p1_MerId%>" size=20> 
                                </TR>
                                  <TD width="702" class="TD2" rowspan="5" valign="top"> 
									<br>

									<br>
&nbsp;<b>����һ��</b>����򿪴���վ(<a target="_blank" href="https://www.yeepay.com/selfservice/registerSubMerchant.action?customerId=10000877918&hmac=0af946ec75a224e0f2a9bf1aca89fd66">�ױ�֧��ע��</a>)��ע���Ϊ�̻���


									<br><br>

&nbsp;<b>�������</b>��ͨ��˺���������ױ�֧��ƽ̨WEB��̨ȡ���̻���ź���Կ���ֱ������ұߣ�<br>
									<br>
&nbsp;<b>��������</b>������á�
									<br><br>
&nbsp;<b>�����ģ�</b>����/���㣬��¼�ױ�֧��ƽ̨WEB��̨����<br><br>
&nbsp;<b>��ע�⣺</b><font color=red>��ҵ��������ֱ���뱱���ױ�֧��ƽ̨�������ױ�֧���Ǵ˽�վϵͳ��������̣������ʹ�ã� �����ױ�֧��ָ����ϵ�ˣ������� QQ:XXX

</font>
									<p>��</TR>
                               

                                <TR class="tdbg" >
                                  <TD width="159" height="30" align="right" class="TD2" ><b>��Կ��</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="merchantKey" value="<%=merchantKey%>" size=43>&nbsp; 
									</div></TD>
									<INPUT type="hidden" name="tomoney" value="<%=tomoney%>" size=20>
									<!--
                                <TR class="tdbg" >
                                  <TD width="159" height="30" align="right" class="TD2" ><b>һԪ���ڣ�</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      &nbsp; �������
									</div></TD>
                                </TR>
                                -->
                                <TR class="tdbg" > 
                                  <TD width="159" height="30" align="right" class="TD2" ><b>�Ƿ�����</b></TD>
                                  <TD class="TD2" width="367"><div align="left">&nbsp;  
                                      <select name="isclose">
                                        <option value="1" <%if (isclose=="1") Response.Write("selected") ;%>> �� </option>
                                        <option value="0" <%if (isclose=="0") Response.Write ("selected");%>> �� </option>

                                      </select>
                                    </div></TD>
                                </TR>
                                
                                <tr>
                                  <TD width="159" height="50" align="right" class="TD2" >
									<b>��ע��</b></TD>
                                  <TD class="TD2" width="367">&nbsp; 
									<textarea name="remark" cols="31" rows="4"><%=remark%></textarea><br>
									&nbsp; ��:��������ԭ�򣬿��ܻ��е��������ύ��û�г�ֵ�ɹ�����Ѷ����ŷ����ͷ���QQ:XXXXXXX(200����)</TD>
                                	</tr>
                                
                                <TR class="tdbg" > 
                                  <TD width="159" height="44" align="right" class="TD2" >��</TD>
                                  <TD width="1003" class="TD3" colspan="2"> &nbsp; <input type="button" Class="bt" onclick="document.all('panel').style.visibility='visible';document.all('panel').style.cursor='wait';Form1.submit()" value=" �� �� " name="B3">
                                    <font color=red>(ע�⣺Ҫ�����鿴�˲����������˴۸ģ�֧��������WAP�ֻ���վ�ϣ��ҵĵ���)</font>
                                 
                                    </div></TD>
                                </TR>
                             
                              </TABLE>
      </form>           
                              
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