<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="Style_List.aspx.cs" Inherits="KeLin.WebSite.WEB.Style.Style_List" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="/NetCSS/table.js" type="text/JavaScript"></script>
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
            window.location.href = "modify.aspx?id=" + temp;
           
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
    function add(a) {
        window.location.href = 'add.aspx';
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

    function daoru() {
        window.open("/WEB/Style/Style_List00.aspx", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
    }
</script>
<title>CSS��ʽ�б�</title>
</head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??��?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">���ڴ������������ĵȴ�......
	</td>
  </tr>
</table>
</div>

<form method="POST" name="messageForm" action="Style_List.aspx" >
<input type="hidden" name="action" value="">
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
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">������վ����ҳ���ۺ��Ű� &gt;&gt; ���԰�CSS��ʽ����  
                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0" background="/NetImages/dw.gif">
                    <tr>
                      <td> 
   <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                                height="100%" width="100%">
                                                                                <tr>
                                                                                    <td class="column" align="left">
                                                                                        ��&nbsp;&nbsp;��</td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="fh" align="left">
                                                                                    <input name="" type="button" value=" ����ϵͳCSS��ʽ " onclick="daoru();" id="Button3" class="bt"/>
                                                                                    &nbsp;&nbsp;
                                                                                        <input type="button" name="bt_New" value=" �� �� " onclick="add()" class="bt"/>
                                                                                        &nbsp;&nbsp;
                                                                                        <input type="button" name="bt_New" value=" ��ΪĬ�� " onclick="setDefault()" class="bt"/>
                                                                                        &nbsp;&nbsp;
                                                                                        <input name="" type="button" value=" �� �� " onclick="modify()" id="Button1" class="bt"/>&nbsp;&nbsp;&nbsp;
                                                                                        <input name="" type="button" value=" ɾ �� " onclick="del()" id="Button2" class="bt"/> &nbsp;&nbsp;&nbsp;                                                                                                                                                                       
                                                                                        
                                                                                        <!--input name="" type="button" value=" �� �� " onclick="jacascript:window.location='/admin/SitePreview.aspx';" id="Button4" class="bt"/-->
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
<!----------------------��ʼ��ʾ------------------>
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">  
                <tr align="center" >
                  <td width="5%" height="25" align="center" class="TD_title2"><strong><input type="checkbox" name="chkall" value="ON" onclick="CheckAll(this.form)" /></strong></td>
                  <td width="30%" height="25" align="center" class="TD_title2"><strong>��ʽ����</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>�Ƿ�Ĭ��</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>�����</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>������ID</strong></td>                  
                  <td width="20%" height="25" align="center" class="TD_title3"><strong>��������</strong></td>              

               </tr>   
               <!--��ʽһ-->	
<%
    String bg="";
        for (int i = 0; (volist != null && i < volist.Count); i++)
        {

            if (i % 2 == 0) { bg = "#e0e5f5"; } else { bg = ""; }
           
 %>
               <tr align="center" bgcolor="<%=bg%>"  onMouseDown="selectRow(this);" onMouseOver="this.className='menuItemOver'" onMouseOut="this.className='menuItem'" >	           
                  <td class="TD1">&nbsp;<input type="checkbox" name="checkbox" value="<%=volist[i].ID %>"></td>
                  <td class="TD2" align="left">&nbsp;<img src="showColor.aspx?sc=<%=volist[i].style_color %>" />&nbsp;<a href="javascript:window.location.href='modify.aspx?id=<%=volist[i].ID %>';"><%=volist[i].style_name%></a></td>
                  <td class="TD2">&nbsp;<%if (volist[i].style_type == 1)
                                          { %><img src="/NetImages/yes.gif" /><%} %></td>
                  <td class="TD2">&nbsp;<%=volist[i].rank%></td>
                  <td class="TD2">&nbsp;<%=volist[i].create_user%></td>               
                  <td class="TD3">&nbsp;<%=volist[i].create_time%></td>               
                </tr>
                
<%
    }%>
                
	            
       
            </table>
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
</form>


</body>
</html>