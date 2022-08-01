<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="readSpace_DB.aspx.cs" Inherits="KeLin.WebSite.admin.readSpace_DB" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">

    function modify() {
        //取得选中第一个checkbox的值
        var temp;
        var isselect = false;
        var count = 0; //选中的记录数
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
        if (count == 1) {//单条修改
            window.location.href = "modify.aspx?id=" + temp;
           
        }
        if (count == 0) {
            alert("请选择你要修改的记录项!");
        }

        if (count > 1) {
            alert("一次只能修改一项!");
        }
    }

    function setDefault() {
        //取得选中第一个checkbox的值
        var temp;
        var isselect = false;
        var count = 0; //选中的记录数
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
        if (count == 1) {//单条修改
            messageForm.action.value = "setDefault";
            messageForm.submit();

        }
        if (count == 0) {
            alert("请选择设为默认的记录项!");
            
        }

        if (count > 1) {
            alert("只能选一项!");
           
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

                if (confirm("确定要删除所选的" + count + "条记录吗？")) {
                    messageForm.action.value = 'D_el';
                    messageForm.submit();
                }
            }
            else {
                alert("请选择要删除的记录！")
            }
        } catch (e)
  { }
    }
    
    

</script>
<title>实际占用数据库大小</title>
</head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
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
              <td width="12"><img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="../NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="../NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">系统管理 &gt;&gt; 网站空间使用统计 &gt;&gt; 实际占用数据库大小  
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


                                                                            <br />
<!----------------------开始显示------------------>
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">  
                <tr align="center" >                  
                  <td width="10%" height="25" align="center" class="TD_title1"><strong>表名(别名)</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>分配空间 KB</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>已使用空间 KB</strong></td>
                  <td width="10%" height="25" align="center" class="TD_title2"><strong>未使用空间 KB</strong></td>                  
                  <td width="10%" height="25" align="center" class="TD_title3"><strong>剩余空间 Mb</strong></td> 
                  <td width="10%" height="25" align="center" class="TD_title3"><strong>行数</strong></td>              

               </tr>   
               <!--样式一-->	
<%
    String bg="";
        for (int i = 0; (volist != null && i < volist.Count); i++)
        {

            if (i % 2 == 0) { bg = "#e0e5f5"; } else { bg = ""; }
           
 %>
               <tr align="center" bgcolor="<%=bg%>"  onMouseDown="selectRow(this);" onMouseOver="this.className='menuItemOver'" onMouseOut="this.className='menuItem'" >	           
                  <td class="TD1">&nbsp;<%=volist[i].book_title %> </td>
                  <td class="TD2">&nbsp;<%=volist[i].book_size%></td>
                  <td class="TD2">&nbsp;<%=volist[i].book_ext%></td>
                  <td class="TD2">&nbsp;<%=volist[i].book_file%></td>
                  <td class="TD2">&nbsp;<%=volist[i].username%></td>               
                  <td class="TD3">&nbsp;<%=volist[i].userid%></td>               
                </tr>
                
<%
    }%>
                
	            
       
            </table>
<!----------------------结束------------------>
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