<%@ Page Language="C#" AutoEventWireup="true" Codebehind="orderlist.aspx.cs" Inherits="KeLin.WebSite.shop.orderlist" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%
    Response.Buffer = true;
    Response.Expires = -1;
    Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
    Response.Expires = 0;
    Response.CacheControl = "no-cache"; 
 %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>订单内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="1800;url=orderlist.aspx" />

<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
    <script language="javascript" type="text/javascript">
		<!--    
		function DoEdit() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的项！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
           // window.location.href = "admin_modifyUserOrder.aspx?bookid=" + edtHangBiaoShis;
            GoOpenWin(edtHangBiaoShis);
            //document.getElementById("CommandType").value = "Eidt";
            //document.getElementById("form1").submit();
        }
        function GoOpenWin(id) {
            window.open("/shop/orderlistWAPMod.aspx?action=godel&siteid=<%=base.SiteId %>&classid=0&id="+id+"&sid=<%=base.SID%> %>");
        }
        function DoDelete() {
            var deleteHangBiaoShis = GetOnChecked();
            if (deleteHangBiaoShis == null || deleteHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = deleteHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("form1").submit();
            }
        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Del";
                document.getElementById("form1").submit();
            }
        }
        function DoReBack() {
            window.location.href = "guestlist.aspx?classid=" + document.getElementById("TextBox4").value;              
        }
        function DoCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要审核的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "Check";
            document.getElementById("form1").submit();            
        }
        function DoUnCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要弃审的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "UnCheck";
            document.getElementById("form1").submit();            
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid=";
        }
        function DoReback() {
            window.location.href="orderlist.aspx?classid="+document.getElementById("TextBox1").value;
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=shop&classid="+document.getElementById("TextBox1").value;  
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

function Button1_onclick() {

}
function DoOrder() {
    //window.open("/shop/orderlistWAP.aspx?siteid=<%=base.SiteId%>&classid=0&sid=<%=base.SID %>");
    window.location.href = "/shop/orderlist.aspx?siteid=<%=base.SiteId%>";

}
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
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
                                                网站管理 &gt;&gt; 商店内容管理 &gt;&gt;订单管理
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
                    <td valign="top" align="left">
                        <div class="txt4">
                            <table id="Table1" width="100%" class="TABLE6">
                                <tbody>
                                    <tr>
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column" colspan="4">
                                                       <a style="cursor: hand" onclick="DoContent()">内容管理</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoReBack()">回复管理</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoOrder()">订单管理</a>
                                                        <!--<a style="cursor: hand"
                                                            onclick="DoSmall()">小类管理</a>-->&nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4" >
                                                        订单状态：
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="">淘宝模式</asp:ListItem>
                                                                <asp:ListItem Value="0">0_等待买家付款</asp:ListItem>   
                                                                <asp:ListItem Value="11">11_买家已付款</asp:ListItem>   
                                                                <asp:ListItem Value="12">12_卖家已发货</asp:ListItem>   
                                                                <asp:ListItem Value="13">13_交易成功</asp:ListItem>   
                                                                <asp:ListItem Value="14">14_交易关闭</asp:ListItem>   
                                                                <asp:ListItem Value="15">15_退款中</asp:ListItem>   
                                                                                                                       
                                                                <asp:ListItem Value="">货到付款模式</asp:ListItem>
                                                                 <asp:ListItem Value="0">0_未确认未发货</asp:ListItem>   
                                                                 <asp:ListItem Value="4">4_已确认未发货</asp:ListItem>   
                                                                <asp:ListItem Value="1">1_已确认已发货</asp:ListItem>                                            
                                                                <asp:ListItem Value="2">2_已发货已签收</asp:ListItem>                                                          
                                                                <asp:ListItem Value="3">3_已发货未签收</asp:ListItem>                                                          
                                                                <asp:ListItem Value="-1">-1_已被客户取消</asp:ListItem>                                                                              
                                                            </asp:DropDownList>
                                                        订单号：<asp:TextBox ID="TextBox4" runat="server" Width="64px"></asp:TextBox>姓名：<asp:TextBox
                                                            ID="TextBox2" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                            电话：<asp:TextBox
                                                            ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="100px"></asp:TextBox>
                                                            商品关键字：<asp:TextBox
                                                            ID="TextBox6" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                       <br /> &nbsp;&nbsp;
                                                        时间从：<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="8"
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox1'})"
                                                            title="选择日期" />
                                                        到：<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="105px"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="选择日期" />
                                                             &nbsp;&nbsp;来自会员ID：<asp:TextBox ID="TextBox7" runat="server" Width="64px"></asp:TextBox>
                                                             来自友链ID：<asp:TextBox ID="TextBox8" runat="server" Width="64px"></asp:TextBox>
                                                        <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<input id="Button3" name="" type="button" value="重 置" onclick="window.location.href='orderlist.aspx'" class="bt" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<input id="Button7" name="" type="button" value="导出Excel" onclick="window.location='orderlist_toExcel.aspx?CommandType=toexcel';" class="bt"/>
                                                    
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4">
                                                        <input id="Button5" name="" type="button" value=" 处理订单 " onclick="DoEdit()" class="bt" />
                                                        &nbsp;&nbsp;
                                                             <input id="Button2" name="" type="button" value="弹出新窗口" onclick="window.open('orderlist.aspx?siteid=<%=base.SiteId %>')" class="bt" />
                                                    &nbsp;&nbsp;
                                                    <%if ("|00|01|".IndexOf(base.ManagerLvl) > 0)
                                                      { %>
                                                        <input id="Button4" name="" type="button" value=" 删 除 " onclick="DoDel()" class="bt"/>
                                                        &nbsp;&nbsp;
                                                        
                                                        <input id="Button1" name="" type="button" value="清空一个月前订单" onclick="window.open('orderlistWAP_del.aspx?action=goall&siteid=<%=base.SiteId %>&classid=0&sid=<%=base.SID %>')" class="bt" />
                                                    &nbsp;&nbsp;
                                                    <%} %>
                                                    <font color=red><b>订单总价:￥<%=totalMoney.ToString("f2") %></b></font>
                                                    <br /><br />
                                                    订单状态模式可以到【网站默认设置】【40】中设置货到付款模式和淘宝模式, &nbsp;&nbsp;【59】建议配置邮件接收，手机微信开启邮箱提醒插件，手机了可以收到订单了
                                                    </td>
                                                </tr>
                                            </table>                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
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
                                                    <asp:TemplateColumn HeaderText="序号" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="订单号" SortExpression="orderID" ItemStyle-Width="150px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                          
                                                          <b> <%#DataBinder.Eval(Container.DataItem, "orderID")%> </b>    
                                                           <br />
                                                         
                                                           <br />下订时间:<br />
                                                           <%#DataBinder.Eval(Container.DataItem, "orderdate")%><br />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="状态" SortExpression="state" ItemStyle-Width="150px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                          <font color="red"><%#ShowState(DataBinder.Eval(Container.DataItem, "state").ToString())%>      </font>                                                 </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="购买商品" SortExpression="shopid" ItemStyle-Width="250px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#ShowHTML(DataBinder.Eval(Container.DataItem, "productname").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                
                                                   
                                                   
                                                   
                                                    <asp:TemplateColumn HeaderText="单价" SortExpression="productjiage" ItemStyle-Width="60px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "productjiage").ToString().Replace(".0000", ".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="运费" SortExpression="book_charge" ItemStyle-Width="60px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "book_charge").ToString().Replace(".0000", ".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   <asp:TemplateColumn HeaderText="订单总价" SortExpression="productmoney" ItemStyle-Width="100px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "productmoney").ToString().Replace(".0000",".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="下订会员" SortExpression="userid" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#DataBinder.Eval(Container.DataItem, "nickname")%>(ID:<%#DataBinder.Eval(Container.DataItem,"userid") %>)
                                                                <hr />
                                                                <a href="/admin/UserModify.aspx?UserID=<%#DataBinder.Eval(Container.DataItem, "fromUserID")%>" target="_blank">推荐会员ID:<%#DataBinder.Eval(Container.DataItem, "fromUserID")%></a><br />
                                                                <hr />
                                                                <a href="/link/userlist.aspx?id=<%#DataBinder.Eval(Container.DataItem, "fromLinkID")%>" target="_blank">推荐友链ID:<%#DataBinder.Eval(Container.DataItem, "fromLinkID")%></a>
                                                           
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="联系电话" SortExpression="mobile" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#DataBinder.Eval(Container.DataItem, "mobile")%>
                                                           
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="送货地址" SortExpression="remark" ItemStyle-Width="200px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#ShowHTML(DataBinder.Eval(Container.DataItem, "remark").ToString())%>
                                                            <br />------<br /><b>店长回复:</b><%#DataBinder.Eval(Container.DataItem, "book_reply")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                   
                                                    <asp:TemplateColumn HeaderText="在线支付" SortExpression="orderdate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#ShowPayState(DataBinder.Eval(Container.DataItem, "payState").ToString(), DataBinder.Eval(Container.DataItem, "payTime").ToString(), DataBinder.Eval(Container.DataItem, "state").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="处理订单" SortExpression="orderdate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="javascript:GoOpenWin('<%#DataBinder.Eval(Container.DataItem, "id")%>');">更改价格<br />送货订单</a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                            </webdiyer:AspNetPager>
                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                            <br /><br />(30分钟自动刷新一次)
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
