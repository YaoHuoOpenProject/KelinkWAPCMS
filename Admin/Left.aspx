<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Left.aspx.cs" Inherits="KeLin.WebSite.admin.Left" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Kelink.com WAP������վϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="author" content="kelink,kelink.com,chinastrong" />
<meta name="keywords" content="3g,3g�ֻ�,3g��վ,3g�Ż�,wap,wap��վ,�ֻ�����,�ֻ���վ,�ֻ�����Ӱ,�ֻ���Ϸ,�ֻ���С˵,�ֻ���ý��,�ֻ��Ż�,3G�Ż�" />
<meta name="description" content="���������WAP��վ�������߽�һ��ȫ�µ�wap��վʱ��������רҵ֪ʶ���������������ֻҪ������֣�ʮ���ӵļ����������Ϳ���ӵ���Լ��ľ���wapվ�㣬�������ֻ��û�����������Ƴɹ�����Ȥ��ͬʱ��վ�г������Ƶ���ҵ����ģʽ�����������wapվ��һ���컥�ݻ�����˫Ӯ����,������ṩһ��3Gʱ������Ƹ��Ļ��ᡣ����ԥʲô�أ��Ͽ�����ɡ�" />
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
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar3">&nbsp;<b>ϵͳ����</b><font
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
                                                        &nbsp;&nbsp;<img src="/NetImages/left/firefox.gif" border="0"><a href="Sysadmin_view.aspx" target="main">��������Ϣ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/count.gif" border="0"><a href="/visiteCount/CountTree.aspx" target="main">������ͳ��</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuPda.gif" border="0"><a href="/visiteCount/userlist.aspx?go=1" target="main">��վ����</a>
                                                    </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/new.gif" width="16" border="0"><a href="systemindexFiles.aspx" target="main">�ϴ��ļ�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/cd.gif" width="16" border="0"><a href="SiteSpaceTree.aspx" target="main">�ռ�ʹ��ͳ��</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_userlist.aspx" target="main">��Ŀ��������</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_infolist.aspx" target="main">��Ŀ�Ű�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/search/admin_userlist.aspx" target="main">վ�ڶ�������</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneGuessbook.aspx" target="main">���˿ռ�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneOperation.aspx" target="main">���˲�����־</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuUser.gif" border="0"><a href="/sysmessage/systemlist.aspx" target="main">����鿴</a>
                                                    </td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gouseradmin();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar3">&nbsp;<b>�û�����</b><font
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
                                                        &nbsp;&nbsp;<img src="/NetImages/left/user.gif" border="0"><a href="UserModify.aspx?update=myinfo&UserID=<%=strUserID%>" target="main">�޸��ҵ�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userUser.gif" border="0"><a href="UserManage.aspx" target="main">�û����Ϲ���</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userUser.gif" border="0"><a href="RoleManageSel.aspx" target="main">�û���ɫ����</a>
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
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar4">&nbsp;<b>��վ����</b>&nbsp;<font
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
                                                        &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank/cardindex_chinaBank.aspx" target="main">��ֵ�ҵ���վ</a>
                                                    </td>
                                                
                                                <tr>
                                                    
                                                        <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                            onmouseout="this.className='menuItem'" height="20">
                                                            &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank_WAP/cardindex_chinaBank.aspx" target="main">��Ա��ֵ����</a>
                                                        </td>
                                                    
                                                    <tr />
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/sms/systemlist.aspx" target="main">���ŷ��ͻ�Ա</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/userManS.gif" border="0"><a href="SiteBaseTree.aspx" target="main">������Ϣ����</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuLogoRes.gif" width="16" border="0"><a href="ClassTree.aspx" target="main">���ɾ����Ŀ</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/mnuTestMod.gif" border="0"><a href="ContentTreeSel.aspx" target="main">���ɾ������</a>
                                                            </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0" ><a href="SitePreview.aspx" target="main" >WAP/HTML5<span style="display:block; padding-left:25px;">ҳ���ۺ��Ű�</span></a>
                                                            </td>
                                                        
                                                    </tr>
                                                    
                                                     
                                                     <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0" ><a href="/weixin/ContentTree.aspx" target="main" >΢�Ź����ʺ�<span style="display:block; padding-left:25px;">����Ӫ��ƽ̨ </span></a>
                                                            </td>
                                                        
                                                    </tr>
                                                    
                                                     <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/viewmag.gif" border="0"><a href="htmlweb.aspx" target="main">������վ����<span style="display:block; padding-left:25px;">ҳ���ۺ��Ű�</span></a>
                                                            </td>
                                                        
                                                    </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gosysadmin();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar5">&nbsp;<b>ϵͳ��Դ</b><font
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
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuPda.gif" border="0"><a href="/models/systemindex.aspx" target="main">ģ�彨վ��</a>
                                                    </td>
                                                
                                            </tr>-->
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="systemindex.aspx" target="main">�������ģ��</a>
                                                    </td>
                                                
                                            </tr>
                                            <!--
                                           <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="/WapStyle/Style_List00.aspx" target="main">CSS��ʽ��Դ</a>
                                                    </td>
                                                
                                            </tr>  -->
                                           <tr>
                                              
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuConfig.gif" border="0"><a href="/WapStyle/MobileUA_List00.aspx" target="main">�ֻ�������Դ</a>
                                                    </td>
                                                
                                            </tr>  
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="updateAD.aspx" target="main">�����Դ</a>
                                                    </td>
                                                
                                            </tr>     
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="/caiji/systemindex.aspx" target="main">�ɼ���Դ</a>
                                                    </td>
                                                
                                            </tr>                                        
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userBookS.gif" border="0"><a href="/article/systemindex.aspx" target="main">������Դ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuPassWord.gif" width="16" border="0"><a href="/bbs/systemindex.aspx" target="main">��̳��Դ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuWapSite.gif" border="0"><a href="/picture/systemindex.aspx" target="main">ͼƬ��Դ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuDownMusic.gif" border="0"><a href="/ring/systemindex.aspx" target="main">������Դ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/windowsmediaplayer.gif" border="0"><a href="/video/systemindex.aspx" target="main">��Ƶ��Դ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuPicMod.gif" width="16" border="0"><a href="/download/systemindex.aspx" target="main">������Դ</a>
                                                    </td>
                                                
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr height="24" style ="display:<%if(base.ManagerLvl!="00"){Response.Write("none");}else{Response.Write("block");}%>">
                                <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="gosysadmins();"
                                    onmouseout="this.className='menuItem'" valign="center" bgcolor="#f1ecd6">
                                    <img height="12" src="/NetImages/dl.gif" width="12" border="0"><font id="bar5">&nbsp;<b>��������Ա��</b><font
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
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userStatSS.gif" border="0"><a href="updateSys.aspx" target="main">ϵͳ����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuTestMod.gif" border="0"><a href="ModifyDomainREG.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>" target="main">ע�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/userGBMod.gif" border="0"><a href="backUpSQL.aspx" target="main">���ݿ�ά��</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/mnuHelpCenter.gif" width="16" border="0"><a href="SiteBaseTree00.aspx" target="main">ϵͳȫ������</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/userStatS.gif" width="16" border="0"><a href="modifyAdminSite.aspx" target="main">WEB��������</a>
                                                    </td>
                                                
                                            </tr>
                                           <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img height="16" src="/NetImages/left/cd.gif" width="16" border="0"><a href="SiteSpaceTree.aspx" target="main">�ռ�ʹ��ͳ��</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/mnuUser.gif" border="0"><a href="/sysmessage/systemlist.aspx" target="main">�������</a>
                                                    </td>
                                                
                                            </tr>
                                              <tr>
                                                    
                                                        <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                            onmouseout="this.className='menuItem'" height="20">
                                                            &nbsp;&nbsp;<img src="/NetImages/left/globe2.gif" border="0"><a href="/chinabank/cardindex_chinaBank00.aspx" target="main">վ����ֵ����</a>
                                                        </td>
                                                    
                                                    <tr />
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="UserManage.aspx?DropDownList1=1" target="main">����û�</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="admin_UserManage.aspx" target="main">������վ</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="UserManage.aspx?DropDownList2=00_01" target="main">������վ</a>
                                                    </td>
                                                
                                            </tr>
                                             <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/models/systemmodel.aspx" target="main">ϵͳģ�����</a>
                                                    </td>
                                                
                                            </tr>
                                             <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/WapStyle/Style_List00.aspx" target="main">ϵͳCSS��ʽ</a>
                                                    </td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="systemindexFiles.aspx" target="main">�ϴ��ļ�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_userlist.aspx" target="main">��Ŀ��������</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/class/admin_infolist.aspx" target="main">��Ŀ�Ű�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/search/admin_userlist.aspx" target="main">վ�ڶ�������</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneGuessbook.aspx" target="main">���˿ռ�����</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/bbs/ZoneOperation.aspx" target="main">���˲�����־</a>
                                                    </td>
                                                
                                            </tr>
                                            <tr>
                                                        
                                                            <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                                onmouseout="this.className='menuItem'" height="20">
                                                                &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="/sms/systemlist00.aspx" target="main">���ŷ��ͻ�Ա</a>
                                                            </td>
                                                        
                                                    </tr>
                                            <tr>
                                                
                                                    <td class="MenuItem" onMouseOver="this.className='MenuItemOver2'" onClick="selectRow(this);"
                                                        onmouseout="this.className='menuItem'" height="20">
                                                        &nbsp;&nbsp;<img src="/NetImages/left/available.gif" border="0"><a href="ContentTree00.aspx" target="main">����������</a>
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
