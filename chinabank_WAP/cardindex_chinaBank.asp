<%@language=vbscript codepage=936 %>
<!--#include file="../admin/admin.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../admin/style/main_table.css" type=text/css rel=stylesheet>
<link rel="stylesheet" href="../admin/style/teamdtree.css" type="text/css">
<script language="JavaScript" src="../admin/js/table_tr.js" type="text/JavaScript"></script>
<script type="text/javascript" src="../admin/js/systemdtree.js"></script>
<title>���ݹ���</title>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body>
<form name="classtreeshow" action="/teamAction.do" method="POST">
	<input type="hidden" name="classid" value="" >
	<input type="hidden" name="systemid" value="">
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="5" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="1%"><img src="../admin/images/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="../admin/images/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><div align="center"><img src="../admin/images/i08.gif" width="16" height="16"></div></td>
                  <td width="98%" height="24" valign="middle"> ��վ���� &gt;&gt; ������ҹ���  </td>
                </tr>
              </table></td>
              <td width="1%"><img src="../admin/images/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="384%" colspan="5"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="169" height="320" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="220px">
					  </td>
                    </tr>
                  </table>
                          <div id="Layer1" style="position: absolute; width:150px; height:448px; z-index:1; visibility: inherit; overflow: auto; left: 3px; top: 31px;" > 
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="160" valign="top" background="../admin/images/left_6.gif">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td valign="top">
                     
<script type="text/javascript">
d = new dTree('d');
d.add(0,-1,'������ҹ���');
d.add('1','0','�����շѽӿڲ���|','cardindex_chinaBank.asp?classid=1','');
d.add('2','0','��ֵ������Ҽ�¼|','cardindex_chinaBank.asp?classid=2','');                                                                     

document.write(d);
</script>

	
	</b>     
<br/><br/>
	<font color=red>
	˵�����˹�������ͨ��Ա��WAP��վ��ͨ���ύ�ƶ�����ͨ����Ϸ���ȳ�ֵ����������վ�ϵ�������ҡ�
<br><br>WAPҳ�����֣�WAP��Ա��¼->�ҵĵ���->��ֵX��->��Ҫ���߳�ֵ
<br><br>�����ִ���ԭ��1.�ұߵ���Կ�������2.�����ռ䲻֧��msxml�����
<br><br>���޷����������ϵ�ױ�֧������Ա���ԡ�	

	
	</font>              
                             
                                </td>
                                <td> </td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    </div></td>
                  <td width="818" valign="top"><table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                <tr align="center">
                      <td colspan="5" align="left">
                      	
					  <table width="100%" height="480"  border="0" cellpadding="0" cellspacing="0">
                                  <tr align="left"> 
                                    <td colspan="7"  >
<%if request("classid")="2" then%>
	<iframe id="frame1" src="mylist_WEB.asp" frameborder=0 height="100%" scrolling=yes width="100%">

<%else%>
	<iframe id="frame1" src="modifyconfig.asp" frameborder=0 height="100%" scrolling=yes width="100%">

<%end if%>

</iframe>                                                              	
                                    
                        
                                    </td>
                                  </tr>
      
                                </table>
                  
                      
                      </td>
                      </tr>
                      
 
                  </table>

					</td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>
</form>
</body>
</html>
