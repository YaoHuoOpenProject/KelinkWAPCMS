<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.visiteCount.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>统计概况</title>
    <link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
   <script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js" type="text/JavaScript"></script>


    <script language="JavaScript" src="JSClass/FusionCharts.js"></script>

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

         
            
            if (checkTelNum(document.getElementById("tb_vtotal1").value) == false) {
                alert("请在此输入数值！");
                document.getElementById("tb_vtotal1").focus();
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
<body background="/NetImages/dw.gif" >

<form id="form1" runat="server">
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
                	系统管理 >> 访问量统计 >> 统计概况 
                	 
                	
                  		           
 
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
                                    <table cellspacing="7" width="100%" id="table1">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%" id="table2">
                                                        <tbody>
                                                            <tr>
                                                                <td class="column" colspan="4">
                                                                    <font face="宋体">总体数据 </font>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16%" class="f" style="width: 16%">
                                                                    <font face="宋体">总访问量PV： </font>
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
                                                                    总<font face="宋体">访问量UV： </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtotal1" runat="server" Text="Label" Visible="False"></asp:Label><asp:TextBox
                                                                        ID="tb_vtotal1" runat="server"></asp:TextBox>
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
                                                                    当前在线人数：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                
                                                        <asp:TextBox ID="fonline2" runat="server"></asp:TextBox>
                                                                     
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
                                                                    用本系统前：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="startcount" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"
                                                                        Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_startcount" runat="server"></asp:TextBox>
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
                                                                    开始统计时间：
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:TextBox ID="vstarttime" runat="server"></asp:TextBox>
                                                                 
                                                                    <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'vstarttime'})"
                                                                        title="选择日期" /></td>
                                                                <td class="f" rowspan="2">
                                                                    &nbsp;网站简介：
                                                                </td>
                                                                <td class="fh3" style="width: 326px" rowspan="2">
                                                                    
                                                                    <asp:TextBox ID="tb_homecontent" runat="server" Height="60px" Width="150px" TextMode="MultiLine"></asp:TextBox>
                                                                     <asp:Button ID="btnSave" runat="server" OnClick="LinkButton1_Click" class="bt" Text=" 保存更新 " />
                                                                   
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    总共统计天数：</td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vdatecount" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"></asp:Label>
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
<table cellspacing="7" width="100%" id="table3">
                                        <tbody>
                                            <tr>
                                                <td>
                                                   
      
      <table id="Table4" class="tableBorder" cellspacing="1" border="0" width="100%">
                                                        <tr>
                                                            <td class="column" width="10%"> 统计报表 </td>
                                                        </tr>
        
                                                        <tr>
                                                            <td class="fh" width="10%"> 
                                                            <div id="chartdiv" align="center"> 请稍后，3D图型报表加载中... </div>

                                                             <script type="text/javascript">
                                                                 var chart = new FusionCharts("Charts/FCF_MSColumn3D.swf", "ChartId", "700", "350");
                                                                 chart.setDataXML("<%=this.xmldata %>");
                                                                 chart.render("chartdiv");
                                                             </script>
                                                             </td>
                                                        </tr>
                                                    </table>
      
 </td>
 </tr>
 </table>
                                    <table cellspacing="7" width="100%" id="table14">
                                        <tbody>
                                            <tr>
                                                <td>
                                                   
      
      <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" width="100%">
                                                        <tr>
                                                            <td class="column" width="10%">  </td>
                                                            <td class="column" width="20%">浏览量(PV)</td>
                                                            <td class="column" width="20%">独立访客(UV)</td>
                                                            <td class="column" width="20%">访问次数(VV)</td>
                                                            <td class="column" width="20%">独立IP(IP)</td>
                                                        </tr>
         <%for (int i = 0; (listVo != null && i < listVo.Count); i++)
           {
               string cl = "f";
               if (i % 2 == 0)
               {
                   cl = "fh";

               }
               Response.Write("<tr>");
               Response.Write("<td class=\"" + cl + "\"> "+listVo[i].ReportName+"</td>");
               Response.Write("<td class=\"" + cl + "\"> " + listVo[i].PV + "</td>");
               Response.Write("<td class=\"" + cl + "\"> " + listVo[i].UV + "</td>");
               Response.Write("<td class=\"" + cl + "\"> " + listVo[i].VV + "</td>");
               Response.Write("<td class=\"" + cl + "\"> " + listVo[i].IP + "</td>");
               Response.Write("</tr>");

           }
               %> 
                                                        
                                                    		                                             
                                                        
                           
                                                    </table>
      
 </td>
 </tr>
 </table>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;浏览量(PV)： 页面浏览量（Page View），访客每打开一次页面记录为 1 个PV。<br />
&nbsp;&nbsp;&nbsp;&nbsp;独立访客(UV)：独立访客数（Unique Visitor），1 天内相同访客多次访问您的网站记录为 1 个UV。<br />
&nbsp;&nbsp;&nbsp;&nbsp;访问次数(VV)：访客访问次数（Visit View），从访客来到网站到最终关闭网站的所有页面，记录为 1 次访问；若访问超过 30 分钟，则计算为本次访问结束。<br />
&nbsp;&nbsp;&nbsp;&nbsp;独立IP(IP)： 1 天内相同的IP地址访问，记录为 1 个IP。同一地区移动网关的IP地址可能是一样的。<br />
&nbsp;&nbsp;<br />
                    
                                    <!---end-->
                                    
                                    
               
          
    

                                    
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <!--tr>
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                </td>
            </tr-->
        </tbody>
    </table>
    </form>
</body>
</html>
