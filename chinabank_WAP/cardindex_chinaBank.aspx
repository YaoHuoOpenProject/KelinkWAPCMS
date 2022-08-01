<%@ Page Language="C#" AutoEventWireup="true" Codebehind="cardindex_chinaBank.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.cardindex_chinaBank" %>
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
                                            网站管理 &gt;&gt; 会员充值设置
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
                                                                                WAP支付配置</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

d = new dTree('d');
d.add(0, -1, '会员向我充值');
d.add('1', '0', '北京易宝支付接口[0]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
d.add('2', '1', '配置收费接口', 'javascript:gourl(\'modifyconfig.aspx\',\'1278\',\'1000\');');
d.add('3', '1', '会员充值记录', 'javascript:gourl(\'bank_my_web_list01.aspx?siteid=<%=base.SiteId%>&banktype=0\',\'1278\',\'1000\');');

d.add('4', '0', '手机支付宝/双功能收款[1]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
d.add('5', '4', '配置收费接口', 'javascript:gourl(\'modifyconfig_alipay.aspx\',\'1278\',\'1000\');');
d.add('6', '4', '会员充值记录', 'javascript:gourl(\'bank_my_web_list01.aspx?siteid=<%=base.SiteId%>&banktype=1\',\'1278\',\'1000\');');

//d.add('7', '0', '支付宝手机网银[2]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
//d.add('8', '7', '配置收费接口(属于支付宝接口)', 'javascript:gourl(\'modifyconfig_alipay.aspx\',\'1278\',\'1000\');');
//d.add('9', '7', '会员充值记录', 'javascript:gourl(\'bank_my_web_list01.aspx?siteid=<%=base.SiteId%>&banktype=2\',\'1278\',\'1000\');');


d.add('10', '0', '手工转帐汇款支付[3]', 'javascript:gourl(\'#\',\'1278\',\'1000\');');
d.add('11', '10', '配置收费说明', 'javascript:gourl(\'modifyconfig_Self.aspx\',\'1278\',\'1000\');');
d.add('12', '10', '会员充值记录', 'javascript:gourl(\'bank_my_web_list01.aspx?siteid=<%=base.SiteId%>&banktype=3\',\'1278\',\'1000\');');
d.add('13', '0', '本站会员手工入款', 'javascript:gourl(\'/chinabank_wap/RMBAdd.aspx?siteid=<%=base.SiteId%>&sid=<%=base.SID %>\',\'1278\',\'1000\');');
d.add('14', '0', '会员帐目所有记录', 'javascript:gourl(\'bank_my_web_list01.aspx?siteid=<%=base.SiteId%>\',\'1278\',\'1000\');');

document.write(d);
</script>
                                                                        
<br />此功能是我网站下的会员向我(站长)付费！
<br /><br />体现在:WAP->【我的地盘】->【我的RMB - 在线充值】和在商城模块在线支付
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
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
