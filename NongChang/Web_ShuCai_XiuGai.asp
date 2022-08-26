<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%


Response.ContentType="text/html"

Dim SiteID_,LOAD_Str

Dim ID,ShuCaiMingChen,ZhongZhiJiDu,ChengShuShiJian,ZaiCiChengShu,YuJiChanLiang,ShuCaiShouJia,ShouHuoJingYan,ZhongZhiDenJi

Sub Page_Load()
    YanZhengDenLu()
    Conn_Open()
    SiteID_=CLng(siteid)
    ID=CLng(Request.QueryString("ID"))
    
    If Request.QueryString("Act")="En" Then
        XiuGaiShuCai()
    Else
        ChuShiHua()
    End If
    
    
    Conn_Close()
End Sub


Sub YanZhengDenLu()



    



End Sub

Sub ChuShiHua()

    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ShuCaiMingChen],[ZhongZhiJiDu],[ChengShuShiJian],[ZaiCiChengShu],[YuJiChanLiang],[ShuCaiShouJia],[ShouHuoJingYan],[ZhongZhiDenJi] FROM [Farm_ShuCai] WHERE [siteid]="&SiteID_&" AND [ID]="&ID,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        Rs.Close()
        Exit Sub
    Else
        ShuCaiMingChen=Rs("ShuCaiMingChen")
        ZhongZhiJiDu=Rs("ZhongZhiJiDu")
        ChengShuShiJian=Rs("ChengShuShiJian")
        ZaiCiChengShu=Rs("ZaiCiChengShu")
        YuJiChanLiang=Rs("YuJiChanLiang")
        ShuCaiShouJia=Rs("ShuCaiShouJia")
        ShouHuoJingYan=Rs("ShouHuoJingYan")
        ZhongZhiDenJi=Rs("ZhongZhiDenJi")
        Rs.Close()
    End If

End Sub

Sub XiuGaiShuCai()

        ShuCaiMingChen=Request.Form("ShuCaiMingChen")
        ZhongZhiJiDu=CLng(Request.Form("ZhongZhiJiDu"))
        ChengShuShiJian=CLng(Request.Form("ChengShuShiJian"))
        ZaiCiChengShu=CLng(Request.Form("ZaiCiChengShu"))
        YuJiChanLiang=CLng(Request.Form("YuJiChanLiang"))
        ShuCaiShouJia=CLng(Request.Form("ShuCaiShouJia"))
        ShouHuoJingYan=CLng(Request.Form("ShouHuoJingYan"))
        ZhongZhiDenJi=CLng(Request.Form("ZhongZhiDenJi"))

        If ShuCaiMingChen="" Then
            Exit Sub
        End If
        
        Conn.Execute("UPDATE [Farm_ShuCai] SET "_
            &"[ShuCaiMingChen]=N'"&CheckSql(ShuCaiMingChen)&"',"_
            &"[ZhongZhiJiDu]=N'"&ZhongZhiJiDu&"',"_
            &"[ChengShuShiJian]=N'"&ChengShuShiJian&"',"_
            &"[ZaiCiChengShu]=N'"&ZaiCiChengShu&"',"_
            &"[YuJiChanLiang]=N'"&YuJiChanLiang&"',"_
            &"[ShuCaiShouJia]=N'"&ShuCaiShouJia&"',"_
            &"[ShouHuoJingYan]=N'"&ShouHuoJingYan&"',"_
            &"[ZhongZhiDenJi]=N'"&ZhongZhiDenJi&"' WHERE [siteid]="&SiteID_&" AND [ID]="&ID)
            
       Load_Str="opener.location.reload();window.close()"
End Sub

Call Page_Load()










 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>修改农场蔬菜</title>
 
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
 <body onload="<%=LOAD_Str %>">
 
 
 
 <form method="post" action="Web_ShuCai_XiuGai.asp?Act=En&amp;ID=<%=ID %>">
 
 
 

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
                  <td width="98%" height="24" valign="middle">修改蔬菜
 
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
                                    
                                    修改蔬菜 
                                    
                                    </b></TD>
                                </TR>
              
                        <tr class="tdbg">
                        <td style="width:30%;height:25px" class="TD2">
                        
                        <b>蔬菜名称</b>
                        </td>
                        <td class="TD3">
                        
                        
                        <input type="text" name="ShuCaiMingChen" class="input" maxlength="50" value="<%=Server.HtmlEncode(ShuCaiMingChen) %>" />
                        
                        
                        
                        
                        
                        </td>
                        
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>种植季度</b>
                        </td>
                        <td class="TD3">
                        
                        <input type="text" name="ZhongZhiJiDu" class="input" value="<%=ZhongZhiJiDu %>" />季
                        
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>成熟时间</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ChengShuShiJian" class="input" value="<%=ChengShuShiJian %>" />小时
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>再次成熟</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ZaiCiChengShu" class="input" value="<%=ZaiCiChengShu %>" />小时
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>成熟产量</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="YuJiChanLiang" class="input" value="<%=YuJiChanLiang %>" />个
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>蔬菜售价</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ShuCaiShouJia" class="input" value="<%=ShuCaiShouJia %>" />金币 <b>注意：蔬菜售价不是种子售价。种子售价=蔬菜售价*种植季度*5。</b>
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>收获经验</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ShouHuoJingYan" class="input" value="<%=ShouHuoJingYan %>" />点
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>种植等级</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ZhongZhiDenJi" class="input" value="<%=ZhongZhiDenJi %>" />级
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="修改蔬菜" class="input3" />
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