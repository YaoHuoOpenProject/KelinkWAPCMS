<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="MobileUA_List00.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_List00" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">

    function modify() {
        //ȡ��ѡ�е�һ��checkbox��ֵ
        var temp;
        var isselect = false;
        var count = 0; //ѡ�еļ�¼��
        if (messageForm.checkbox.length != null) {

            for (var i = 0; i < messageForm.checkbox.length; i++) {
                if (messageForm.checkbox[i].checked == true) {
                    isselect = true;
                    count = count + 1;
                    temp = messageForm.checkbox[i].value;
                }
            }
        }

        else {
            if (messageForm.checkbox.checked == true) {
                temp = messageForm.checkbox.value;
                isselect = true;
                count = count + 1;
            }
        }
        if (count == 1) {//�����޸�
            window.location.href = "MobileUA_List00_mod.aspx?id=" + temp;

        }
        if (count == 0) {
            alert("��ѡ����Ҫ�޸ĵļ�¼��!");
        }

        if (count > 1) {
            alert("һ��ֻ���޸�һ��!");
        }
    }

    function setDefault() {
        //ȡ��ѡ�е�һ��checkbox��ֵ
        var temp;
        var isselect = false;
        var count = 0; //ѡ�еļ�¼��
        if (messageForm.checkbox.length != null) {

            for (var i = 0; i < messageForm.checkbox.length; i++) {
                if (messageForm.checkbox[i].checked == true) {
                    isselect = true;
                    count = count + 1;
                    temp = messageForm.checkbox[i].value;
                }
            }
        }

        else {
            if (messageForm.checkbox.checked == true) {
                temp = messageForm.checkbox.value;
                isselect = true;
                count = count + 1;
            }
        }
        if (count == 1) {//�����޸�
            messageForm.action.value = "setDefault";
            messageForm.submit();

        }
        if (count == 0) {
            alert("��ѡ����ΪĬ�ϵļ�¼��!");

        }

        if (count > 1) {
            alert("ֻ��ѡһ��!");

        }
    }


    function doCheckAll() {
        for (var i = 0; i < document.form.length; i++) {
            var e = document.form[i];
            if (e.name.indexOf('objID') != -1)
                e.checked = document.form.checkbox.checked;
        }
    }

    function CheckAll(form) {
        for (var i = 0; i < form.elements.length; i++) {
            var e = form.elements[i];
            if (e.name != 'chkall') e.checked = form.chkall.checked;
        }
    }
    function add() {
        window.location.href = 'MobileUA_List00_add.aspx';
    }
    function del() {
        var isselect = false;
        try {
            delemp = messageForm.checkbox;
            var typeId;
            var count = 0;
            if (delemp.length != null) {
                for (i = 0; i < delemp.length; i++) {

                    if (delemp[i].checked == true) {
                        typeId = delemp[i].value;
                        isselect = true;
                        count = count + 1;
                    }

                }

            } else {
                if (delemp.checked == true) {
                    typeId = delemp.value;
                    isselect = true;
                    count = count + 1;
                }
            }

            if (isselect) {

                if (confirm("ȷ��Ҫɾ����ѡ��" + count + "����¼��")) {
                    messageForm.action.value = 'D_el';
                    messageForm.submit();
                }
            }
            else {
                alert("��ѡ��Ҫɾ���ļ�¼��")
            }
        } catch (e)
  { }
    }

    function check() {
        var isselect = false;
        try {
            delemp = messageForm.checkbox;
            var typeId;
            var count = 0;
            if (delemp.length != null) {
                for (i = 0; i < delemp.length; i++) {

                    if (delemp[i].checked == true) {
                        typeId = delemp[i].value;
                        isselect = true;
                        count = count + 1;
                    }

                }

            } else {
                if (delemp.checked == true) {
                    typeId = delemp.value;
                    isselect = true;
                    count = count + 1;
                }
            }

            if (isselect) {

                if (confirm("ȷ��Ҫ���" + count + "����")) {
                    messageForm.action.value = 'check';
                    messageForm.submit();
                }
            }
            else {
                alert("��ѡ��Ҫ��˵ļ�¼��")
            }
        } catch (e)
  { }
    }
    function cancelcheck() {
        var isselect = false;
        try {
            delemp = messageForm.checkbox;
            var typeId;
            var count = 0;
            if (delemp.length != null) {
                for (i = 0; i < delemp.length; i++) {

                    if (delemp[i].checked == true) {
                        typeId = delemp[i].value;
                        isselect = true;
                        count = count + 1;
                    }

                }

            } else {
                if (delemp.checked == true) {
                    typeId = delemp.value;
                    isselect = true;
                    count = count + 1;
                }
            }

            if (isselect) {

                if (confirm("ȷ��Ҫȡ�����" + count + "����")) {
                    messageForm.action.value = 'cancelcheck';
                    messageForm.submit();
                }
            }
            else {
                alert("��ѡ��Ҫȡ����˵ļ�¼��")
            }
        } catch (e)
  { }
    }
