<%@ Page Language="C#" AutoEventWireup="true" Codebehind="RoleManage.aspx.cs" Inherits="KeLin.WebSite.admin.RoleManage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>角色管理</title>
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css" />
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">		        
        function DoDelete() {
            var delHangBiaoShis = GetOnRadioChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("form1").submit();
            }
        }
        function DoEdit() {                        
            var edtHangBiaoShis = GetOnRadioChecked();
            if (edtHangBiaoShis == null || edtHangBiaoShis == "") {
                alert("请选择修改的角色！")
                return;
            }
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "Edit";
            document.getElementById("form1").submit();
            
        }
        function DoSave()
        {
            var selHangBiaoShis = GetOnLeftChecked();
            if (selHangBiaoShis == null || selHangBiaoShis == "") {
                alert("请选择要分配权限的菜单！")
                return;
            }
            var edtHangBiaoShis = GetOnRadioChecked();
            if (edtHangBiaoShis == null || edtHangBiaoShis == "") {
                alert("请选择分配权限的角色！")
                return;
            }
            if (window.confirm("请确认需要将选择的菜单权限分配给该角色吗?")) {
                document.getElementById("hidHangBiaoShis").value = selHangBiaoShis;
                document.getElementById("radioRole").value = edtHangBiaoShis;
                document.getElementById("CommandType").value = "Save";
                document.getElementById("form1").submit();
            } 
        }
        function GetOnChecked() {
            var sRet = '';
            var sChar = '';
            var varHangBiaoShi = "";
            var a = document.getElementsByName('chkSelect');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    sChar = ',';
                }

            }
            return varHangBiaoShi;
        }
        function GetOnRadioChecked() {
            var sRet = '';
            var sChar = '';
            var varHangBiaoShi = "";
            var a = document.getElementsByName('radioSelect');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    sChar = ',';
                }

            }
            return varHangBiaoShi;
        }

        function shSearch() {
            //alert("aa");
            //var a = document.all.item("searchtable").style.display;
            if (document.all.item("formSearch").style.display == "none")
                document.all.item("formSearch").style.display = "block";
            else
                document.all.item("formSearch").style.display = "none";
        }
		
function checkAll(chkAllID,thisObj) 
{ 
    var chkAll = document.getElementById(chkAllID); //chkAll
    var chks = document.getElementsByTagName("input"); 
    
    var chkNo = 0; 
    var selectNo = 0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
          //全选触发事件    
          if(chkAll == thisObj) 
          { 
             chks[i].checked = thisObj.checked;               
          }            
          //非全选触发 
          else 
          { 
            if(chks[i].checked && chks[i].id != chkAllID) 
             selectNo++; 
          } 
          if(chks[i].id != chkAllID) 
          { 
            chkNo++; 
          } 
       } 
    }   
    if(chkAll != thisObj) 
    { 
        chkAll.checked = chkNo==selectNo; 
    } 
} 
function checkSelectNo(chkAllID) 
{ 
    var chks = document.getElementsByTagName("input");      
    var selectNo =0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
            if(chks[i].id != chkAllID && chks[i].checked) 
            { 
                selectNo++; 
            } 
       } 
    }    
    return selectNo; 
} 
function radioAll(chkAllID,thisObj) 
{ 
    var chkAll = document.getElementById(chkAllID); //chkAll
    var chks = document.getElementsByTagName("radio"); 
    
    var chkNo = 0; 
    var selectNo = 0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "radio") 
       { 
          //全选触发事件    
          if(chkAll == thisObj) 
          { 
             chks[i].checked = thisObj.checked;               
          }            
          //非全选触发 
          else 
          { 
            if(chks[i].checked && chks[i].id != chkAllID) 
             selectNo++; 
          } 
          if(chks[i].id != chkAllID) 
          { 
            chkNo++; 
          } 
       } 
    }   
    if(chkAll != thisObj) 
    { 
        chkAll.checked = chkNo==selectNo; 
    } 
} 
function radioSelectNo(chkAllID) 
{ 
    var chks = document.getElementsByTagName("radio");      
    var selectNo =0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "radio") 
       { 
            if(chks[i].id != chkAllID && chks[i].checked) 
            { 
                selectNo++; 
            } 
       } 
    }    
    return selectNo; 
} 
    </script>
    
