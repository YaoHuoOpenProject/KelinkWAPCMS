<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%


Response.ContentType="text/html"



Dim SiteID_,ShengJiKongZhi_,YouXiBanBen_,DenJiXianZhi_,ZhuanHuanBiLi_,ShiFeiCiShu_,TuDiJiaGe_

Sub YanZhengDenLu()



    



End Sub

Sub ChuShiHua()
    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ShengJiKongZhi],[YouXiBanBen],[DenJiXianZhi],[ZhuanHuanBiLi],[ShiFeiCiShu],[TuDiJiaGe] FROM [Farm_SheZhi] WHERE [siteid]="&SiteID_,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        ShengJiKongZhi_=30
        YouXiBanBen_=0
        DenJiXianZhi_=0
        ZhuanHuanBiLi_=100
        TuDiJiaGe_=2000000
    Else
        ShengJiKongZhi_=CLng(Rs("ShengJiKongZhi"))
        YouXiBanBen_=CLng(Rs("YouXiBanBen"))
        DenJiXianZhi_=CLng(Rs("DenJiXianZhi"))
        ZhuanHuanBiLi_=CLng(Rs("ZhuanHuanBiLi"))
        If IsNull(Rs("ShiFeiCiShu")) Then
            ShiFeiCiShu_=10
        Else
            ShiFeiCiShu_=CLng(Rs("ShiFeiCiShu"))
        End If
        If IsNull(Rs("TuDiJiaGe")) Then
            TuDiJiaGe_=2000000
        Else
            TuDiJiaGe_=CLng(Rs("TuDiJiaGe"))
        End If
    End If
    Rs.Close()
    

End Sub

Sub BaoCun()

    ShengJiKongZhi_=CLng(Request.Form("ShengJiKongZhi"))
    YouXiBanBen_=CLng(Request.Form("YouXiBanBen"))
    DenJiXianZhi_=CLng(Request.Form("DenJiXianZhi"))
    ZhuanHuanBiLi_=CLng(Request.Form("ZhuanHuanBiLi"))
    ShiFeiCiShu_=CLng(Request.Form("ShiFeiCiShu"))
    TuDiJiaGe_=CLng(Request.Form("TuDiJiaGe"))

    Dim Rs,ShiFouCunZai
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ID] FROM [Farm_SheZhi] WHERE [siteid]="&SiteID_,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        ShiFouCunZai=false
    Else
        ShiFouCunZai=true
    End If
    Rs.Close()
    
    If ShiFouCunZai Then
        Conn.Execute("UPDATE [Farm_SheZhi] SET [ShengJiKongZhi]="&ShengJiKongZhi_&",[YouXiBanBen]="&YouXiBanBen_&",[DenJiXianZhi]="&DenJiXianZhi_&",[ZhuanHuanBiLi]="&ZhuanHuanBiLi_&",[ShiFeiCiShu]="&ShiFeiCiShu_&",[TuDiJiaGe]="&TuDiJiaGe_&" WHERE [siteid]="&SiteID_)
    Else
        Conn.Execute("INSERT INTO [Farm_SheZhi]([ID],[ShengJiKongZhi],[YouXiBanBen],[DenJiXianZhi],[siteid],[ZhuanHuanBiLi],[ShiFeiCiShu],[TuDiJiaGe])"_
            &"VALUES("&ZuiGaoID("Farm_SheZhi")&","&ShengJiKongZhi_&","&YouXiBanBen_&","&DenJiXianZhi_&","&SiteID_&","&ZhuanHuanBiLi_&","&ShiFeiCiShu_&","&TuDiJiaGe_&")")
    End If

End Sub

Function BanBenZhuangTai(BanBen)

    Select Case BanBen
    Case 0
        If YouXiBanBen_=0 Then
            BanBenZhuangTai=" selected=""selected"""
        End If
    Case 1
        If YouXiBanBen_=1 Then
            BanBenZhuangTai=" selected=""selected"""
        End If
    Case 2
        If YouXiBanBen_=2 Then
            BanBenZhuangTai=" selected=""selected"""
        End If
    End Select
End Function

Sub Page_Load()

    YanZhengDenLu()
    Conn_Open()
    SiteID_=CLng(siteid)
    
    If Request.QueryString("Act")="En" Then
        BaoCun()
    Else
        ChuShiHua()
    End If
    Conn_Close()

