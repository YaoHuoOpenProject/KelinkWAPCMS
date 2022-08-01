<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemmodel.aspx.cs" Inherits="KeLin.WebSite.models.systemmodel" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            
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
                                                        系统资源 >> 网站模板 >> 编辑网站模板
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="1%">
                                            <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                                    </tr>
                                </table>-->
                                
                                <!--修改begin-->
<div id="title">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center" style="*width:96.65%; _width:97.65%;">
      <ul>
        <li><a href="../admin/SitePreview.aspx">页面综合排版</a></li>
        <li><a href="../admin/ContentTree.aspx">内容管理</a></li>
        <li><a href="../WapStyle/Style_List.aspx">皮肤CSS样式</a></li>
        <li><a href="../models/systemindex.aspx">模版向导</a></li>
        <li><a href="../admin/SitePreviewGo.aspx"  style="color:red;">↙帮助↘</a></li>
        <li><a href="../models/systemmodel.aspx"  class="check">系统模版管理</a></li>
        <li><a href="../WapStyle/Style_List00.aspx"  >系统CSS样式</a></li>
      </ul>
   </div>
</div>
<!--修改end-->
                                
                                
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
                                                    <td class="column" colspan="2" style="width: 200px">
                                                        模板名称_网站ID</td>
                                                    <td class="column" colspan="1" style="width: 70px">
                                                        自定序号
                                                    </td>
                                                    <td class="column" colspan="1" style="width: 200px">
                                                        编辑
                                                    </td>
                                                </tr>
                                                <tr style="">
                                                    <td class="fh" colspan="2" style="width: 283px">
                                                        <asp:TextBox runat="server" ID="tb_typename" BorderColor="#FF9900" BorderStyle="solid" BorderWidth="1px" Width="250px" Height="20" style=" margin:5px;"></asp:TextBox></td>
                                                    <td class="fh" style="width: 70px">
                                                        <asp:TextBox ID="tb_rank" runat="server" BorderColor="#FF9900" BorderStyle="solid" BorderWidth="1px" Height="20"></asp:TextBox></td>
                                                    <td class="fh" style="width: 182px">
                                                        <asp:Button ID="bt_save" Width="60" Text=' 创 建 ' runat="server" OnClick="bt_save_Click" CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp; &nbsp;
                                                        <asp:Button ID="bt_return" Width="60" runat="server" Text=" 返 回 " OnClick="bt_return_Click" CssClass="bt"/></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="typeid"
                                                OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand"
                                                OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand"
                                                OnUpdateCommand="DataList1_UpdateCommand">
                                                <HeaderTemplate>
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" width="100%">
                                                        <tr>
                                                            <td class="column" width="40px">
                                                                序号</td>
                                                            <td class="column" width="250px">
                                                                模板名称_网站ID</td>
                                                            <td class="column" width="100px">
                                                                创建人</td>
                                                            <td class="column" width="150px">
                                                                创建时间</td>
                                                            <td class="column" width="80px">
                                                                自定序号</td>
                                                            <td class="column" width="130px" nowrap>
                                                                编辑</td>
                                                        </tr>
                                                </HeaderTemplate>
                                                <FooterTemplate>
                                                    <tr>
                                                        <td class="column">
                                                        </td>
                                                        <td class="column">
                                                        </td>
                                                        <td class="column">
                                                        </td>
                                                        <td class="column">
                                                        </td>
                                                        <td class="column">
                                                        </td>
                                                        <td class="column">
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="f">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="f">
                                                            <a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "typeid") %>"
                                                                target="_self">
                                                                <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                            </a>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='编辑' CssClass="bt"></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除' CssClass="bt" OnClientClick="return confirm('确认要执行此操作吗？')" ></asp:Button>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="fh">
                                                            <a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "typeid") %>"
                                                                target="_self">
                                                                <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                            </a>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='编辑' CssClass="bt"></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除' CssClass="bt" OnClientClick="return confirm('确认要执行此操作吗？')" ></asp:Button>
                                                        </td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                                <EditItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="fh">
                                                            <asp:TextBox ID="txttypename" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "typename") %>'>
                                                            </asp:TextBox></td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="fh">
                                                            <asp:TextBox ID="txtrank" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "rank") %>'
                                                                MaxLength="4">
                                                            </asp:TextBox></td>
                                                        <td class="fh">
                                                            <asp:Button ID="UpdateRank" Text='更新' runat="server" CommandName="Update" Width="60" CssClass="bt">
                                                            </asp:Button>
                                                            <asp:Button ID="CancelRank" Text='取消' runat="server" CommandName="Cancel" Width="60" CssClass="bt">
                                                            </asp:Button></td>
                                                    </tr>
                                                </EditItemTemplate>
                                            </asp:DataList>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="15" OnPageChanged="AspNetPager1_PageChanged"
                                                PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="height: 16px">
                    <br />
                        <b><font color=red>说明:网站模板就是指将某个站设为网站模板。当自定义序号为1时，新注册的网站，将会被导入此网站模板！</font><br />
                        网站模板要求：<br />1.程序只复制二级栏目内的关系，建议只建一级栏目；
                        <br />2.写UBB链接时尽量用通用的，如siteid=xx要变成siteid=[siteid]，classid尽量用0表示所有；
                        <br />3.程序只复制文章模块内容，建议作为模板网站只用 文章列表插件 + 普通栏目 完成。
                        <br />4.既然是网站模板，原则要求是越简单越好。
                        </b>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 18px">
                        页面执行时间：<%=loadpagetime %>
                        &nbsp;毫秒！
                    </td>
                </tr>
        </table>
    </form>
</body>
</html>
