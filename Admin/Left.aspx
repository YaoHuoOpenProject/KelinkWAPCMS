<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Left.aspx.cs" Inherits="KeLin.WebSite.admin.Left" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Kelink.com WAP自助建站系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="author" content="kelink,kelink.com,chinastrong" />
<meta name="keywords" content="3g,3g手机,3g建站,3g门户,wap,wap建站,手机上网,手机建站,手机看电影,手机游戏,手机看小说,手机流媒体,手机门户,3G门户" />
<meta name="description" content="体验神奇的WAP建站经历，走进一个全新的wap网站时代！无需专业知识，无需特殊软件，只要您会打字，十分钟的简单制作，您就可以拥有自己的精彩wap站点，让亿万手机用户分享您的设计成果与乐趣；同时本站有成熟完善的商业合作模式，致力于与各wap站长一起创造互惠互利的双赢局面,给大家提供一个3G时代创造财富的机会。还犹豫什么呢？赶快申请吧。" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript">
        var cruRow = false;
        var cruTd = false;
        function selectRow(r) {
            if (cruRow != false) {
                cruRow.style.backgroundColor = "";
                cruRow.style.color = "#000000";
            }
            r.style.backgroundColor = "#60BFFF";
            r.style.color = "#ffffff";
            cruRow = r;
        }

        function aa() {
            window.open("help/help5.htm", "", "resizable=0,left=15,top=100,scrollbars=1,scroll=1,height=410,width=750");
        }
        //-----------
        function goshow() {
            if (document.all("systemadmin").style.display == 'block') {
                document.all("systemadmin").style.display = 'none';
            } else {
                document.all("systemadmin").style.display = 'block';
            }
        }
        //------------
        function gouseradmin() {
            if (document.all("useradmin").style.display == 'block') {
                document.all("useradmin").style.display = 'none';
            } else {
                document.all("useradmin").style.display = 'block';
            }
        }
        //---------------
        function gositeadmin() {
            if (document.all("siteadmin").style.display == 'block') {
                document.all("siteadmin").style.display = 'none';
            } else {
                document.all("siteadmin").style.display = 'block';
            }
        }

        //--------------
        function gosysadmin() {
            if (document.all("sysadmin").style.display == 'block') {
                document.all("sysadmin").style.display = 'none';
            } else {
                document.all("sysadmin").style.display = 'block';
            }
        }
        function gosysadmins() {
            if (document.all("sysadmins").style.display == 'block') {
                document.all("sysadmins").style.display = 'none';
            } else {
                document.all("sysadmins").style.display = 'block';
            }
        }
        function hideleft() {
            window.parent.forum.cols = "0,10,*";
        }
    </script>
    <meta content="MSHTML 6.00.2900.5726" name="GENERATOR">
