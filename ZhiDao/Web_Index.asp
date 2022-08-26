<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%

Sub YanZhengDenLu()



    



End Sub
Dim ShuJuLieBiao,FenYeTiaoZhuan
    Sub Page_Load()
    
        YanZhengDenLu()
    
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT * FROM [ZhiDao_WenTi] WHERE [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        
        If Rs.EOF AND Rs.BOF Then
            FenYeTiaoZhuan="共0条记录 首页 上一页 下一页 尾页 页次：0/0页"
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
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Server.HTMLEncode(Rs("BiaoTi"))&"</td>"
                dim aa
                aa=Rs("TiWenZheNiChen")
                if isNUll(aa) then aa="" 
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Server.HTMLEncode(aa)&"(ID:"&Rs("TiWenZheID")&")</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"
                If CBool(Rs("ShiFouTuiJian")) Then
                    ShuJuLieBiao=ShuJuLieBiao&"推荐"
                Else
                    ShuJuLieBiao=ShuJuLieBiao&"未推荐"
                End If
                ShuJuLieBiao=ShuJuLieBiao&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("HuiDaShu")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"
                Select Case CInt(Rs("WenTiZhuangTai"))
                Case 0
                    ShuJuLieBiao=ShuJuLieBiao&"待解决"
                Case 1
                    ShuJuLieBiao=ShuJuLieBiao&"已解决"
                Case 2
                    ShuJuLieBiao=ShuJuLieBiao&"已关闭"
                End Select
                ShuJuLieBiao=ShuJuLieBiao&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("TiWenShiJian")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"
                If CBool(Rs("ShiFouTuiJian")) Then
                    ShuJuLieBiao=ShuJuLieBiao&"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Web_WenTi_TuiJian.asp?Act=QX&ID="&Rs("ID")&"&rurl="&HuoQuURL()))&""">取消推荐</a>"
                Else
                    ShuJuLieBiao=ShuJuLieBiao&"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Web_WenTi_TuiJian.asp?Act=SC&ID="&Rs("ID")&"&rurl="&HuoQuURL()))&""">设为推荐</a>"
                End If
                ShuJuLieBiao=ShuJuLieBiao&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD3"">"
                ShuJuLieBiao=ShuJuLieBiao&"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Web_WenTi_ShanChu.asp?ID="&Rs("ID")&"&rurl="&HuoQuURL()))&""" onclick=""if(!confirm('真的要删除吗？')){return false}"">删除</a>"
                ShuJuLieBiao=ShuJuLieBiao&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"</tr>"
                Rs.MoveNext()
            Next
            
            
            
            
            
            
                
                FenYeTiaoZhuan=FenYeTiaoZhuan&"共<font color=""red"">"&Rs.RecordCount&"</font>条记录 "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_index.asp?page=1"">首页</a> "
                If Page>1 AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_index.asp?page="&(Page-1)&""">上一页</a> "
                Else
                
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"上一页 "
                End If
                If Page<Rs.PageCount AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_index.asp?page="&(Page+1)&""">下一页</a> "
                Else
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"下一页 "
                End If
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_index.asp?page="&Rs.PageCount&""">尾页</a> "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"页次：<font color=""red"">"&Page&"</font>/"&Rs.PageCount&"页"
        End If
        Rs.Close()
    
    
    
    
    End Sub
    Call Page_Load()






 %><html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>问题管理</title>
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
                  <td width="98%" height="24" valign="middle">知道管理
 
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
    	<input type="button" value="问题管理" class="input3" onclick="location.href='Web_index.asp'" />
                <input type="button" value="分类管理" class="input3" onclick="location.href='Web_FenLei.asp'" />
                
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
    标题
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    提问者
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    是否推荐
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    回答数
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    问题状态
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    提问时间
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    推荐/取消
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