<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="KeLin.WebSite.visiteCount.Modify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>统计概况</title>
    <link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
    <script language="javascript" type="text/javascript">
        // <!CDATA[

        function bt_return_onclick() {
            history.go(-1)
        }
        function Save() {
            if (CheckSave()) {
                form1.submit();
            }
        }
        function CheckSave() {
            if (document.getElementById("vstarttime").value == "") {
                alert("开始统计时间不能为空！");
                document.getElementById("vstarttime").focus();
                return false;
            }

            if (checkTelNum(document.getElementById("tb_vnowyear").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vnowyear").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vnowmonth").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vnowmonth").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vpremonth").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vpremonth").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vweek").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vweek").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vtoday").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vtoday").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vyestaday").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vyestaday").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vtotal").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vtotal").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_startcount").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_startcount").focus();
                return false;
            }
            return true;
        }
        //判断是否数值
        function checkTelNum(content) {
            if (!oNum) return false;
            var strP = /^\d+(\.\d+)?$/;
            if (!strP.test(oNum)) return false;
            try {
                if (parseFloat(oNum) != oNum) return false;
            }
            catch (ex) {
                return false;
            }
            return true;
        }
        // ]]>
    </script>
</head>
<body background="/NetImages/dw.gif">
    
<table width="100%"  border="0" cellpadding="0" cellspacing="0" >
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                <td width="98%" height="24" valign="middle">
                	系统管理 >> 统计信息 >> 统计概况 
                	 
                	
                  		           
 
                  		 </td>
                </tr>
              </table></td>
              <td width="13"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6" >
            <tr>
                                <td valign="top" style="width: 100%;">
                                    <table cellspacing="7" width="100%">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td class="column" colspan="4">
                                                                <form name="s" action ="modify.aspx" method ="get" /> 
                                                                    站长用户名：<input type ="text" name="tousername" value="<%=this.toUsername %>" /> <input type="submit" name ="go" value =" 查 询 " class="bt" />
                                                                </form>
                                                                </td>
                                                            </tr>
                                                            <form id="form1" runat="server">
                                                            <tr>
                                                                <td width="16%" class="f" style="width: 16%">
                                                                    <font face="宋体">总访问量： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtotal" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vtotal" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td width="18%" class="f">
                                                                    &nbsp;站点名称：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                   
                                                                    <asp:TextBox ID="tb_sitename" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    <font face="宋体">今年访问量： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vnowyear" runat="server" Text="Label" Visible="False"></asp:Label><asp:TextBox
                                                                        ID="tb_vnowyear" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;站点地址：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homeurl" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    <font face="宋体">今月访问量：</font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vnowmonth" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vnowmonth" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;站长名称：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homebanzhu" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    <font face="宋体">上月访问量： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vpremonth" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vpremonth" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;站长邮箱：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homeemail" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    <font face="宋体">今周访问量： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vweek" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vweek" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;网站简介：
                                                                </td>
                                                                <td class="fh3" style="width: 326px" rowspan="4">
                                                                    
                                                                    <asp:TextBox ID="tb_homecontent" runat="server" Height="100px" Width="200px"></asp:TextBox>
                                                                   
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    <font face="宋体">今日访问量： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtoday" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vtoday" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    昨日访问量：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vyestaday" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vyestaday" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    当前在线人数：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="fonline" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"></asp:Label>
                                                                </td>
                                                                <td class="f">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    用本系统前：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="startcount" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"
                                                                        Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_startcount" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    用本系统后：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtotal2" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"></asp:Label>
                                                                </td>
                                                                <td class="f">
                                                                    IP总访问量：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    <asp:Label ID="vtotal1" runat="server" Font-Bold="False" ForeColor="Black" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    开始统计时间：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:TextBox ID="vstarttime" runat="server"></asp:TextBox>
                                                                    <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="setday(this,document.all.vstarttime)"
                                                                        title="选择日期" />
                                                                    <td class="f">
                                                                       &nbsp;
                                                                    </td>
                                                                    <td class="fh3" style="width: 326px">
                                                                        &nbsp;
                                                                    </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    总共统计天数：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vdatecount" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"></asp:Label>
                                                                </td>
                                                                <td class="f">
                                                                    平均日访量：
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    <asp:Label ID="vavercount" runat="server" Font-Bold="False" ForeColor="Black" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    预计今日访问量：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vguesstoday" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"></asp:Label>
                                                                </td>
                                                                <td class="f">
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                 <asp:Button ID="btnSave" runat="server" OnClick="LinkButton1_Click" class="bt" Text=" 保存更新 " />
                                                             
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="4" class="fh3">
                                                                   
                                                             </td>
                                                            </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                    </table>
                                    <!---end-->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
