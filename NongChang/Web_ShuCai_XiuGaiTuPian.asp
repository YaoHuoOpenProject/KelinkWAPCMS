<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<!--#include file="UpLoadClass.asp"-->
<%



Response.ContentType="text/html"

Dim SiteID_,LOADStr,ID,ShuXing

    Sub Page_Load()
    
        Conn_Open()
        YanZhengDenLu()
        
        ID=CLng(Request.QueryString("ID"))
        If ID<27 Then
            Response.Write("系统默认图片不能更改")
            Response.End()
        End If
        ShuXing=(Request.QueryString("sx"))
        
        If Request.QueryString("Act")="En" Then
            ShangChuanTuPian()
        End If
        Conn_Close()
    End Sub
    
    Sub ShangChuanTuPian()
        
        Dim Request2
        Set Request2=new UpLoadClass
    
    
    
        Request2.FileType="jpg"
        Request2.SavePath="Images/"
        Request2.Open()
    
        Dim ShuCaiTuPian
        ShuCaiTuPian=Request2.Form("ShuCaiTuPian")
        
        If ShuCaiTuPian="" Then
            Response.Write("只能上传JPG图片")
            Response.End()
        End If
        
        
    Dim FSO
    Set FSO=Server.CreateObject("Scripting.FileSystemObject")
    If FSO.FileExists(Server.MapPath("Images/"&ID&"-"&ShuXing&".jpeg")) Then
        deleteAFile(Server.MapPath("Images/"&ID&"-"&ShuXing&".jpeg"))
    Else
        
    Conn.Execute("INSERT INTO [sys_wap_files]([userid],[username],[book_classid],[book_title],[book_ext],[book_size],[book_file])"_
        &"VALUES('"&siteid&"',N'"&CheckSql(Session("username"))&"','0',N'WEB[蔬菜生长图片]',N'jpeg','"&Request2.Form("ShuCaiTuPian_Size")&"',N'/NongChang/Images/"&ID&"-"&ShuXing&".jpeg')")
    End If
    Call FSO.MoveFile(Server.MapPath("Images/"&ShuCaiTuPian),Server.MapPath("Images/"&ID&"-"&ShuXing&".jpeg"))
    
        LOADStr="window.close();opener.location.reload();"
    End Sub
    Call Page_Load()


Sub YanZhengDenLu()



    



End Sub


 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>增加农场蔬菜</title>
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
 <body onload="<%=LOADStr %>">
 
 
 
 <form method="post" action="Web_ShuCai_XiuGaiTuPian.asp?Act=En&ID=<%=ID %>&sx=<%=Server.UrlEncode(ShuXing) %>" enctype="multipart/form-data">
 
 
 

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
                  <td width="98%" height="24" valign="middle">增加蔬菜
 
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
                                    
                                    上传图片 
                                    
                                    </b></TD>
                                </TR>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>蔬菜图片(仅限jpg格式)</b>
                        </td>
                        <td class="TD3">
                        <input type="file" name="ShuCaiTuPian" class="input" />
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="上传" class="input3" />
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