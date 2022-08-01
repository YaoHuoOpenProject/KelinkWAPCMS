<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemindex.aspx.cs" Inherits="KeLin.WebSite.caiji.systemindex" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加删除内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="1%">
                                <img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="98%" background="../NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="../NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            系统资源 &gt;&gt; 采集资源
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="1%">
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
                                                                                请选择</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">
    d = new dTree('d');
    d.add(0, -1, '文章采集');
    d.add('1', '0', '每日焦点新闻', 'javascript:gourl(\'gourl.asp?typeid=1&typename=每日焦点新闻\')', '');
    d.add('2', '0', '国内新闻', 'javascript:gourl(\'gourl.asp?typeid=2&typename=国内新闻\')', '');
    d.add('3', '0', '国际新闻', 'javascript:gourl(\'gourl.asp?typeid=3&typename=国际新闻\')', '');
    d.add('4', '0', '社会新闻', 'javascript:gourl(\'gourl.asp?typeid=4&typename=社会新闻\')', '');
    d.add('5', '0', '军事新闻', 'javascript:gourl(\'gourl.asp?typeid=5&typename=军事新闻\')', '');
    d.add('6', '0', '体育新闻', 'javascript:gourl(\'gourl.asp?typeid=6&typename=体育新闻\')', '');
    d.add('7', '0', '产经新闻', 'javascript:gourl(\'gourl.asp?typeid=7&typename=产经新闻\')', '');
    d.add('8', '0', 'IT新闻', 'javascript:gourl(\'gourl.asp?typeid=8&typename=IT新闻\')', '');
    d.add('9','0','文教新闻','javascript:gourl(\'gourl.asp?typeid=9&typename=文教新闻\')','');
    d.add('10','0','娱乐新闻','javascript:gourl(\'gourl.asp?typeid=10&typename=娱乐新闻\')','');
    document.write(d);

    function gourl(aaa) {
        frame1.location = aaa+'&sid=<%=base.SID %>';
    }
</script>
                                                                        
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left">
                                                            <iframe src="/admin/tip.htm" id="iframe" name="frame1" width="100%" height="100%" frameborder="0"
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
