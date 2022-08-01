<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ContentTree.aspx.cs" Inherits="KeLin.WebSite.weixin.ContentTree" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>微信互动营销平台</title>
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
                   
                    
<!--修改begin-->
<div id="title">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="ContentTree.aspx" class="check">微信互动营销</a></li>
        <li><a href="app.aspx"  >单独生成APP</a></li>
   
      </ul>
   </div>
</div>
<!--修改end-->
                    
                    
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
                                                                             &nbsp;&nbsp; <!--  <img src="/netimages/shdot.gif" /> 请选择操作 --></td>
                                                                        </tr>
                                                                        <tr>
                           <td class="f">

<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'平台功能');

d.add('1', '0', '微信接口配置', 'javascript:gourl(\'weixin/Config.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('2', '0', '发送消息管理', 'javascript:gourl(\'weixin/msglist.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('3', '0', '收到消息管理', 'javascript:gourl(\'weixin/MsgReceivelist.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('4', '0', '自定义菜单', 'javascript:gourl(\'weixin/addModMenu.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('5', '0', 'LBS地理位置回复', 'javascript:gourl(\'weixin/mapconfig.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('6', '0', '用户资料列表', 'javascript:gourl(\'admin/UserManage.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('7', '0', '公共帐号二维码', 'javascript:gourl(\'weixin/myQR.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('8', '0', '登录微信官网', 'javascript:gourl2(\'http://mp.weixin.qq.com/\',\'0\',\'<%=base.SiteId %>\');');
d.add('9', '0', '帮助说明', 'javascript:gourl(\'weixin/help.aspx\',\'0\',\'<%=base.SiteId %>\');');


d.add('10', '0', '微营销插件', 'javascript:alert(\' \');');
d.add('11', '10', '系统指令', 'javascript:gourl(\'weixin/orderConfig.aspx\',\'0\',\'<%=base.SiteId %>\');');

d.add('12', '10', 'VIP会员卡', 'javascript:gourl(\'weixin/vipconfig.aspx\',\'0\',\'<%=base.SiteId %>\');');

<%if(base.ManagerLvl=="00"){ %>

d.add('13', '0', '超级管理员区', '');
d.add('14', '13', '发送消息管理', 'javascript:gourl(\'weixin/msglist00.aspx\',\'0\',\'<%=base.SiteId %>\');');
d.add('15', '13', '接收消息管理', 'javascript:gourl(\'weixin/msgReceivelist00.aspx\',\'0\',\'<%=base.SiteId %>\');');


<%} %>
//d.add('12', '10', '大转盘', 'javascript:alert(\'开发中\');');
//d.add('13', '10', '刮刮卡', 'javascript:alert(\'开发中\');');
//d.add('14', '10', '优惠劵', 'javascript:alert(\'开发中\');');
//d.add('15', '10', '3D展示', 'javascript:alert(\'开发中\');');
//d.add('16', '10', '其它', 'javascript:alert(\'开发中\');');

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
