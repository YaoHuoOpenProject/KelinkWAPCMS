<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemlist.aspx.cs" Inherits="KeLin.WebSite.SMS.systemlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>短信发送设置</title>
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css" />
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
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
                document.getElementById("form1").submit();
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
        function checkAll(chkAllID, thisObj) {
            var chkAll = document.getElementById(chkAllID);
            var chks = document.getElementsByTagName("input");
            var chkNo = 0;
            var selectNo = 0;
            for (var i = 0; i < chks.length; i++) {
                if (chks[i].type == "checkbox") {
                    //全选触发事件    
                    if (chkAll == thisObj) {
                        chks[i].checked = thisObj.checked;
                    }
                    //非全选触发 
                    else {
                        if (chks[i].checked && chks[i].id != chkAllID)
                            selectNo++;
                    }
                    if (chks[i].id != chkAllID) {
                        chkNo++;
                    }
                }
            }
            if (chkAll != thisObj) {
                chkAll.checked = chkNo == selectNo;
            }
        }
        function checkSelectNo(chkAllID) {
            var chks = document.getElementsByTagName("input");
            var selectNo = 0;
            for (var i = 0; i < chks.length; i++) {
                if (chks[i].type == "checkbox") {
                    if (chks[i].id != chkAllID && chks[i].checked) {
                        selectNo++;
                    }
                }
            }
            return selectNo;
        }

        //每个节点的单击事件
        //键值 和 类型  1 表示 业务分类 2：表示模板分类 3：表示模板  0 表示根节点
        function selNote(TYPE) {
            document.getElementById("iframe").src = "List.aspx?typeid=" + TYPE;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
       <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="12">
                                <img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="100%" background="../NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="../NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            网站管理 &gt;&gt; 短信发送
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="13">
                                <img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="100%" colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                        <tr>
                            <td>
                                
                                            <div class="txt4">
                                                <table id="Table1" width="100%">
                                                    <tr>
                          
            <td colspan="4" valign="top" align="left">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                    <tr>
                        <td height="24">
                            <table width="100%" border="0" background="/NetImages/dw.gif">
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    
                                     <table id="Table2" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                    height="100%" width="100%">
                                                    <tr>
                                                        <td class="column" colspan="4" align="left">
                                                            &nbsp;&nbsp;操作
                                                            <!--
                                                            <a style="cursor: hand"
                                                                onclick="DoSmall()">小类管理</a>&nbsp;&nbsp;
                                                                -->
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            <asp:DropDownList ID="StateSMS" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">发送状态</asp:ListItem>
                                                                        <asp:ListItem Value="0">0_未发送</asp:ListItem>
                                                                        <asp:ListItem Value="1">1_已发送</asp:ListItem>                                                                        
                                                                 </asp:DropDownList>
                                                                手机号码：
                                                                <asp:TextBox runat="server" ID="typeid" Width="100px"></asp:TextBox>&nbsp;
                                                                短信内容：
                                                                <asp:TextBox runat="server" ID="txtKeyword" Width="100px"></asp:TextBox>&nbsp;
                                                                
                                                                <asp:DropDownList ID="QR_state" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">二维码校验状态</asp:ListItem>
                                                                        <asp:ListItem Value="0">0_未校验</asp:ListItem>
                                                                        <asp:ListItem Value="1">1_已校验</asp:ListItem>                                                                        
                                                                 </asp:DropDownList>
                                                                  任务ID：
                                                                <asp:TextBox runat="server" ID="actionType" Width="100px"></asp:TextBox>&nbsp;
                                                                
                                                                <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click" CssClass="bt">
                                                                </asp:Button>
                                                                
                                                                 <input type="button" name="aaa" value =" 重 置 " onclick ="window.location.href='systemlist.aspx';" class="bt"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                        <input name="" type="button" value=" 新 增 " onclick="window.location='systemdetails.aspx';"   Class="bt"/>&nbsp;
                                                        <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" Class="bt"/>
                                                                 </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" align="left">
                                                        </td>
                                                    </tr>
                                                </table>
                                    
                                      
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                                <td>
                                                    <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True"
                                                    AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" ShowFooter="True"
                                                    Width="100%" OnSortCommand="DataGrid1_SortCommand">
                                                    <HeaderStyle Font-Bold="True" Font-Size="9pt" BackColor="#78ABDE"></HeaderStyle>
                                                    <ItemStyle BackColor="#DDEEFF"></ItemStyle>
                                                    <AlternatingItemStyle CssClass="fh" BackColor="White"></AlternatingItemStyle>
                                                    <Columns>
                                                        <asp:TemplateColumn HeaderStyle-CssClass="column">
                                                            <HeaderStyle Width="20px"></HeaderStyle>
                                                            <ItemStyle Width="20px"></ItemStyle>
                                                            <HeaderTemplate>
                                                                <input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" />
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                    onclick="checkAll('chkAll',this);" />
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                            </FooterTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="ID" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            <%# DataBinder.Eval(Container.DataItem, "id") %>
                                                               <!-- <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>-->
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                             <%#DataBinder.Eval(Container.DataItem, "siteid")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="任务ID" SortExpression="actionType" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                             <%#DataBinder.Eval(Container.DataItem, "actionType")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="手机号码" SortExpression="sms_mobile" ItemStyle-Width="50px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                
                                                                    <%#DataBinder.Eval(Container.DataItem, "sms_mobile")%>
                                                               
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="短信内容" SortExpression="sms_content" ItemStyle-Width="120px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <textarea name="c" rows ="5" style ="width:120px"><%#DataBinder.Eval(Container.DataItem, "sms_content")%></textarea>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="彩信图片" SortExpression="QR_img" ItemStyle-Width="100px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#GetShowPic(DataBinder.Eval(Container.DataItem, "QR_img").ToString())%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="发送状态" SortExpression="state" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "state")%>
                                                                <br />
                                                                <br />
                                                                 <%#DataBinder.Eval(Container.DataItem, "sendtime")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="校验状态" SortExpression="QR_check_state" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "QR_check_state")%>
                                                                <br />
                                                                <br />
                                                                <%#DataBinder.Eval(Container.DataItem, "QR_check_time")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        
                                                        
                                                        <asp:TemplateColumn HeaderText="操作时间" SortExpression="book_date" 
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                UserID:<%#DataBinder.Eval(Container.DataItem, "userid")%><br />
                                                                <br />
                                                                <%#DataBinder.Eval(Container.DataItem, "addtime")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                </asp:DataGrid>
                                                <br /><br />
                                                   <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" TextBeforePageIndexBox="Go To Page: "
                                                    HorizontalAlign="left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true"
                                                    PageButtonCount="5" ShowBoxThreshold="5" ShowInputBox="Never">
                                                </webdiyer:AspNetPager>
                                                转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                
                目前此功能在商店处理订单时可以发短信给购买者，其它应用需要发短信的请写入此表即可。
           <font color=red>
                    <br /><b>接口说明：</b> 此表[sendSMS]是存放所有用于发送短信内容的记录，需要短信发送端口将它取得并发送出去。
                    <br />方法一：按第三方短信发送端口接口进行读取本表数据，并发送到第三方的短信端口上，实现发送。
                    <br />方法二：用柯林短信猫(手机+SIM卡)+软件进行读取并发送。
                    <br />(1)柯林短信猫安卓版软件（最新发布）<a href="http://sms.kelink.com/appsms/sms.apk">点击下载免费使用</a><br />
                    
<table border="0" width="65%" id="table3">
	<tr>
		<td width="281"><img src="http://sms.kelink.com/appsms/sms2.png" alt="图" />　</td>
		<td valign="top">
		 输入服务端的短信地址录入：
                    <br /><%=base.http_start  %>sms/getMobileAndroid.aspx?siteid=<%=base.SiteId  %>&chartset=UTF-8&checkcode=校验码(校验码为自己定义字符，防止别人知道地址进行非法读取。)
                    <br />校验码配置在【站长管理】→【基本信息设置】→【网站默认配置】→第[32]属性
                    
		　</td>
	</tr>
</table>
                    
                  
                   
                    <br />----------<br />
                    (2)柯林电脑客户端软件（已淘汰）
                    <br /><a href="http://www.kelink.com/images/sms2.gif" target=_blank>查看软件图(右边配置)</a>，其中取手机号码和短信内容的URL地址为：
                    <br /><%=base.http_start  %>sms/getMobile.aspx?siteid=<%=base.SiteId  %>&codes=utf-8&checkcode=校验码(校验码为自己定义字符，防止别人知道地址进行非法读取。)
                    <br />校验码配置在【站长管理】→【基本信息设置】→【网站默认配置】→第[32]属性
                    
                    
           </font>                                    
            </td>
        </tr>
    </table>
    </div> </td> </tr> </table> </td> </tr>
    <tr align="center">
        <td style="height: 14px">
            <span class="txt4">
            </span>
        </td>
    </tr>
    <tr>
        <td class="bg">
        </td>
    </tr>
    <tr>
        <td>
            <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
            <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
        </td>
    </tr>
    </table>
    </form>
</body>
</html>
