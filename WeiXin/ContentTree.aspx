<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ContentTree.aspx.cs" Inherits="KeLin.WebSite.weixin.ContentTree" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>΢�Ż���Ӫ��ƽ̨</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">

<script language="JavaScript" type="text/JavaScript">
 function gourl(strurl, classid, siteid) {

     var temp;
     temp = strurl.substring(strurl.length - 4, strurl.length);
     if (temp.toLowerCase() == ".asp") {
         document.getElementById("iframe").src = "/" + strurl + "?action=webAdmin&classid=" + classid + "&siteid=" + siteid +"&sid=<%=base.SID %>";
     } else {
         document.getElementById("iframe").src = "/" + strurl + "?action=webAdmin&classid=" + classid + "&siteid=" + siteid;
     }
 }
 function gourl2(strurl, classid, siteid) {
     //window.open(strurl);
     document.getElementById("iframe").src = strurl;
 }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                   
                    
<!--�޸�begin-->
<div id="title">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="ContentTree.aspx" class="check">΢�Ż���Ӫ��</a></li>
        <li><a href="app.aspx"  >��������APP</a></li>
   
      </ul>
   </div>
</div>
<!--�޸�end-->
                    
                    
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
                                                                             &nbsp;&nbsp; <!--  <img src="/netimages/shdot.gif" /> ��ѡ����� --></td>
                                                                        </tr>
                                                                        <tr>
                           <td class="f">

<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'ƽ̨����');

d.add('1', '0', '΢�Žӿ�����', 'javascript:gourl(\'weixin/Config.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('2', '0', '������Ϣ����', 'javascript:gourl(\'weixin/msglist.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('3', '0', '�յ���Ϣ����', 'javascript:gourl(\'weixin/MsgReceivelist.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('4', '0', '�Զ���˵�', 'javascript:gourl(\'weixin/addModMenu.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('5', '0', 'LBS����λ�ûظ�', 'javascript:gourl(\'weixin/mapconfig.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('6', '0', '�û������б�', 'javascript:gourl(\'admin/UserManage.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('7', '0', '�����ʺŶ�ά��', 'javascript:gourl(\'weixin/myQR.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('8', '0', '��¼΢�Ź���', 'javascript:gourl2(\'http://mp.weixin.qq.com/\',\'0\',\'<%=base.SiteId %>\');');
d.add('9', '0', '����˵��', 'javascript:gourl(\'weixin/help.aspx\',\'0\',\'<%=base.SiteId %>\');');


d.add('10', '0', '΢Ӫ�����', 'javascript:alert(\' \');');
d.add('11', '10', 'ϵͳָ��', 'javascript:gourl(\'weixin/orderConfig.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('12', '10', 'VIP��Ա��', 'javascript:gourl(\'weixin/vipconfig.aspx\',\'0\',\'<%=base.SiteId %>\');');

<%if(base.ManagerLvl=="00"){ %>

d.add('13', '0', '��������Ա��', '');
d.add('14', '13', '������Ϣ����', 'javascript:gourl(\'weixin/msglist00.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('15', '13', '������Ϣ����', 'javascript:gourl(\'weixin/msgReceivelist00.aspx\',\'0\',\'<%=base.SiteId %>\');');


<%} %>
//d.add('12', '10', '��ת��', 'javascript:alert(\'������\');');
//d.add('13', '10', '�ιο�', 'javascript:alert(\'������\');');
//d.add('14', '10', '�Ż݄�', 'javascript:alert(\'������\');');
//d.add('15', '10', '3Dչʾ', 'javascript:alert(\'������\');');
//d.add('16', '10', '����', 'javascript:alert(\'������\');');

document.write(d);
</script>
                                                                      
                                                                        
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--������������б�-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe name ="ir" src="Config.aspx" id="iframe" width="100%" height="100%" frameborder="0"
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
