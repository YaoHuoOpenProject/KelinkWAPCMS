<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.visiteCount.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>ͳ�Ƹſ�</title>
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
                alert("��ʼͳ��ʱ�䲻��Ϊ�գ�");
                document.getElementById("vstarttime").focus();
                return false;
            }

         
            
            if (checkTelNum(document.getElementById("tb_vtotal1").value) == false) {
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_vtotal1").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_vtotal").value) == false) {
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_vtotal").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_startcount").value) == false) {
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_startcount").focus();
                return false;
            }
            return true;
        }
        //�ж��Ƿ���ֵ
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
                	ϵͳ���� >> ������ͳ�� >> ͳ�Ƹſ� 
                	 
                	
                  		           
 
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
                                                                    <font face="����">�������� </font>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="16%" class="f" style="width: 16%">
                                                                    <font face="����">�ܷ�����PV�� </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtotal" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_vtotal" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td width="18%" class="f">
                                                                    &nbsp;վ�����ƣ�
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                   
                                                                    <asp:TextBox ID="tb_sitename" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    ��<font face="����">������UV�� </font>
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="vtotal1" runat="server" Text="Label" Visible="False"></asp:Label><asp:TextBox
                                                                        ID="tb_vtotal1" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;վ���ַ��
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homeurl" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    ��ǰ����������
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                
                                                        <asp:TextBox ID="fonline2" runat="server"></asp:TextBox>
                                                                     
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;վ�����ƣ�
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homebanzhu" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    �ñ�ϵͳǰ��
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:Label ID="startcount" runat="server" Text="Label" Font-Bold="False" ForeColor="Black"
                                                                        Visible="False"></asp:Label>
                                                                    <asp:TextBox ID="tb_startcount" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="f">
                                                                    &nbsp;վ�����䣺
                                                                </td>
                                                                <td class="fh3" style="width: 326px">
                                                                    
                                                                    <asp:TextBox ID="tb_homeemail" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    ��ʼͳ��ʱ�䣺
                                                                </td>
                                                                <td class="fh3" style="width: 247px">
                                                                    <asp:TextBox ID="vstarttime" runat="server"></asp:TextBox>
                                                                 
                                                                    <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'vstarttime'})"
                                                                        title="ѡ������" /></td>
                                                                <td class="f" rowspan="2">
                                                                    &nbsp;��վ��飺
                                                                </td>
                                                                <td class="fh3" style="width: 326px" rowspan="2">
                                                                    
                                                                    <asp:TextBox ID="tb_homecontent" runat="server" Height="60px" Width="150px" TextMode="MultiLine"></asp:TextBox>
                                                                     <asp:Button ID="btnSave" runat="server" OnClick="LinkButton1_Click" class="bt" Text=" ������� " />
                                                                   
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" style="width: 16%">
                                                                    �ܹ�ͳ��������</td>
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
                                                            <td class="column" width="10%"> ͳ�Ʊ��� </td>
                                                        </tr>
        
                                                        <tr>
                                                            <td class="fh" width="10%"> 
                                                            <div id="chartdiv" align="center"> ���Ժ�3Dͼ�ͱ��������... </div>

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
                                                            <td class="column" width="20%">�����(PV)</td>
                                                            <td class="column" width="20%">�����ÿ�(UV)</td>
                                                            <td class="column" width="20%">���ʴ���(VV)</td>
                                                            <td class="column" width="20%">����IP(IP)</td>
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
&nbsp;&nbsp;&nbsp;&nbsp;�����(PV)�� ҳ���������Page View�����ÿ�ÿ��һ��ҳ���¼Ϊ 1 ��PV��<br />
&nbsp;&nbsp;&nbsp;&nbsp;�����ÿ�(UV)�������ÿ�����Unique Visitor����1 ������ͬ�ÿͶ�η���������վ��¼Ϊ 1 ��UV��<br />
&nbsp;&nbsp;&nbsp;&nbsp;���ʴ���(VV)���ÿͷ��ʴ�����Visit View�����ӷÿ�������վ�����չر���վ������ҳ�棬��¼Ϊ 1 �η��ʣ������ʳ��� 30 ���ӣ������Ϊ���η��ʽ�����<br />
&nbsp;&nbsp;&nbsp;&nbsp;����IP(IP)�� 1 ������ͬ��IP��ַ���ʣ���¼Ϊ 1 ��IP��ͬһ�����ƶ����ص�IP��ַ������һ���ġ�<br />
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
                    ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                </td>
            </tr-->
        </tbody>
    </table>
    </form>
</body>
</html>
