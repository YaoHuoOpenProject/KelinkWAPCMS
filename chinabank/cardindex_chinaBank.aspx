<%@ Page Language="C#" AutoEventWireup="true" Codebehind="cardindex_chinaBank.aspx.cs" Inherits="KeLin.WebSite.chinabank.cardindex_chinaBank" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加删除内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

<script language="JavaScript" type="text/JavaScript">
function gourl(strurl,classid,siteid){
    document.getElementById("iframe").src = strurl ;
	
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
                                            网站管理 &gt;&gt; 充值我的网站
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
                                                                         <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="adminSeparator">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                WEB支付</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

d = new dTree('d');
d.add(0, -1, '充值我的网站');
d.add('1', '0', '支付宝在线充值[1]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
d.add('2', '1', '我要充值网站', 'javascript:gourl(\'bank_alipay.aspx?tositeid=<%=base.SiteId%>\',\'1278\',\'1000\');');
d.add('3', '1', '我的充值记录', 'javascript:gourl(\'bank_my_list01.aspx?siteid=<%=base.SiteId%>\',\'1278\',\'1000\');');

//d.add('4', '0', '北京网银在线充值[2]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
//d.add('5', '4', '我要充值网站', 'javascript:gourl(\'bank_add_modify.asp?siteid=<%=base.SiteId%>&sid=<%=base.SID %>\',\'1278\',\'1000\');');
//d.add('6', '4', '充值网站记录', 'javascript:gourl(\'bank_my_list.asp?siteid=<%=base.SiteId%>&sid=<%=base.SID %>&bankType=2\',\'1278\',\'1000\');');

document.write(d);
</script>
                                                                        
<br />此功能是我作为站长向超级管理员付费！以便得到我的空间加大或使用时间延长！
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe src="bank_alipay.aspx?tositeid=<%=base.SiteId%>" id="iframe" width="100%" height="100%" frameborder="0"
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
