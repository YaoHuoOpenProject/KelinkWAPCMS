<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemindex.aspx.cs" Inherits="KeLin.WebSite.visiteCount.systemindex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��ϵͳͳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="JSClass/FusionCharts.js"></script>
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
                                                        ϵͳ���� >> ������ͳ�� >> ��ϵͳ��������ͳ��
                                                        
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
                        
                         <div id="chartdiv" align="center"><img  src="/NetImages/load.gif" align="absmiddle">&nbsp;&nbsp; ���Ժ�3Dͼ�ͱ��������... </div>

                                                             <script type="text/javascript">
                                                                 var chart = new FusionCharts("Charts/Pie3D.swf", "ChartId", "100%", "350");
                                                                 //chart.setDataURL("Charts/Pie3D2.xml");
                                                                 chart.setDataXML("<chart caption='��ϵͳ������ͳ��<%=this.GetMyDomain()  %>' palette='2' animation='1' formatNumberScale='0' numberPrefix='' pieSliceDepth='30' startingAngle='125'><set label='�ܷ�����(PV)' value='<%=this.vtotal_s %>' isSliced='0' /><set label='�ܷ�����(UV)' value='<%=this.vtotal1_s %>' isSliced='0' /><styles><definition><style type='font' name='CaptionFont' size='15' color='666666' /><style type='font' name='SubCaptionFont' bold='0' /></definition><application><apply toObject='caption' styles='CaptionFont' /><apply toObject='SubCaption' styles='SubCaptionFont' /></application></styles></chart>");
                                                                 chart.render("chartdiv");
                                                             </script>
                                                                       
                        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td valign="top" style="width: 100%;">
                                        <table cellspacing="7" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="column" colspan="2">
                                                                        <font face="����">��ϵͳͳ��(������վ����֮��) </font>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="16%" class="f" style="width: 16%">
                                                                        <font face="����">�ܷ�����(PV)�� </font>
                                                                    </td>
                                                                    <td width="31%" class="fh3">
                                                                        <asp:Label ID="vtotal" runat="server" Text="Label"></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="16%" class="f" style="width: 16%">
                                                                        <font face="����">�ܷ�����(UV)�� </font>
                                                                    </td>
                                                                    <td width="31%" class="fh3">
                                                                        <asp:Label ID="vtotal1" runat="server" Text="Label"></asp:Label></td>
                                                                </tr>
                                                                
                                                                
                                                        </table>
                                                    </td>
                                                </tr>
                                        </table>
                                        <!---end-->
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2" align="center">
                                                    <br />                                                    
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                            
                                            
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                    </td>
                </tr>
                <tr>
                                                <td align="right">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                                                </td>
                                            </tr>                
            </tbody>
        </table>
    </form>
</body>
</html>
