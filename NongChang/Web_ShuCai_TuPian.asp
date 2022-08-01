<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%


Response.ContentType="text/html"

Dim SiteID_,TuPianLieBiao
Sub Page_Load()

    Conn_Open()

    SiteID_=CLng(siteid)
    Call YanZhengDenLu()
    
    
    Dim ID
    ID=CLng(Request.QueryString("ID"))
    
    TuPianLieBiao=""
    
    For i=1 To 6
    
    
        
        Select Case i
        Case 1
            TuPianLieBiao=TuPianLieBiao&"种子状态：<br/>"
        Case 2
            TuPianLieBiao=TuPianLieBiao&"发芽状态：<br/>"
        Case 3
            TuPianLieBiao=TuPianLieBiao&"小叶子状态：<br/>"
        Case 4
            TuPianLieBiao=TuPianLieBiao&"大叶子状态：<br/>"
        Case 5
            TuPianLieBiao=TuPianLieBiao&"开花状态：<br/>"
        Case 6
            TuPianLieBiao=TuPianLieBiao&"成熟状态：<br/>"
        End Select
    
        TuPianLieBiao=TuPianLieBiao&"<table border=""0"" cellspacing=""0"" cellpadding=""0"" style=""width:100%"">"
        TuPianLieBiao=TuPianLieBiao&"<tr><td><img src=""Images/"&ID&"-"&i&"-0-0-0.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-0-0-0")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>正常</td>"
        If i>2 Then
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-0-0-1.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-0-0-1")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>干旱</td>"
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-0-1-0.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-0-1-0")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>杂草</td>"
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-0-1-1.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-0-1-1")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>干旱杂草</td>"
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-1-0-0.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-1-0-0")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>病虫</td>"
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-1-0-1.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-1-0-1")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>干旱病虫</td>"
            TuPianLieBiao=TuPianLieBiao&"<td><img src=""Images/"&ID&"-"&i&"-1-1-1.jpeg"" style=""cursor:hand"" onclick=""window.open('Web_ShuCai_XiuGaiTuPian.asp?ID="&ID&"&sx="&Server.URLEncode(i&"-1-1-1")&"','_blank','width=400,height=400')"" alt=""点击图片修改""/><br/>干旱病虫杂草</td>"
        Else
        
        End If
        
        
        TuPianLieBiao=TuPianLieBiao&"</tr></table>&nbsp;"
    
    
    
    
    Next
    

    Conn_Close()



End Sub

Sub ShengChengTuPianLieBiao()


End Sub

Sub YanZhengDenLu()



    



End Sub
Call Page_Load()









 %><html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>蔬菜管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
<body>









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
                  <td width="98%" height="24" valign="middle">网站管理 &gt;&gt; <a href="Web_ShuCaiGuanLi.asp">蔬菜管理</a> &gt; 作物生长图片         
 
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
    <td align="center" valign="top"> 
    
    <div style="text-align:left">
    <%=TuPianLieBiao %>
    </div>

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










</body>
</html>