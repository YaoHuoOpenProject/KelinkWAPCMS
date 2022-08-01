<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ContentTree00.aspx.cs" Inherits="KeLin.WebSite.admin.ContentTree00" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>内容审核</title>
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
                                            超级管理员区 &gt;&gt; 插件内容审核
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
                                                                            <td class="column" align="center"><img src="/netimages/shdot.gif" /> 
                                                                            <%if (show != "1")
                                                                              { %>
                                                                                <a href="contenttree00.aspx?show=1">所有插件内容审核</a>
                                                                              <%}
                                                                              else
                                                                              { %>  
                                                                              <a href="contenttree00.aspx?show=0">主要插件内容审核</a>
                                                                              <%} %>
                                                                                
                                                                             </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

    d = new dTree('d');
<% if(strJavascript!=""){
Response.Write("d.add(0,-1,'所有插件内容审核');\n");
Response.Write(strJavascript);
}else{
%>


d.add(0,-1,'主要插件内容审核');
d.add('1', '0', '文章内容', 'javascript:gourl(\'/article/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('2', '0', '论坛内容', 'javascript:gourl(\'/bbs/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('3', '0', '图片内容', 'javascript:gourl(\'/picture/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('4', '0', '铃声内容', 'javascript:gourl(\'/ring/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('5', '0', '视频内容', 'javascript:gourl(\'/video/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('6', '0', '下载内容', 'javascript:gourl(\'/download/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('7', '0', 'WML内容', 'javascript:gourl(\'/wml/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('8', '0', '留言内容', 'javascript:gourl(\'/guessbook/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('9', '0', '聊天内容', 'javascript:gourl(\'/chat/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('10', '0', '航班内容', 'javascript:gourl(\'/airplane/admin_userlist.aspx\',\'1278\',\'1000\');');
d.add('11', '0', '酒店内容', 'javascript:gourl(\'/hotel/admin_userlist.aspx\',\'1278\',\'1000\');');
d.add('12', '0', '拍卖内容', 'javascript:gourl(\'/paimai/admin_userlist.aspx\',\'1278\',\'1000\');');
d.add('13', '0', '商店内容', 'javascript:gourl(\'/shop/admin_userlist.aspx\',\'1278\',\'1000\');');
d.add('14', '0', '约会内容', 'javascript:gourl(\'/yuehui/admin_userlist.aspx\',\'1278\',\'1000\');');
d.add('15', '0', '博客内容', 'javascript:gourl(\'/rizhi/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('16', '0', '相册内容', 'javascript:gourl(\'/album/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('17', '0', '友情链接', 'javascript:gourl(\'/link/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('18', '0', '行业供求内容', 'javascript:gourl(\'/gongqiu/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('19', '0', '点广告送币内容', 'javascript:gourl(\'/adlink/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('20', '0', '广播内容', 'javascript:gourl(\'/guangbo/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('21', '0', '记帐内容', 'javascript:gourl(\'/myaccount/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('22', '0', '小说内容', 'javascript:gourl(\'/novel/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('23', '0', '购买勋章', 'javascript:gourl(\'/xinzhang/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('24', '0', '签到内容', 'javascript:gourl(\'/Signin/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('25', '0', '挖宝内容', 'javascript:gourl(\'/wabao/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('26', '0', '表单内容', 'javascript:gourl(\'/FormEdit/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');
d.add('27', '0', '任务插件', 'javascript:gourl(\'/action/index.aspx?action=webAdmin00\',\'1278\',\'1000\');');

<%} %>

document.write(d);
</script>
                                                                        
<font color=red>注意:有些模块没有超级管理员后台，点击可能报错！ </font>
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
