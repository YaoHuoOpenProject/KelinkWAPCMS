<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%





    
Sub YanZhengDenLu()



    



End Sub
Dim ShuJuLieBiao,FenYeTiaoZhuan,FenLeiMingChen
    Sub Page_Load()
    
        YanZhengDenLu()
        
        Dim Rs,ID
        ID=CLng(Request.QueryString("ID"))
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [FenLeiMingChen] FROM [ZhiDao_FenLei] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            Rs.Close()
            Response.Write("分类不存在<br/>")
            Response.End()
        Else
            FenLeiMingChen=Rs("FenLeiMingChen")
        End If
        Rs.Close()
        Rs.Open "SELECT * FROM [ZhiDao_XiaoFenLei] WHERE [siteid]="&siteid&" AND [SuoShuFenLei]="&ID,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            
            ShuJuLieBiao="共0条记录 首页 上一页 下一页 尾页 页次：0/0页"
        Else
            Rs.PageSize=20
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
            
                If Rs.EOF Then Exit For
            
                ShuJuLieBiao=ShuJuLieBiao&"<tr align=""center"" bgcolor="""
                If i Mod 2 = 0 Then
                    ShuJuLieBiao=ShuJuLieBiao&"#e0e5f5"
                Else
                    ShuJuLieBiao=ShuJuLieBiao&""
                End If
                
                
                ShuJuLieBiao=ShuJuLieBiao&"""     onMouseDown=""selectRow(this);"" onmouseover=""this.className='menuItemOver'"" onmouseout=""this.className='menuItem'"" >"
            
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD1"">"&Rs("ID")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Server.HTMLEncode(Rs("FenLeiMingChen"))&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2""><a href=""#"" onclick=""window.open('Web_XiaoFenLei_XiuGai.asp?ID="&Rs("ID")&"','_blank','width=400,height=400,scrollbars=yes')"">修改</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD3""><a href=""Web_XiaoFenLei_ShanChu.asp?ID="&Rs("ID")&"&page="&Page&"&fid="&ID&""" onclick=""if(!confirm('真的要删除吗？')){return false}"">删除</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"</tr>"
            
            
                Rs.MoveNext()
            
            
            
            
            
            
            Next
            
            
                
                FenYeTiaoZhuan=FenYeTiaoZhuan&"共<font color=""red"">"&Rs.RecordCount&"</font>条记录 "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_XiaoFenLei.asp?ID="&ID&"&page=1"">首页</a> "
                If Page>1 AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_XiaoFenLei.asp?ID="&ID&"&page="&(Page-1)&""">上一页</a> "
                Else
                
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"上一页 "
                End If
                If Page<Rs.PageCount AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_XiaoFenLei.asp?ID="&ID&"&page="&(Page+1)&""">下一页</a> "
                Else
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"下一页 "
                End If
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_XiaoFenLei.asp?ID="&ID&"&page="&Rs.PageCount&""">尾页</a> "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"页次：<font color=""red"">"&Page&"</font>/"&Rs.PageCount&"页"
        End If
        Rs.Close()
        
    End Sub
    Call Page_Load()





 %><html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>小分类管理</title>
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
                  <td width="98%" height="24" valign="middle"><a href="Web_FenLei.asp">知道分类管理</a> &gt; <%=Server.HTMLEncode(FenLeiMingChen) %>
 
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
                <input type="button" value="分类管理" class="input3" onclick="location.href='Web_FenLei.asp'" />
                <input type="button" value="问题管理" class="input3" onclick="location.href='Web_index.asp'" />
                <input type="button" value="回答管理" class="input3" onclick="location.href='Web_HuiDa.asp'" />
                <input type="button" value="增加小分类" class="input3" onclick="window.open('Web_XiaoFenLei_ZengJia.asp?ID=<%=ID %>','_blank','width=400,height=400,scrollbar=yes')" />
    </div>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center" class="title">
    <td height="25" class="TD_title3" width="10%">
    <b>
    ID
    </b>
    </td>
    <td height="25" class="TD_title3" width="20%">
    <b>
    名称
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    修改
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    删除
    </b>
    </td>
    </tr>
    <%=ShuJuLieBiao %>
    </table>
    
    
    
    
    
    
    
<table align='center'>
<tr>
<td>
<form method="get" action="Web_index.asp">
<%=FenYeTiaoZhuan %> 转到<input type="text" size="4" name="page" /><input type="submit" value="GO" />
</form>
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










</body>
</html>