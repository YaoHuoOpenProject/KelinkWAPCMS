<%@ Page Language="C#" AutoEventWireup="true" Codebehind="CountTree.aspx.cs" Inherits="KeLin.WebSite.visiteCount.CountTree" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<script language="JavaScript" type="text/JavaScript">
function gourl(strurl,classid,siteid){
    document.getElementById("iframe").src =  strurl ;
	
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
                                            系统管理 &gt;&gt; 流量统计
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
                                                                            <td class="column" align="center">
                                                                                请选择</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

d = new dTree('d');
d.add(0, -1, '访问量统计');
d.add('1', '0', '网站统计概况', 'javascript:gourl(\'waiting.aspx?url=index.aspx\',\'1278\',\'1000\');');
d.add('2', '0', '网站详细统计', 'javascript:gourl(\'everyDateList.aspx\',\'1278\',\'1000\');');
d.add('3', '0', '访问明细记录', 'javascript:gourl(\'datailList.aspx\',\'1278\',\'1000\');');
d.add('4', '0', '地区访问统计', 'javascript:gourl(\'city.aspx\',\'1278\',\'1000\');');
d.add('5', '0', '终端访问统计', 'javascript:gourl(\'ua.aspx\',\'1278\',\'1000\');');
d.add('6', '0', '搜索引擎统计', 'javascript:gourl(\'search.aspx\',\'1278\',\'1000\');');
d.add('8', '0', '当前在线活动', 'javascript:gourl(\'fydetal.aspx\',\'1278\',\'1000\');');
d.add('9', '0', '网站栏目统计', 'javascript:gourl(\'/admin/ClassTree.aspx\',\'1278\',\'1000\');');

d.add('10', '0', '总系统访问量统计', 'javascript:gourl(\'systemindex.aspx\',\'1278\',\'1000\');');
d.add('11', '0', '总在线人活动统计', 'javascript:gourl(\'fydetal.aspx?alls=yes\',\'1278\',\'1000\');');
d.add('12', '0', '服务器安全狗免费使用', 'javascript:gourl(\'safeDog.aspx\',\'1278\',\'1000\');');   

document.write(d);
</script>
                                                                        
                                                         
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe src="waiting.aspx?url=index.aspx" id="iframe" width="100%" height="100%" frameborder="0"  scrolling="yes"></iframe>
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
