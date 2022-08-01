<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemindex.aspx.cs" Inherits="KeLin.WebSite.models.systemindex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>模板快速建站向导 </title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--       
        function DoDelete() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("Form1").submit();
            }
        }
        function DoEdit() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的模块！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "Edit";
            document.getElementById("Form1").submit();
            
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
        

        function shSearch() {
            //alert("aa");
            //var a = document.all.item("searchtable").style.display;
            if (document.all.item("formSearch").style.display == "none")
                document.all.item("formSearch").style.display = "block";
            else
                document.all.item("formSearch").style.display = "none";
        }
		//-->
function checkAll(chkAllID,thisObj) 
{ 
    var chkAll = document.getElementById(chkAllID); 
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

    </script>

<style>
<!--
        .style7
        {
            width: 422px;
        }
-->
</style>

</head>
<body style="overflow:auto;">
    <form id="form1" runat="server">
         <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
  
                <tr>
                    <td>
                        <!--<table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="1%">
                                    <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="/NetImages/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                系统资源 &gt;&gt; 模板建站向导
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="/NetImages/main_title_03.gif" width="13" height="24" /></td>
                            </tr>
                        </table>-->
                        
                                     <!--修改begin-->
<div id="title">
   <div class="tit_right"><img src="/NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="/NetImages/tit_left.gif" /></div>
   <div class="tit_center" style=" *width:96.65%; _width:97.65%;">
      <ul>
        <li><a href="../admin/SitePreview.aspx">页面综合排版</a></li>
        <li><a href="../admin/ContentTree.aspx">内容管理</a></li>
        <li><a href="../WapStyle/Style_List.aspx">皮肤CSS样式</a></li>
        <li><a href="../models/systemindex.aspx" class="check">模版向导</a></li>
        <li><a href="../admin/SitePreviewGo.aspx"  style="color:red;">↙帮助↘</a></li>
        <li><a href="../models/systemmodel.aspx">系统模版管理</a></li>
        <li><a href="../WapStyle/Style_List00.aspx"  >系统CSS样式</a></li>
      </ul>
   </div>
</div>
<!--修改end-->
                        
                        
                        
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left" style="width: 100%;">
                        <div class="txt4">
                            <font face="宋体">
                                <table id="Table1" width="100%" class="TABLE6">
                                    <tbody>
                                        
                                        <tr>
                                            <td style="word-wrap: break-word; width: 180px" valign="top" align="left">
<!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                请选择  <%if( this.ManagerLvl=="00"){ %><a href="systemmodel.aspx">分类管理</a><%} %>
                                                                              </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">

                                                                                <script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'网站模板 ');
  	                                      
  <%=strJavascript %>                                     

document.write(d);
                                                                                </script>

                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                            </td>
                                                            <td colspan="4" valign="top" align="left">
                                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                    height="100%" width="100%">
                                                                    <tr>
                                                                        <td align="left" rowspan="2"  >
  
        <table border="0" width="500">
            <tr>
                <td width="500">
                    <table align="center" bgcolor="#dff5fd" border="0" cellpadding="0" 
                        cellspacing="0">
                        <tr>
                            <td background="/NetImages/viewtop.gif" 
                                colspan="3" height="24" width="100%" align="center">
                                <span id="title1"><font color="red"><b><%=typename%></b> <%if(tositeid=="" || tositeid=="0") Response.Write(""); else Response.Write("<a href='/wapindex.aspx?siteid="+tositeid+"' target='_blank'>【弹出】</a>"); %> </font></span>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#03b1d6" width="1">
                            </td>
                            <td width="191">
                                <table align="center" bgcolor="#03b1d6" border="0" cellpadding="0" 
                                    cellspacing="1" width="183">
                                    <tr>
                                        <td bgcolor="#ffffff" class="style7">
                                            <iframe name="I1" id="I1" frameborder="no" height="450" name="I1" name="link" 
                                                src='<%if(tositeid=="" || tositeid=="0") Response.Write("tip.aspx"); else Response.Write("/wapindex.aspx?siteid="+tositeid); %>' style="width: 510px">
                                            </iframe>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td bgcolor="#03b1d6" width="1">
                                　</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <img height="6" src="/NetImages/search3_b_l.gif" width="512" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
  
    																	</td>
                                                                        <td align="left" class="column" width="398"  >
                                                                            　</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" valign ="top" class="fh" width="398" >
                                                                            <strong>第一步：选择模板！</strong>
                                                                            <br /><br />
                                                                            <p><input type="hidden" id="typeid" name="typeid" value="<%=typeid%>" />
                                                                               <input type="hidden" id="typename" name="typename" value="<%=typename%>" />
                                                                                您选择的模板是：<font color="red"><b><%=typename%></b></font>
                                                                                <%if (typename != "") Response.Write("<br/><img src=\"/UploadFiles/QR/" + tositeid + ".png\" alt=\"二维码图\"/>");%>
                                                                                
                                                                                </p>
                                                                            <p>                                                                       
                                                                                <strong>第二步：操作类型</strong></p>
                                                                                <br />
                                                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="221px">
                                                                                    <asp:ListItem Value="1" Selected="True">重写现有您的网站</asp:ListItem>
                                                                                    <asp:ListItem Value="0">追加到您现有网站</asp:ListItem>
                                                                                </asp:RadioButtonList>
                                                                            <p>
                                                                                　</p>
                                                                           
                                                                                <p>说明：<br />
                                                                                    <b>重写</b>，是指先将我的网站清空，再将您选的模板导入；<br />
                                                                                    <b>追加</b>，是指不清空我现有网站，直接导入我选择的模板。</p>
                                                                                <p>
                                                                                    <font color="red"><b>如果我是第一次建站建议用“重写”！</b></font></p>
                                                                                       验证码:<input type ="text" name="mypassword" value ="" size="6"/> <img src="/admin/CreatImage.aspx" /> <br />
                                                                                        <asp:Button ID="Button1" runat="server" Text=" 执  行 " Width="60px" OnClick="Button1_Click" CssClass="bt" OnClientClick="return confirm('确认要执行此操作吗？')"  /> (慎用)
                                                                                <p>
                                                                                    　</p>
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </font>
                                        </div>
                                    </td>
                                </tr>
                          
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                   
                        
                    </td>
                </tr>
                <tr>
                    <td align="center">
                      
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        </td>
                </tr>
          
        </table>
    </form>
</body>
</html>