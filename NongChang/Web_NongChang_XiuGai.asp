<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%


Response.ContentType="text/html"

Dim SiteID_,LOAD_Str

Dim ID,MingChen_,DenJi_,JingYan_,JinBi_

Sub YanZhengDenLu()



    



End Sub

Sub Page_Load()

    YanZhengDenLu()
    Conn_Open()
    
    SiteID_=CLng(siteid)
    ID=CLng(Request.QueryString("ID"))
    
    If Request.QueryString("Act")="En" Then
        XiuGaiNongChang()
    Else
        ChuShiHua()
    End If
    
    Conn_Close()

End Sub

Sub ChuShiHua()

    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [MingChen],[DenJi],[JingYan],[JinBi] FROM [Farm] WHERE [siteid]="&SiteID_&" AND [ID]="&ID,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        Rs.Close()
        Exit Sub
    Else
        MingChen_=Rs("MingChen")
        DenJi_=Rs("DenJi")
        JingYan_=Rs("JingYan")
        JinBi_=Rs("JinBi")
        Rs.Close()
    End If

End Sub

Sub XiuGaiNongChang()

    MingChen_=Request.Form("MingChen")
    DenJi_=Request.Form("DenJi")
    JingYan_=Request.Form("JingYan")
    JinBi_=Request.Form("JinBi")
    
    If MingChen_="" Then
        Exit Sub
    End If
    
    Conn.Execute("UPDATE [Farm] SET "_
        &"[MingChen]=N'"&CheckSql(MingChen_)&"',"_
        &"[DenJi]='"&DenJi_&"',"_
        &"[JingYan]='"&JingYan_&"',"_
        &"[JinBi]='"&JinBi_&"' WHERE [siteid]="&SiteID_&" AND [ID]="&ID)
       Load_Str="opener.location.reload();window.close()"

End Sub

Call Page_Load()





 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>修改农场</title>
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
 
 
 
 
 
 
 
 <form method="post" action="Web_NongChang_XiuGai.asp?Act=En&amp;ID=<%=ID %>">
 
 
 

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
                  <td width="98%" height="24" valign="middle">修改农场
 
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
                                    
                                    修改农场
                                    
                                    </b></TD>
                                </TR>
                                <tr class="tdbg">
                                <td style="width:30%;height:25px" class="TD2">
                                <b>农场名称</b>
                                </td>
                                <td class="TD3">
                                <input type="text" name="MingChen" class="input" maxlength="50" value="<%=Server.HtmlEncode(MingChen_) %>" />
                                </td>
                                </tr>
                                <tr class="tdbg">
                                <td style="width:30%;height:25px" class="TD2">
                                <b>农场等级</b>
                                </td>
                                <td class="TD3">
                                <input type="text" name="DenJi" class="input" value="<%=DenJi_ %>" />
                                </td>
                                </tr>
                                <tr class="tdbg">
                                <td style="width:30%;height:25px" class="TD2">
                                <b>农场经验</b>
                                </td>
                                <td class="TD3">
                                <input type="text" name="JingYan" class="input" value="<%=JingYan_ %>" />
                                </td>
                                </tr>
                                <tr class="tdbg">
                                <td style="width:30%;height:25px" class="TD2">
                                <b>农场金币</b>
                                </td>
                                <td class="TD3">
                                <input type="text" name="JinBi" class="input" value="<%=JinBi_ %>" />
                                </td>
                                </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="修改农场" class="input3" />
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