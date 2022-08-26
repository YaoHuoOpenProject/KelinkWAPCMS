<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%




    
Sub YanZhengDenLu()



    



End Sub

Dim ID,FenLeiMingChen

Dim LOAD_Str

    Sub Page_Load()
    
        YanZhengDenLu()
        
        ID=CLng(Request.QueryString("ID"))
    
        If Request.QueryString("Act")="En" Then
        
        
            Dim FenLeiMingChen_
            FenLeiMingChen_=Request.Form("FenLeiMingChen")
            
            If Len(FenLeiMingChen_)<1 OR Len(FenLeiMingChen_)>50 Then
                Response.Write("分类名称的长度必须在1-50之间")
                Response.End()
            End If
            
            Conn.Execute("UPDATE [ZhiDao_XiaoFenLei] SET [FenLeiMingChen]='"&CheckSql(FenLeiMingChen_)&"' WHERE [ID]="&ID&" AND [siteid]="&siteid)
            
                
            LOAD_Str="window.close();opener.location.reload()"
        Else
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [FenLeiMingChen] FROM [ZhiDao_XiaoFenLei] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
            
            If Rs.EOF AND Rs.BOF Then
                Response.Write("分类不存在")
            Else
                
                FenLeiMingChen=Rs("FenLeiMingChen")
                
            End If
            Rs.Close()
        
        End If
    
    
    End Sub
    Call Page_Load()






 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>修改分类</title>
 
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
 
 
 
 <form method="post" action="Web_XiaoFenLei_XiuGai.asp?Act=En&ID=<%=ID %>">
 
 
 

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
                  <td width="98%" height="24" valign="middle">修改小分类
 
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
                                    
                                    修改小分类 
                                    
                                    </b></TD>
                                </TR>
              
                        <tr class="tdbg">
                        <td style="width:30%;height:25px" class="TD2">
                        
                        <b>分类名称</b>
                        </td>
                        <td class="TD3">
                        
                        
                        <input type="text" name="FenLeiMingChen" value="<%=Server.HtmlEncode(FenLeiMingChen) %>" class="input" maxlength="50" />
                        
                        
                        
                        
                        
                        </td>
                        
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="修改分类" class="input3" />
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