<%@ Page Language="C#" AutoEventWireup="true" Codebehind="SiteBaseTree.aspx.cs" Inherits="KeLin.WebSite.admin.SiteBaseTree" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>���ɾ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

<script language="JavaScript" type="text/JavaScript">
function gourl(strurl,classid,siteid){
    document.getElementById("iframe").src = strurl + '?siteid=<%=base.SiteId%>&sid=<%=base.SID %>';
	
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
                                            ��վ���� &gt;&gt; ��վ������Ϣ����
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
                                                        <td style="word-wrap: break-word; width: 180px; height: 520px;" valign="top" align="left">
                                                         <!--div id="Div1" style="z-index: 1; left: 3px; visibility: inherit; overflow: auto;
                                                                width: 180px; position: absolute; top: 31px; height: 520px"-->
                                                                         <!--��ʼ������·����б�-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="adminSeparator">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                ��ѡ��</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

d = new dTree('d');
d.add(0, -1, '��վ����');
d.add('1', '0', '��վ�������', 'javascript:gourl(\'/admin/applicationadmin.aspx\',\'1278\',\'1000\');');
d.add('2', '0', '��վĬ������', 'javascript:gourl(\'/admin/sitesetdefault.aspx\',\'1278\',\'1000\');');
d.add('3', '0', '������Ϣ����', 'javascript:gourl(\'/admin/basesitemodifywmlInfo.aspx\',\'1278\',\'1000\');');
d.add('4', '0', '�����������', 'javascript:gourl(\'/bbs/toDefine.aspx\',\'1278\',\'1000\');');
d.add('5', '0', '��վע�Ὺ������', 'javascript:gourl(\'/bbs/ModifySMS_close.aspx\',\'1278\',\'1000\');');
d.add('6', '0', '��ͨ����ע������', 'javascript:gourl(\'/bbs/ModifySMS.aspx\',\'1278\',\'1000\');');
d.add('7', '0', 'ע�����������', 'javascript:gourl(\'/bbs/UserRegCode.aspx\',\'1278\',\'1000\');');
d.add('8', '0', '��վ����������', 'javascript:gourl(\'/bbs/ModifyDomain.aspx\',\'1278\',\'1000\');');
d.add('9', '0', '��ɫȨ�޷�������', 'javascript:gourl(\'/bbs/ModifyRight.aspx\',\'1278\',\'1000\');');
d.add('10', '0', '���»�Ա��ݹ���', 'javascript:gourl(\'/bbs/ModifyAllSid.aspx\',\'1278\',\'1000\');');
d.add('11', '0', '��ԱUBB��������', 'javascript:gourl(\'/bbs/ModifyAllUBB.aspx\',\'1278\',\'1000\');');
d.add('12', '0', '�������Ӳ�������', 'javascript:gourl(\'/bbs/ModifyDownLink.aspx\',\'1278\',\'1000\');');
d.add('13', '0', '��վ��Դ��������', 'javascript:gourl(\'/admin/siteshare.aspx\',\'1278\',\'1000\');');
d.add('14', '0', '*���־����������', 'javascript:gourl(\'/bbs/toMoneylvl.aspx\',\'1278\',\'1000\');');
d.add('15', '0', '*����ͷ�εȼ�����', 'javascript:gourl(\'/bbs/toLvlMedal.aspx\',\'1278\',\'1000\');');
d.add('16', '0', '*����ʱ��ͼƬ����', 'javascript:gourl(\'/bbs/toLvlFace.aspx\',\'1278\',\'1000\');');
d.add('17', '0', '*�Զ�����ѫ������', 'javascript:gourl(\'/bbs/toLVLXingZhang.aspx\',\'1278\',\'1000\');');

d.add('18', '0', '*�ֶ�����ѫ������', 'javascript:gourl(\'/bbs/toMedal.aspx\',\'1278\',\'1000\');');
d.add('19', '0', '*���û�Ա�������', 'javascript:gourl(\'/bbs/smalltypelist.aspx\',\'1278\',\'1000\');');
d.add('20', '0', '��վCSS��ʽ����', 'javascript:gourl(\'/WapStyle/Style_List.aspx\',\'1278\',\'1000\');');
d.add('21', '0', '��վ�������', 'javascript:gourl(\'/admin/applicationadmin.aspx\',\'1278\',\'1000\');');
d.add('22', '0', '�������ɶ�ά��', 'javascript:gourl(\'/admin/modifyQR.aspx\',\'1278\',\'1000\');');
d.add('23', '0', '����ƻ����׿APP', 'javascript:gourl(\'/admin/MakeApp.aspx\',\'1278\',\'1000\');');
d.add('24', '0', '��ͨ������QQ�ʺŵ�¼', 'javascript:gourl(\'/OAuth/QQ/OAuth_help.htm\',\'1278\',\'1000\');');

document.write(d);
</script>
<br />
<font color=red><b>ע�⣺������Ϣ��Ҫ���µ�¼�Ż���Ч��</b></font>
                                                                        
                                                                        
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--������������б�-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe src="/admin/tip.htm" id="iframe" width="100%" height="100%" frameborder="0"
                                                                scrolling="yes"></iframe>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="center">
                <td style="height: 14px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                </td>
            </tr>
            <tr>
                <td class="bg">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
