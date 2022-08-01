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




    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT * FROM [Farm_ShuCai] WHERE [siteid]=0 OR [siteid]="&SiteID_&" ORDER BY [ID] DESC",Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
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
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2""><img src=""images/s"&Rs("SuoYing")&".jpg"" alt="".."" /><a href=""Web_ShuCai_TuPian.asp?ID="&Rs("SuoYing")&""">作物生长图片</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Server.HTMLEncode(Rs("ShuCaiMingChen"))&"</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("ZhongZhiJiDu")&"季</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("ChengShuShiJian")&"小时</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("YuJiChanLiang")&"个</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("ShuCaiShouJia")&"金币</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("ShouHuoJingYan")&"点</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2"">"&Rs("ZhongZhiDenJi")&"级</td>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD2""><a href=""#"" onclick=""window.open('Web_ShuCai_XiuGai.asp?ID="&Rs("ID")&"','_blank','toolbar=no,scrollbars=yes,width=600,height=600')"">修改</a>"
                ShuJuLieBiao=ShuJuLieBiao&"<td height=""22"" class=""TD3""><a href=""ShuCai_ShanChu.asp?ID="&Rs("ID")&""" onclick=""if(!confirm('真的要删除吗？')){return false;}"">删除</a></td>"
                ShuJuLieBiao=ShuJuLieBiao&"</tr>"
            
            
            
            
                Rs.MoveNext()
            Next
            
                FenYeTiaoZhuan=FenYeTiaoZhuan&"共<font color=""red"">"&Rs.RecordCount&"</font>条记录 "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_ShuCaiGuanLi.asp?page=1"">首页</a> "
                If Page>1 AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_ShuCaiGuanLi.asp?page="&(Page-1)&""">上一页</a> "
                Else
                
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"上一页 "
                End If
                If Page<Rs.PageCount AND Rs.PageCount<>1 Then
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_ShuCaiGuanLi.asp?page="&(Page+1)&""">下一页</a> "
                Else
                    FenYeTiaoZhuan=FenYeTiaoZhuan&"下一页 "
                End If
                FenYeTiaoZhuan=FenYeTiaoZhuan&"<a href=""Web_ShuCaiGuanLi.asp?page="&Rs.PageCount&""">尾页</a> "
                FenYeTiaoZhuan=FenYeTiaoZhuan&"页次：<font color=""red"">"&Page&"</font>/"&Rs.PageCount&"页"
    End If
    Rs.Close()






End Sub


Call Page_Load()










 %><html>
 
 
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>

 <title>蔬菜管理</title>

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
                  <td width="98%" height="24" valign="middle">网站管理 &gt;&gt; 蔬菜管理         
 
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
              <input type="button" value="蔬菜管理" class="input3" onclick="location.href='Web_ShuCaiGuanLi.asp'" />
              &nbsp;
              <input type="button" value="农场设置" class="input3" onclick="location.href='Web_SheZhi.asp'" />
              &nbsp;
              <input type="button" value="农场管理" class="input3" onclick="location.href='Web_NongChangGuanLi.asp'" />
              &nbsp;
              <input type="button" value="菜地管理" class="input3" onclick="location.href='Web_CaiDiGuanLi.asp'" />
              &nbsp;
    <input type="button" value="增加蔬菜" class="input3" onclick="window.open('ShuCai_ZengJia.asp','_blank','toolbar=no,scrollbars=yes,width=600,height=600')" />
              &nbsp;
            <input type="button" value="导入系统默认蔬菜(26个)" class="input3" onclick="if(confirm('真的要导入吗？')){location.href='Web_ShuCaiGuanLi_HuiFu.asp'}" />
    </div>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    
    
    <tr align="center" class="title">
    
    <td height="25" class="TD_title3" width="5%">
    <b>
    ID
    </b>
    </td>
    <td height="25" class="TD_title3" width="15%">
    蔬菜图片
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    蔬菜名称
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    种植季度
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    成熟时间
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    预计产量
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    蔬菜售价
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    收获经验
    </b>
    </td>
    <td height="25" class="TD_title3" width="10%">
    <b>
    种植等级
    </b>
    </td>
    <td height="25" class="TD_title3" width="5%">
    <b>
    修改
    </b>
    </td>
    <td height="25" class="TD_title3" width="5%">
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
<form method="get" action="Web_ShuCaiGuanLi.asp">
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