<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%


Response.ContentType="text/html"

Dim SiteID_,ShuJuLieBiao,FenYeTiaoZhuan,ID

Sub YanZhengDenLu()



    



End Sub

Sub Page_Load()

    Conn_Open()
    SiteID_=CLng(siteid)
    If Request.QueryString("ID")="" Then
        ID=0
    Else
        ID=CLng(Request.QueryString("ID"))
    End If
    Call YanZhengDenLu()
    Call ShengChengLieBiao()
    Conn_Close()

End Sub

Sub ShengChengLieBiao()

    Dim Rs,SQL
    SQL="SELECT [ID],[TuDiWeiZhi],[SuoShuNongChang] FROM [Farm_CaiDi] WHERE [siteid]="&SiteID_
    If ID<>0 Then
        SQL=SQL&" AND [SuoShuNongChang]="&ID
    End If
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open SQL,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        FenYeTiaoZhuan="��0����¼ ��ҳ ��һҳ ��һҳ βҳ ҳ�Σ�0/0ҳ"
    Else
        Rs.PageSize=10
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
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD1""><input type=""checkbox"" name=""d"" value="""&Rs("ID")&""" />"&Rs("ID")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">�˵�:"&Rs("TuDiWeiZhi")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">ID:"&Rs("SuoShuNongChang")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD3""><a href=""Web_CaiDi_ShanChu.asp?ID="&Rs("ID")&"&rurl="&HuoQuURL()&""" onclick=""if(!confirm('���Ҫɾ����')){return false;}"">ɾ��</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"</tr>"
                
            
            
            
            
            
                Rs.MoveNext()
            Next
            
                FenYeTiaoZhuan=FenYeTiaoZhuan&"��<font color=""red"">"&Rs.RecordCount&"</font>����¼ "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_CaiDiGuanLi.asp?page=1&amp;ID="&ID&""">��ҳ</a> "
                If Page>1 AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_CaiDiGuanLi.asp?page="&(Page-1)&"&amp;ID="&ID&""">��һҳ</a> "
                Else
                
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"��һҳ "
                End If
                If Page<Rs.PageCount AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_CaiDiGuanLi.asp?page="&(Page+1)&"&amp;ID="&ID&""">��һҳ</a> "
                Else
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"��һҳ "
                End If
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_CaiDiGuanLi.asp?page="&Rs.PageCount&"&amp;ID="&ID&""">βҳ</a> "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"ҳ�Σ�<font color=""red"">"&Page&"</font>/"&Rs.PageCount&"ҳ"
    End If
    
    Rs.Close()
End Sub


Call Page_Load()













 %><html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>�˵ع���</title>
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
 <script type="text/javascript">
 function QuanXuan(namestr)
{
    var Eles=document.getElementsByName(namestr);
    for(var i=0;i<Eles.length;i++)
        Eles[i].checked=true;
}
function BuXuan(namestr)
{
    var Eles=document.getElementsByName(namestr);
    for(var i=0;i<Eles.length;i++)
        Eles[i].checked=false;
}
function HuoQuZhi(namestr)
{
    var Eles=document.getElementsByName(namestr);
    var FanHuiZhi="";
    for(var i=0;i<Eles.length;i++)
        if(Eles[i].checked)
            FanHuiZhi+=FanHuiZhi==""?Eles[i].value:","+Eles[i].value;
    return encodeURIComponent(FanHuiZhi);
}
 </script>
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
                  <td width="98%" height="24" valign="middle">��վ���� &gt;&gt; �˵ع���         
 
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
              <form method="get" action="Web_CaiDiGuanLi.asp">
              <input type="button" value="�߲˹���" class="input3" onclick="location.href='Web_ShuCaiGuanLi.asp'" />
              &nbsp;
              <input type="button" value="ũ������" class="input3" onclick="location.href='Web_SheZhi.asp'" />
              &nbsp;
              <input type="button" value="ũ������" class="input3" onclick="location.href='Web_NongChangGuanLi.asp'" />
              &nbsp;
              <input type="button" value="�˵ع���" class="input3" onclick="location.href='Web_CaiDiGuanLi.asp'" />
              &nbsp;
              <input type="button" value="���Ӳ˵�" class="input3" onclick="window.open('Web_CaiDi_ZengJia.asp','_blank','toolbar=no,scrollbars=yes,width=600,height=600')" />
              &nbsp;
              ũ��ID:<input type="text" name="ID" /><input type="submit" value="����" /></form>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif">
                        <tr> 
    <td align="center" valign="top"> 
      <FORM name="Form1" action="Web_SheZhi.asp?Act=En" method="post">
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                <td height="25" class="TD_title3" width="20%">
                                <b>
                                <input type="checkbox" onclick="this.checked?QuanXuan('d'):BuXuan('d')" />ID</b>
                                </td>
                                <td height="25" class="TD_title3" width="30%">
                                <b>
                                �˵�λ��
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="20%">
                                <b>
                                ����ũ��
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="20%">
                                <b>
                                ɾ��
                                </b>
                                </td>
                                </TR>
                                <%=ShuJuLieBiao %>
                              </TABLE>
      </form></td>
  </tr>
</table>
<%
    If ShuJuLieBiao<>"" Then
        Response.Write("<div align=""left"">������<a href=""#"" onclick=""if(HuoQuZhi('d')!=''){if(confirm('���Ҫɾ����')){location.href='Web_CaiDi_ShanChu.asp?ID='+HuoQuZhi('d')+'&rurl="&HuoQuURL()&"';}}"">ɾ��</a></div>")
    End If
 %>
</table>
<table align='center'>
<tr>
<td>
<form method="get" action="Web_CaiDiGuanLi.asp">
<%=FenYeTiaoZhuan %> ת��<input type="text" size="4" name="page" /><input type="hidden" name="ID" value="<%=ID %>" /><input type="submit" value="GO" />
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