</script>
<title>CSS��ʽ�б�</title>
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
                  <td width="98%" height="24" valign="middle">ϵͳ��Դ &gt;&gt; �ֻ��ͺ�  
                  		 </td>
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
<form method="POST" name="messageForm" action="MobileUA_List00.aspx" >
<input type="hidden" name="action" value="" /> 
<input type="hidden" name="pagesize" value="<%=pageSize %>" /> 
   <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                                height="100%" width="100%">
                                                                                <tr>
                                                                                    <td class="column" align="left">
                                                                                        ��&nbsp;&nbsp;��</td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="fh" align="left">
                                                                                    <%
                                                                                        
                                                                                        Response.Write("״̬��<select name=\"ischeck\">");
                                                                                        Response.Write("<option value=\"" + ischeck + "\">" + ischeck + "</option>");
                                                                                        Response.Write("<option value=\"\">����</option>");
                                                                                        Response.Write("<option value=\"2\">2_���޸���Ϣ</option>");
                                                                                        Response.Write("<option value=\"1\">1_δ���</option>");
                                                                                        Response.Write("<option value=\"0\">0_�����</option>");
                                                                                        Response.Write("</select> ");
                                                                                         %>
                                                                                    �����ͺ�:<input type="text" name="key" value="<%=key %>" size="5"/> <input type="submit" name="bt"  value="��ѯ" class="bt" style="width:60px"/>
                                                                                   <br /><br />
                                                                                   <input type="button" name="bt_New" value=" �����ֻ�Ʒ�� " onclick="window.location='MobileUA_Band.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" �����ֻ�ƽ̨ " onclick="window.location='MobileUA_PlatForm.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" �����ֻ���Ļ " onclick="window.location='MobileUA_Screen.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" ������Ϸϵ��  " onclick="window.location='MobileUA_Serial.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                        <input type="button" name="bt_New" value=" �������� " onclick="add()" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                        <input name="" type="button" value=" �� �� " onclick="modify()" id="Button1" class="bt" style="width:60px"/>&nbsp;&nbsp;&nbsp;
                                                                                    <%if (this.ManagerLvl.ToString()=="00"){ %>                                 
                                                                                        <input name="" type="button" value=" ɾ �� " onclick="del()" id="Button2" class="bt" style="width:60px"/> &nbsp;&nbsp;&nbsp;  
                                                                                        <input name="" type="button" value=" �� �� " onclick="check()" id="Button3" class="bt" style="width:60px"/> &nbsp;&nbsp;&nbsp;    
                                                                                        <input name="" type="button" value=" ȡ �� �� �� " onclick="cancelcheck()" id="Button4" class="bt" /> &nbsp;&nbsp;&nbsp;    
                                                                                    <%} %>                                                                                                                                                                  
                                                                                        
                                                                                      
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
<!----------------------��ʼ��ʾ------------------>
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">  
                <tr align="center" >
                  <td width="20" height="25" align="center" class="TD_title2"><strong><input type="checkbox" name="chkall" value="ON" onclick="CheckAll(this.form)" /></strong></td>
                  <td width="60" height="25" align="center" class="TD_title2"><strong>���</strong></td>
                
                  <td width="120" height="25" align="center" class="TD_title2"><strong>����Ʒ��</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>Ӣ��Ʒ��</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>�ֻ��ͺ�</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>��Ϸϵ��</strong></td>   
                  <td width="120" height="25" align="center" class="TD_title2"><strong>����ϵͳ</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>�ֻ���Ļ</strong></td>
                  <td width="100" height="25" align="center" class="TD_title2"><strong>������ҳ</strong></td>               
                  <td width="120" height="25" align="center" class="TD_title2"><strong>�����֧��</strong></td> 
                  <td width="120" height="25" align="center" class="TD_title2"><strong>��������</strong></td>                
                  <td width="120" height="25" align="center" class="TD_title3"><strong>������Ϣ</strong></td>   
               </tr>   
               <!--��ʽһ-->	
<%
    String bg="";
        for (int i = 0; (volist != null && i < volist.Count); i++)
        {
            index = index + kk;
            if (i % 2 == 0) { bg = "#e0e5f5"; } else { bg = ""; }
           
 %>
               <tr align="center" bgcolor="<%=bg%>"  onMouseDown="selectRow(this);" onMouseOver="this.className='menuItemOver'" onMouseOut="this.className='menuItem'" >	           
                  <td class="TD1"><input type="checkbox" name="checkbox" value="<%=volist[i].id %>"><%= index  %>.</td>
                  <td class="TD2">&nbsp;<%if (volist[i].ischeck == 0){ %><img src="../NetImages/yes.gif" /><%}else{ %><img src="../NetImages/nono.gif" /><%} %></td>
              
                  <td class="TD2">&nbsp;<a href="MobileUA_List00_mod.aspx?id=<%=volist[i].id %>"><%=volist[i].nameCN%></a></td>
                  <td class="TD2">&nbsp;<a href="MobileUA_List00_mod.aspx?id=<%=volist[i].id %>"><%=volist[i].nameEN%></a></td>
                  <td class="TD2">&nbsp;<%=volist[i].Mode%></td>               
                  <td class="TD2">&nbsp;<%=volist[i].Series%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].OSystem%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].widthpx%>X<%=volist[i].heightpx%></td>   
                  <td class="TD2">&nbsp;<%if (volist[i].showIndex == 1) Response.Write("��ʾ");%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].version%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].remark%></td>  
                  <td class="TD3">&nbsp;<%=volist[i].ismodify%></td>             
                </tr>
                
<%
    }%>
                
	            
       
            </table>
            
            
</form>
             <p align=center><% Response.Write(linkURL);%></p>
<!----------------------����------------------>
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



</body>
</html>