</head>
<body background="/NetImages/bground.gif">
    <table cellspacing="0" cellpadding="0" border="0">
        <tbody>
            <tr>
                <td class="citext" align="middle">
                    <img src="/NetImages/left_title5.gif">
                </td>
            </tr>
            <tr background="/NetImages/left_bg_02.gif">
                <td background="/NetImages/left_bg_02.gif">
                    <table id="button" cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                        <tbody>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="goshow();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar3">&nbsp;<b>系统管理</b><font
                                        id="bar3"></font></font>
                                </td>
                            </tr>
                            <tr id="systemadmin" style="display: none; margin-left: 5px">
                                <td>
                                    <table width="100%" align="center">
                                        <tbody>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/firefox.gif" border="0"><a href="Sysadmin_view.aspx" target="main">服务器信息</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/count.gif" border="0"><a href="/visiteCount/CountTree.aspx" target="main">访问量统计</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuPda.gif" border="0"><a href="/visiteCount/userlist.aspx?go=1" target="main">网站排行</a>
                                                    </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/new.gif" width="16" border="0"><a href="systemindexFiles.aspx" target="main">上传文件管理</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/cd.gif" width="16" border="0"><a href="SiteSpaceTree.aspx" target="main">空间使用统计</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_userlist.aspx" target="main">栏目名称内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_infolist.aspx" target="main">栏目排版内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/search/admin_userlist.aspx" target="main">站内短信内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneGuessbook.aspx" target="main">个人空间留言</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneOperation.aspx" target="main">个人操作日志</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuUser.gif" border="0"><a href="/sysmessage/systemlist.aspx" target="main">公告查看</a>
                                                    </td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gouseradmin();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar3">&nbsp;<b>用户管理</b><font
                                        id="bar3"></font></font>
                                </td>
                            </tr>
                            <tr id="useradmin" style="display: block; margin-left: 5px">
                                <td>
                                    <table width="100%" align="center">
                                        <tbody>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/user.gif" border="0"><a href="UserModify.aspx?update=myinfo&UserID=<%=strUserID%>" target="main">修改我的资料</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userUser.gif" border="0"><a href="UserManage.aspx" target="main">用户资料管理</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userUser.gif" border="0"><a href="RoleManageSel.aspx" target="main">用户角色管理</a>
                                                    </td>
                                               
                                            </tr>
                                            <!--
              <tr> <a href="/TaskTypeNewAction.do?method=in&report_type=3" target="main"> 
                <td height="20" class='MenuItem' onclick="selectRow(this);" onmouseover="this.className='MenuItemOver2'" onmouseout="this.className='menuItem'">&nbsp;&nbsp;-------</td>
                </a> </tr>-->
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gositeadmin();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar4">&nbsp;<b>网站管理</b>&nbsp;<font
                                        id="bar3"></font></font>
                                </td>
                            </tr>
                            <tr id="siteadmin" style="display: block; margin-left: 5px">
                                <td>
                                    <table width="100%" align="center">
                                        <tbody>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank/cardindex_chinaBank.aspx" target="main">充值我的网站</a>
                                                    </td>
                                                
                                                <tr>
                                                    
                                                        <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                            onmouseout="this.className='menuItem'" height="20">
                                                            &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank_WAP/cardindex_chinaBank.aspx" target="main">会员充值设置</a>
                                                        </td>
                                                    
                                                    <tr />
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/sms/systemlist.aspx" target="main">短信发送会员</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/userManS.gif" border="0"><a href="SiteBaseTree.aspx" target="main">基本信息设置</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuLogoRes.gif" width="16" border="0"><a href="ClassTree.aspx" target="main">添加删除栏目</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/mnuTestMod.gif" border="0"><a href="ContentTreeSel.aspx" target="main">添加删除内容</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0" ><a href="SitePreview.aspx" target="main" >WAP/HTML5<span style="display:block; padding-left:25px;">页面综合排版</span></a>
                                                            </td>
                                                        
                                                    </tr>
                                                    
                                                     
                                                     <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0" ><a href="/weixin/ContentTree.aspx" target="main" >微信公共帐号<span style="display:block; padding-left:25px;">接入营销平台 </span></a>
                                                            </td>
                                                        
                                                    </tr>
                                                    
                                                     <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0"><a href="htmlweb.aspx" target="main">电脑网站独立<span style="display:block; padding-left:25px;">页面综合排版</span></a>
                                                            </td>
                                                        
                                                    </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gosysadmin();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar5">&nbsp;<b>系统资源</b><font
                                        id="bar3"></font></font>
                                </td>
                            </tr>
                            <tr id="sysadmin" style="display: none; margin-left: 5px">
                                <td>
                                    <table width="100%" align="center">
                                        <tbody>
                                        <!--
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuPda.gif" border="0"><a href="/models/systemindex.aspx" target="main">模板建站向导</a>
                                                    </td>
                                                
                                            </tr>-->
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="systemindex.aspx" target="main">插件功能模块</a>
                                                    </td>
                                                
                                            </tr>
                                            <!--
                                           <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="/WapStyle/Style_List00.aspx" target="main">CSS样式资源</a>
                                                    </td>
                                                
                                            </tr>  -->
                                           <tr>
                                              
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="/WapStyle/MobileUA_List00.aspx" target="main">手机机型资源</a>
                                                    </td>
                                                
                                            </tr>  
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="updateAD.aspx" target="main">广告资源</a>
                                                    </td>
                                                
                                            </tr>     
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="/caiji/systemindex.aspx" target="main">采集资源</a>
                                                    </td>
                                                
                                            </tr>                                        
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="/article/systemindex.aspx" target="main">文章资源</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuPassWord.gif" width="16" border="0"><a href="/bbs/systemindex.aspx" target="main">论坛资源</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuWapSite.gif" border="0"><a href="/picture/systemindex.aspx" target="main">图片资源</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuDownMusic.gif" border="0"><a href="/ring/systemindex.aspx" target="main">铃声资源</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/windowsmediaplayer.gif" border="0"><a href="/video/systemindex.aspx" target="main">视频资源</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuPicMod.gif" width="16" border="0"><a href="/download/systemindex.aspx" target="main">下载资源</a>
                                                    </td>
                                                
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24" style ="display:<%if(base.ManagerLvl!="00"){Response.Write("none");}else{Response.Write("block");}%>">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gosysadmins();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar5">&nbsp;<b>超级管理员区</b><font
                                        id="bar3"></font></font>
                                </td>
                            </tr>
                            <tr id="sysadmins" style="display: none; margin-left: 5px">
                                <td>
                                    <table width="100%" align="center">
                                        <tbody>
                                        <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userStatSS.gif" border="0"><a href="updateSys.aspx" target="main">系统升级</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuTestMod.gif" border="0"><a href="ModifyDomainREG.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>" target="main">注册软件</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userGBMod.gif" border="0"><a href="backUpSQL.aspx" target="main">数据库维护</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuHelpCenter.gif" width="16" border="0"><a href="SiteBaseTree00.aspx" target="main">系统全局设置</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/userStatS.gif" width="16" border="0"><a href="modifyAdminSite.aspx" target="main">WEB界面设置</a>
                                                    </td>
                                                
                                            </tr>
                                           <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/cd.gif" width="16" border="0"><a href="SiteSpaceTree.aspx" target="main">空间使用统计</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuUser.gif" border="0"><a href="/sysmessage/systemlist.aspx" target="main">公告管理</a>
                                                    </td>
                                                
                                            </tr>
                                              <tr>
                                                    
                                                        <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                            onmouseout="this.className='menuItem'" height="20">
                                                            &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank/cardindex_chinaBank00.aspx" target="main">站长充值设置</a>
                                                        </td>
                                                    
                                                    <tr />
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="UserManage.aspx?DropDownList1=1" target="main">审核用户</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="admin_UserManage.aspx" target="main">配置网站</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="UserManage.aspx?DropDownList2=00_01" target="main">清理网站</a>
                                                    </td>
                                                
                                            </tr>
                                             <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/models/systemmodel.aspx" target="main">系统模板管理</a>
                                                    </td>
                                                
                                            </tr>
                                             <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/WapStyle/Style_List00.aspx" target="main">系统CSS样式</a>
                                                    </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="systemindexFiles.aspx" target="main">上传文件内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_userlist.aspx" target="main">栏目名称内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_infolist.aspx" target="main">栏目排版内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/search/admin_userlist.aspx" target="main">站内短信内容</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneGuessbook.aspx" target="main">个人空间留言</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneOperation.aspx" target="main">个人操作日志</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/sms/systemlist00.aspx" target="main">短信发送会员</a>
                                                            </td>
                                                        
                                                    </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="ContentTree00.aspx" target="main">插件内容审核</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <!----------end do...-->
                            <tr height="24">
                                <td height="24">
                                    <a href="/help/index.htm" target="_blank">
                                        <img src="/NetImages/help.gif" border="0"></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="/NetImages/left_bg_04.gif">
                </td>
            </tr>
        </tbody>
    </table>
    <!--
<br/>userid:<%=base.UserID%>
<br/>siteid:<%=base.SiteId %>
<br/>username:<%=base.UserName %>
<br/>nickname:<%=base.NickName %>
<br/>managerlvl:<%=base.ManagerLvl %>
-->
</body>
</html>