End Sub





Call Page_Load()



 %>
 <html>
 
 
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <title>修改农场设置</title>
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
                  <td width="98%" height="24" valign="middle">网站管理 &gt;&gt; 农场设置         
 
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
              &nbsp;<br/><br/>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif">
                        <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="Form1" action="Web_SheZhi.asp?Act=En" method="post">
                              <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <TR align=center class='title'> 
                                  <TD  height=25 colSpan=3 class="TD_title3" width="714"><b> 
                                    
                                    农场设置 
                                    
                                    </b></TD>
                                </TR>
                                <TR class="tdbg" > 
                                    
                                  <TD width="205" height="26" align="right" class="TD2" ><b>升级控制：</b></TD>
                                  <TD class="TD3" colspan="2" width="508"> <div align="left">&nbsp; 
                                  
                                  <input type="text" name="ShengJiKongZhi" value="<%=ShengJiKongZhi_ %>" class="input" />
                                  <br/>通过调整此设置，可以自定义游戏的等级计算方法，计算方法是 (当前等级+1)*设置值，示例：如果我现在的等级是1那升级需要的经验就是100，计算公式：(1+1)*50
                                  
                                  </div></TD>
                                </TR>
                                <!--tr class="tdbg">
                                    <td width="205" height="26" align="right" class="TD2"><b>游戏版本：</b></td>
                                    <td class="TD3" colspan="2" width="508">
                                    <div align="left">&nbsp;
                                    <select name="YouXiBanBen">
                                    <option value="0"<%=BanBenZhuangTai(0) %>>低速版</option>
                                    <option value="1"<%=BanBenZhuangTai(1) %>>中速版</option>
                                    <option value="2"<%=BanBenZhuangTai(2) %>>高速版</option>
                                    </select>作物生长速度控制，值说明：0:低速版 1:中速版 2:高速版，低速版则是跟QQ农场相同设置，中速版则作了一些调整，而高速版则是生长速度非常快的一个版本，低速版、中速版适合在实际使用上应用，而高速版则可以用来测试
                                    </div>
                                    </td>
                                </tr-->
                                <tr class="tdbg">
                                    <td width="205" height="26" align="right" class="TD2"><b>进入前金币必须大于：</b></td>
                                    <td class="TD3" colspan="2" width="508">
                                    <div align="left">
                                    &nbsp;
                                    <input type="text" name="DenJiXianZhi" value="<%=DenJiXianZhi_ %>" />
                                    </div>
                                    </td>
                                </tr>
                                <tr class="tdbg">
                                    <td width="205" height="25" align="right" class="TD2"><b>100网站金币等于多少农场金币：</b></td>
                                    <td class="TD3" colspan="2" width="508">
                                    <div align="left">
                                    &nbsp;
                                    <input type="text" name="ZhuanHuanBiLi" value="<%=ZhuanHuanBiLi_ %>" /> (要大于100，小于100关闭兑换)
                                    </div>
                                    </td>
                                </tr>
                                <tr class="tdbg">
                                    <td width="205" height="25" align="right" class="TD2"><b>一天施肥最高次数：</b></td>
                                    <td class="TD3" colspan="2" width="508">
                                    &nbsp;
                                    <input type="text" name="ShiFeiCiShu" value="<%=ShiFeiCiShu_ %>" />
                                    </td>
                                </tr>
                                <tr class="tdbg">
                                    <td width="205" height="25" align="right" class="TD2"><b>土地价格：</b></td>
                                    <td class="TD3" colspan="2" width="508">
                                    &nbsp;
                                    <input type="text" name="TuDiJiaGe" value="<%=TuDiJiaGe_ %>" />
                                    </td>
                                </tr>
                                <tr class="tdbg">
                                    <td colspan="3" style="text-align:center">
                                    	<br/><br/>
                                        <input type="submit" class="input3" value="保存设置" />
                                        &nbsp;<input type="button" class="input3" value="重新填写" />
                                    </td>
                                </tr>
                              </TABLE>
      </form></td>
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
          	 <a href="http://www.3gair.com" target="_blank">3gair.com</a>
          	
          	<!--a href="http://www.kelink.com" target="_blank">Kelink.com</a> 
             
            <font size="2">Email: gzkelink@126.com  QQ:85403498</font--></td>
         
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