<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%




    
Sub YanZhengDenLu()



    



End Sub

Dim ID

Dim LOAD_Str

    Sub Page_Load()
    
        YanZhengDenLu()
        
        ID=CLng(Request.QueryString("ID"))
    
        If Request.QueryString("Act")="En" Then
        
        
            Dim FenLeiMingChen_
            FenLeiMingChen_=Request.Form("FenLeiMingChen")
            
            If Len(FenLeiMingChen_)<1 OR Len(FenLeiMingChen_)>50 Then
                Response.Write("�������Ƶĳ��ȱ�����1-50֮��")
                Response.End()
            End If
            
            Dim ZGID
            ZGID=ZuiGaoID("ZhiDao_XiaoFenLei")
            
            Conn.Execute("INSERT INTO [ZhiDao_XiaoFenLei]([ID],[FenLeiMingChen],[SuoShuFenLei],[WenTiShu],[siteid])"_
                &"VALUES("&ZGID&",'"&CheckSql(FenLeiMingChen_)&"',"&ID&",0,"&siteid&")")
                
            LOAD_Str="window.close();opener.location.reload()"
        End If
    
    
    End Sub
    Call Page_Load()






 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>���ӷ���</title>
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
 
 
 
 <form method="post" action="Web_XiaoFenLei_ZengJia.asp?Act=En&ID=<%=ID %>">
 
 
 

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
                  <td width="98%" height="24" valign="middle">����С����
 
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
                                    
                                    ����С���� 
                                    
                                    </b></TD>
                                </TR>
              
                        <tr class="tdbg">
                        <td style="width:30%;height:25px" class="TD2">
                        
                        <b>��������</b>
                        </td>
                        <td class="TD3">
                        
                        
                        <input type="text" name="FenLeiMingChen" value="" class="input" maxlength="50" />
                        
                        
                        
                        
                        
                        </td>
                        
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="���ӷ���" class="input3" />
                        <input type="reset" value="������д" class="input3" />
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