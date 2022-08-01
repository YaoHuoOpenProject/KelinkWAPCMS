<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%




Response.ContentType="text/html"

Dim SiteID_,ShuJuLieBiao,FenYeTiaoZhuan


Sub Page_Load()

    Conn_Open()
    SiteID_=CLng(siteid)
    Call YanZhengDenLu()
    Call ShengChengLieBiao()
    Conn_Close()

End Sub

Sub YanZhengDenLu()



    



End Sub

Sub ShengChengLieBiao()

    Dim Rs,SQL
    SQL="SELECT [ID],[MingChen],[DenJi],[JingYan],[JinBi],[ChuangJianShiJian],[ZuiHouShuaXinShiJian] FROM [Farm] WHERE [siteid]="&SiteID_
    SQL=SQL&" AND "
    Select Case Request.QueryString("yj")
    Case "0"
        
        SQL=SQL&"[ID]="&Clng(Request.QueryString("nc"))
    Case "1"
        SQL=SQL&"[MingChen]='"&CheckSql(Request.QueryString("nc"))&"'"
    Case Else
        SQL=SQL&"1=1"
    End Select
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open SQL,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        FenYeTiaoZhuan="共0条记录 首页 上一页 下一页 尾页 页次：0/0页"
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
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Server.HTMLEncode(Rs("MingChen"))&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("DenJi")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("JinBi")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("ChuangJianShiJian")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2"">"&Rs("ZuiHouShuaXinShiJian")&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD2""><a href=""#"" onclick=""window.open('Web_NongChang_XiuGai.asp?ID="&Rs("ID")&"','_blank','toolbar=no,scrollbars=yes,width=600,height=600')"">修改</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td class=""TD3""><a href=""Web_NongChang_ShanChu.asp?ID="&Rs("ID")&""" onclick=""if(!confirm('真的要删除吗？')){return false;}"">删除</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"</tr>"
                
            
            
            
            
            
                Rs.MoveNext()
            Next
            
                FenYeTiaoZhuan=FenYeTiaoZhuan&"共<font color=""red"">"&Rs.RecordCount&"</font>条记录 "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_NongChangGuanLi.asp?page=1"">首页</a> "
                If Page>1 AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_NongChangGuanLi.asp?page="&(Page-1)&""">上一页</a> "
                Else
                
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"上一页 "
                End If
                If Page<Rs.PageCount AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_NongChangGuanLi.asp?page="&(Page+1)&""">下一页</a> "
                Else
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"下一页 "
                End If
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_NongChangGuanLi.asp?page="&Rs.PageCount&""">尾页</a> "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"页次：<font color=""red"">"&Page&"</font>/"&Rs.PageCount&"页"
    End If
    
    Rs.Close()
End Sub

Call Page_Load()







 %><html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>农场管理</title>
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
                  <td width="98%" height="24" valign="middle">网站管理 &gt;&gt; 农场管理         
 
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
              
              <input type="button" value="蔬菜管理" class="input3" onclick="location.href='Web_ShuCaiGuanLi.asp'" />
              &nbsp;
              <input type="button" value="农场设置" class="input3" onclick="location.href='Web_SheZhi.asp'" />
              &nbsp;
              <input type="button" value="农场管理" class="input3" onclick="location.href='Web_NongChangGuanLi.asp'" />
              &nbsp;
              <input type="button" value="菜地管理" class="input3" onclick="location.href='Web_CaiDiGuanLi.asp'" />
              &nbsp;<br />
              <table width="100%" style="border-left:solid 1px #eeeeee;border-bottom:solid 1px #eeeeee" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="20%">
                &nbsp;&nbsp;<b>查找农场</b>
                </td>
                <td>
                <input type="text" name="nc" value="0" id="nc" />依据:<select name="yj" id="yj">
                	<option value="1">农场名称</option>
                <option value="0">ID</option>
                
                </select>
                <input type="submit" value="查找" onclick="location.href='Web_NongChangGuanLi.asp?nc='+encodeURIComponent(document.getElementById('nc').value)+'&yj='+document.getElementById('yj').value" />
                </td>
              </tr>
              </table>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif">
                        <tr> 
    <td align="center" valign="top"> 
      <FORM name="Form1" action="Web_SheZhi.asp?Act=En" method="post">
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                <td height="25" class="TD_title3" width="10%">
                                <b>
                                <input type="checkbox" onclick="this.checked?QuanXuan('d'):BuXuan('d')" />ID</b>
                                </td>
                                <td height="25" class="TD_title3" width="20%">
                                <b>
                                农场名称
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="10%">
                                <b>
                                农场等级
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="10%">
                                <b>
                                农场金币
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="15%">
                                <b>
                                创建时间
                                </b>
                                </td>
                                <td height="25" class="TD_title3" width="15%">
                                <b>
                                最后访问时间
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
                                </TR>
                                <%=ShuJuLieBiao %>
                              </TABLE>
      </form></td>
  </tr>
</table>
<%
    If ShuJuLieBiao<>"" Then
        Response.Write("<div align=""left"">操作：<a href=""#"" onclick=""if(HuoQuZhi('d')!=''){if(confirm('真的要删除吗？')){location.href='Web_NongChang_ShanChu.asp?ID='+HuoQuZhi('d');}}"">删除</a></div>")
    End If
 %>
</table>
<table align='center'>
<tr>
<td>
<form method="get" action="Web_NongChangGuanLi.asp">
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