<script language="javascript">
    function SetValue(selectid) {        
        form1.radioRole.value = selectid;   
        form1.submit();

    }

    function GetOnLeftChecked() {
        var sRet = '';
        var sChar = '';
        var varHangBiaoShi = "";
        var a = document.getElementsByName('objID');
        var n = a.length;
        //alert(n);			
        for (var i = 0; i < n; i++) {
            if (a[i].checked) {
                varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                sChar = ',';
            }

        }
        return varHangBiaoShi;
    }
    
		function doCheckAll() {
			for (var i=0;i<document.form1.length ;i++) {
				var e = document.form1[i];
				if (e.name.indexOf('objID')!=-1)
				e.checked = document.form1.checkAll.checked;
			}
		}
		function checkSub(id){
                  	var checkstatus,parent_id,found,status_new;
                        var frm = document.form1;
                        found=0;
                        if (!frm.objID || !frm.objID.length)
                        	return;

                        for(var i=0;i<frm.objID.length;i++) {
                          if (frm.objID[i].value==id){
                            	parent_id=frm.objID[i].title;
                        	checkstatus=frm.objID[i].checked;
                          }
                        }
                        //所有子节点checked
                        for(var j=0;j<frm.objID.length;j++) {
                          if (frm.objID[j].title==id)
                        	frm.objID[j].checked=checkstatus;
                        }
                        //选择子节点时，如果有Checked的状态，记录下来
                        var noteflag = false;

                        for(var k=0;k<frm.objID.length;k++) {
                          if (frm.objID[k].title==parent_id){
                          	status_new=frm.objID[k].checked;
                               if (status_new==true){
                                noteflag = true;
                                break;
                               }
                          }
                         }
                        //选择子节点时，同时要求选择父节点
                        for(var n=0;n<frm.objID.length;n++) {
                          if (frm.objID[n].value==parent_id){
                            if (noteflag){
                          	frm.objID[n].checked=true;
                          	     //递归选中上一的上一级的父节点
                          	     //===========================
                          	   // for(var k=0;k<frm.objID.length;k++) {
                                //if (frm.objID[k].value==frm.objID[n].title)
                          	    //    frm.objID[k].checked=true;
                          	    // }
                          	    //==============================
                          	   gofatherchecked(frm.objID[n].title);
                          	//frm.checkAll.checked=true;
                            }else{
                            	frm.objID[n].checked=false;
                            }
                            return;
                          }
                         }

		}
