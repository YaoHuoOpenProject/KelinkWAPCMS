<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="MobileUA_List00.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_List00" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
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
            window.location.href = "MobileUA_List00_mod.aspx?id=" + temp;

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

                if (confirm("确定要审核" + count + "个吗？")) {
                    messageForm.action.value = 'check';
                    messageForm.submit();
                }
            }
            else {
                alert("请选择要审核的记录！")
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

                if (confirm("确定要取消审核" + count + "个吗？")) {
                    messageForm.action.value = 'cancelcheck';
                    messageForm.submit();
                }
            }
            else {
                alert("请选择要取消审核的记录！")
            }
        } catch (e)
  { }
    }
</script>
<title>CSS样式列表</title>
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
                  <td width="98%" height="24" valign="middle">系统资源 &gt;&gt; 手机型号  
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
                                                                                        操&nbsp;&nbsp;作</td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="fh" align="left">
                                                                                    <%
                                                                                        
                                                                                        Response.Write("状态：<select name=\"ischeck\">");
                                                                                        Response.Write("<option value=\"" + ischeck + "\">" + ischeck + "</option>");
                                                                                        Response.Write("<option value=\"\">所有</option>");
                                                                                        Response.Write("<option value=\"2\">2_有修改信息</option>");
                                                                                        Response.Write("<option value=\"1\">1_未审核</option>");
                                                                                        Response.Write("<option value=\"0\">0_已审核</option>");
                                                                                        Response.Write("</select> ");
                                                                                         %>
                                                                                    输入型号:<input type="text" name="key" value="<%=key %>" size="5"/> <input type="submit" name="bt"  value="查询" class="bt" style="width:60px"/>
                                                                                   <br /><br />
                                                                                   <input type="button" name="bt_New" value=" 管理手机品牌 " onclick="window.location='MobileUA_Band.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" 管理手机平台 " onclick="window.location='MobileUA_PlatForm.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" 管理手机屏幕 " onclick="window.location='MobileUA_Screen.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                   <input type="button" name="bt_New" value=" 管理游戏系列  " onclick="window.location='MobileUA_Serial.aspx';" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                        <input type="button" name="bt_New" value=" 新增机型 " onclick="add()" class="bt" style="width:100px"/>&nbsp;&nbsp;
                                                                                        <input name="" type="button" value=" 修 改 " onclick="modify()" id="Button1" class="bt" style="width:60px"/>&nbsp;&nbsp;&nbsp;
                                                                                    <%if (this.ManagerLvl.ToString()=="00"){ %>                                 
                                                                                        <input name="" type="button" value=" 删 除 " onclick="del()" id="Button2" class="bt" style="width:60px"/> &nbsp;&nbsp;&nbsp;  
                                                                                        <input name="" type="button" value=" 审 核 " onclick="check()" id="Button3" class="bt" style="width:60px"/> &nbsp;&nbsp;&nbsp;    
                                                                                        <input name="" type="button" value=" 取 消 审 核 " onclick="cancelcheck()" id="Button4" class="bt" /> &nbsp;&nbsp;&nbsp;    
                                                                                    <%} %>                                                                                                                                                                  
                                                                                        
                                                                                      
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                                                                            <br />
<!----------------------开始显示------------------>
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">  
                <tr align="center" >
                  <td width="20" height="25" align="center" class="TD_title2"><strong><input type="checkbox" name="chkall" value="ON" onclick="CheckAll(this.form)" /></strong></td>
                  <td width="60" height="25" align="center" class="TD_title2"><strong>审核</strong></td>
                
                  <td width="120" height="25" align="center" class="TD_title2"><strong>中文品牌</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>英文品牌</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>手机型号</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>游戏系列</strong></td>   
                  <td width="120" height="25" align="center" class="TD_title2"><strong>操作系统</strong></td>
                  <td width="120" height="25" align="center" class="TD_title2"><strong>手机屏幕</strong></td>
                  <td width="100" height="25" align="center" class="TD_title2"><strong>机型首页</strong></td>               
                  <td width="120" height="25" align="center" class="TD_title2"><strong>浏览器支持</strong></td> 
                  <td width="120" height="25" align="center" class="TD_title2"><strong>扩充内容</strong></td>                
                  <td width="120" height="25" align="center" class="TD_title3"><strong>修正信息</strong></td>   
               </tr>   
               <!--样式一-->	
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
                  <td class="TD2">&nbsp;<%if (volist[i].showIndex == 1) Response.Write("显示");%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].version%></td>   
                  <td class="TD2">&nbsp;<%=volist[i].remark%></td>  
                  <td class="TD3">&nbsp;<%=volist[i].ismodify%></td>             
                </tr>
                
<%
    }%>
                
	            
       
            </table>
            
            
</form>
             <p align=center><% Response.Write(linkURL);%></p>
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



</body>
</html>