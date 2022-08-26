<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%

Response.ContentType="text/html"

Dim SiteID_,LOAD_Str



Sub YanZhengDenLu()



    



End Sub

Sub ZengJiaCaiDi_()

    Dim FarmID
    FarmID=CLng(Request.Form("YongHu"))
        
            Dim Rs,TuDiWeiZhi,ZG_TuDiWeiZhi
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [ID] FROM [Farm] WHERE [ID]="&FarmID&" AND [siteid]="&SiteID_,Conn,1,1
            If Rs.EOF AND Rs.BOF Then
                Response.Write("请输入正确的农场ID")
                Response.End()
            End If
            Rs.Close()
            Rs.Open "SELECT [TuDiWeiZhi] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&SiteID_&" ORDER BY [TuDiWeiZhi] DESC",Conn,1,1
            If Rs.BOF AND Rs.EOF Then
                ZG_TuDiWeiZhi=1
            Else
                ZG_TuDiWeiZhi=CLng(Rs("TuDiWeiZhi"))+1
            End If
            Rs.Close()
            Conn.Execute("INSERT INTO [Farm_CaiDi]([ID],[TuDiWeiZhi],[ShiFouKongDi],[ShiFouWeiFanDi],[ShuCaiID],[ShuCaiMingChen],[ShengYuShuLiang],[ShiFouCunZaiGanHan],[ShiFouCunZaiZaCao],[ShiFouCunZaiBingChong],[ZhongZhiShiJian],[ChengShuShiJian],[SuoShuNongChang],[ZhongZhiJiDu],[DangQianJiDu],[siteid])"_
            &"VALUES(N'"&ZuiGaoID("Farm_CaiDi")&"',N'"&ZG_TuDiWeiZhi&"','1','0','0','','0','0','0','0','"&now()&"','"&now()&"',N'"&FarmID&"','0','0',"&SiteID_&")")
            
            LOAD_Str="window.close();opener.location.reload();"

    

End Sub


Sub Page_Load()

    YanZhengDenLu()
    
    Conn_Open()
    
    SiteID_=CLng(siteid)
    
    If Request.QueryString("Act")="En" Then
        ZengJiaCaiDi_()
    End If
    
    Conn_Close()

End Sub

Call Page_Load()










 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>增加菜地</title>
 
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>

 <style type="text/css">
 body{
 font-size:12px
 }
 table
 {
 font-size:12px
 }
 </style>
 </head>
 <body onload="<%=LOAD_Str %>">
 
 
 
 <form method="post" action="Web_CaiDi_ZengJia.asp?Act=En">
 
 
 

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="1%"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><div align="center"><img src="/NetImages/i08.gif" width="16" height="16"></div></td>
                  <td width="98%" height="24" valign="middle">增加菜地
 
                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="384%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0">
                  <tr>
              <td>	 
              
              
              
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif">
                        <tr> 
    <td width="100%" align="center" valign="top"> 
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=25 colSpan=2 class="TD_title3" width="100%"><b> 
                                    
                                    增加菜地
                                    
                                    </b></TD>
                                </TR>
              
                        <tr class="tdbg">
                        <td style="width:30%;height:25px" class="TD2">
                        
                        <b>用户ID</b>
                        </td>
                        <td class="TD3">
                        
                        
                        <input type="text" name="YongHu" class="input" maxlength="50" />
                        
                        
                        
                        
                        
                        </td>
                        
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="增加菜地" class="input3" />
                        <input type="reset" value="重新填写" class="input3" />
                        </td>
                        </tr>
              </table>
              </td>
              </tr>
              </table>
              
              
              
              
              
              
              
              
              
 </td>
            </tr>
            <tr>
                    <td><table width="100%" height="28" border="0" cellpadding="0" cellspacing="0" class="HeaderTdStyle">
  <tr> 
    <td> 
      <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="2">
        <tr> 
          <td align="right">
          	</td>
         
        </tr>
      </table></td>
  </tr>
</table>
</td>
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