//递归选中上一的上一级的父节点
function gofatherchecked(title){
	var frm = document.form1;
	var gowhile=false;

	 for(var k=0;k<frm.objID.length;k++) {

   if (frm.objID[k].value==title){
   	title=frm.objID[k].title;
    frm.objID[k].checked=true;
    gowhile=true;
     break;
    }
    gowhile=false;

  }
if(gowhile)
 gofatherchecked(title);


}
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="12">
                                <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="100%" background="/NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            用户管理 &gt;&gt; 角色管理 
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="13">
                                <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0" class="TABLE6">
                       
                                            <tr>
                                                <td valign="top" align="left">                                                    
                                                    <div class="txt4">
                                                        <font face="宋体">
                                                            <table id="Table1" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <td valign="top" align="left" width="180">
                                                                            <!--开始左边文章分类列表-->
                                                                            <table class="adminTable" cellspacing="0" cellpadding="3" width="180">
                                                                                <tbody>
                                                                                   
                                                                                    <tr>
                                                                                        <td class="column" align="center">
                                                                                           
                                                                                               请选择</a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="f">
                                                                                        
                                                                                        
                                                                                        <script language="javascript"> 
                                                                                         d = new dTree('d');
                                  
                                                                                        d.add(0,-1,'<input type=checkbox name=checkAll value=0  onclick="javascript:doCheckAll();">权限对象','','','','','',true);
                                                                                        <%=strJavascript%>
                                                                                         document.write(d);
                                                                                         </script>
                                                                                        
                                                                                        
                                                                                        
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                            <!--结束左边文章列表-->
                                                                        </td>
                                                                        <td valign="top" align="left">
                                                                            <table id="Table2" width="100%" style="font-size: 9pt">
                                                                    <tr>
                                                        <font face="宋体">
                                                                        <td>
                                                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                                height="100%" width="100%">
                                                                                <tr>
                                                                                    <td class="column" align="center">
                                                                                        操&nbsp;&nbsp;作</td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style2" align="left">
                                                                                        <asp:Button ID="bt_New" runat="server" Text="  新 增  " OnClick="bt_New_Click" CssClass="bt"/>
                                                                                        &nbsp;
                                                                                        <input name="" type="button" value="  修 改  " onclick="DoEdit()" id="Button1" class="bt"/>&nbsp;
                                                                                        <input name="" type="button" value="  删 除  " onclick="DoDelete()" id="Button2" class="bt"/> &nbsp;                                                                                                                                                                 
                                                                                        <input name="" type="button" value="  保存权限分配  " onclick="DoSave()" id="Button3" class="bt"/> &nbsp;
                                                                                        <input type =button name=bt onclick="window.location='RoleManageSel.aspx';" class="bt" value="  返 回  " />
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                        </font>
                                                                    </tr>
                                                            </table>
                                                                                                                                 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="role_id" AllowSorting="True"
                                                                                AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" Width="100%" ShowFooter="True"
                                                                                OnSortCommand="DataGrid1_SortCommand" 
                                                                                >
                                                                                <HeaderStyle Font-Bold="True" Font-Size="9pt" BackColor="#78ABDE"></HeaderStyle>
                                                                                <ItemStyle BackColor="#DDEEFF"></ItemStyle>
                                                                                <AlternatingItemStyle CssClass="fh" BackColor="White"></AlternatingItemStyle>
                                                                                <Columns>
                                                                                    <asp:TemplateColumn HeaderStyle-CssClass="column">
                                                                                        <HeaderStyle Width="20px"></HeaderStyle>
                                                                                        <ItemStyle Width="20px"></ItemStyle>
                                                                                        <HeaderTemplate>
                                                                                        </HeaderTemplate>
                                                                                        <ItemTemplate>
                                                                                             <%// if (this.strRoleId==DataBinder.Eval(Container.DataItem,"role_id")) %>
                                                                                            <input id="radioSelect" name="radioSelect" type="radio" <%# GetCHK((long) DataBinder.Eval(Container.DataItem, "role_id") )%> onClick="SetValue('<%# DataBinder.Eval(Container.DataItem, "role_id")%>');" value='<%# DataBinder.Eval(Container.DataItem, "role_id") %>' />
                                                                                        </ItemTemplate>
                                                                                        <FooterTemplate>
                                                                                        </FooterTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="序号" ItemStyle-Width="30px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "siteid")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="角色ID" SortExpression="role_id" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "role_id")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="角色名称" SortExpression="role_name" ItemStyle-Width="140px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <a href='RoleEdit.aspx?roleid=<%# DataBinder.Eval(Container.DataItem, "role_id") %>'
                                                                                                target="_self">
                                                                                                <%#DataBinder.Eval(Container.DataItem, "role_name")%>
                                                                                            </a>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="角色说明" SortExpression="role_remark" ItemStyle-Width="250px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "role_remark")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="添加时间" SortExpression="addtime" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "addtime")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                </Columns>
                                                                            </asp:DataGrid>
                                                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" UrlPaging="true"
                                                                                ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                                                HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                                                            </webdiyer:AspNetPager>
                                                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>每页:<asp:TextBox
                                                                                ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                                            <asp:Button ID="bt_go" runat="server" Text=" Go " OnClick="bt_go_Click" CssClass="bt" />
                                                                            <br />
                                                                            <strong>给角色赋菜单权限：<br />
                                                                            </strong>&nbsp; &nbsp; &nbsp;&nbsp; 1.点击右上角的【新增角色】则新增一个角色,新建的角色是无任何权限的;<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 2.选中角色列表中的某一角色对应的<input name="pr" type="radio" value="ON1" /><br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 3.在左边菜单对应的<input name="pr1" type="checkbox" value="ON" />打上钩;<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 4.最后点击【保存权限分配】按钮,即完成新增角色拥有的权限。<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 5.完了之后，在【用户资源管理】中，将角色赋予某一用户即完成。<br />
                                                                            <br />
                                                                            <b>查看及修改角色拥有的权限：</b><br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 1.选中角色列表中的某一角色对应的<input checked="checked" name="pr" type="radio"
                                                                                value="ON2" />，页面将刷新<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 2.刷新完后，你可以在左边权限菜单中看到对角色已拥有的权限自动打上钩了。<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 3.你可以进行去钩及打钩操作<br />
                                                                            &nbsp; &nbsp; &nbsp;&nbsp; 4.钩完后点【保存权限分配】即可完成修改工作。<br />
                                                                            &nbsp; &nbsp; &nbsp; &nbsp;<br />
                                                                            <b>权限生效：</b>
                                                                            <br />
                                                                            &nbsp; &nbsp; &nbsp; 【网站管理】 → 【基本信息设置】 → 【是否使用权限访问】 选“是”并保存。</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                                                                            <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                                                                            <input type="hidden" id="radioRole" name="radioRole" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center">
                                                                        <td colspan="2" style="height: 14px">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </font>
                                                    </div>
                                                    <br>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                            
                </td>
            </tr>
            <tr style="font-size: 9pt">
                <td align="center">
                </td>
            </tr>
            <tr style="font-size: 9pt">
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
