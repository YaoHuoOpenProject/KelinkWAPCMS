<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<!--#include file="UpLoadClass.asp"-->
<%


Response.ContentType="text/html"

Dim SiteID_,LOAD_Str



Sub YanZhengDenLu()



    



End Sub


Sub ZengJiaShuCai()

    Dim Request2
    Set Request2=new UpLoadClass
    
    
    
    Request2.FileType="jpg"
    Request2.SavePath="Images/"
    Request2.Open()
    
    Dim ShuCaiMingChen,ZhongZhiJiDu,ChengShuShiJian,ZaiCiChengShu,YuJiChanLiang,ShuCaiShouJia,ShouHuoJingYan,ZhongZhiDenJi,ShuCaiJianJie
    
    
    ShuCaiMingChen=Request2.Form("ShuCaiMingChen")
    If ShuCaiMingChen="" Then
        Response.Write("�߲����Ʋ���Ϊ��")
        Response.End()
    End If
    ZhongZhiJiDu=CLng(Request2.Form("ZhongZhiJiDu"))
    ChengShuShiJian=CLng(Request2.Form("ChengShuShiJian"))
    ZaiCiChengShu=CLng(Request2.Form("ZaiCiChengShu"))
    YuJiChanLiang=CLng(Request2.Form("YuJiChanLiang"))
    ShuCaiShouJia=CLng(Request2.Form("ShuCaiShouJia"))
    ShouHuoJingYan=CLng(Request2.Form("ShouHuoJingYan"))
    ZhongZhiDenJi=CLng(Request2.Form("ZhongZhiDenJi"))
    
    
    
    Dim ShuCaiTuPian
    ShuCaiTuPian=Request2.Form("ShuCaiTuPian")
    
    If ShuCaiTuPian="" Then
        Response.Write("ֻ���ϴ�jpgͼƬ")
        Response.End()
    End If
    
    Dim SuoYing
    SuoYing=ZuiGaoID("Farm_ShuCai")
    
    Dim FSO
    Set FSO=Server.CreateObject("Scripting.FileSystemObject")
    
   
    If FSO.FileExists(Server.MapPath("Images/s"&SuoYing&".jpg")) Then
        FSO.DeleteFile(Server.MapPath("Images/s"&SuoYing&".jpg"))
    End If
    
    Call FSO.MoveFile(Server.MapPath("Images/"&ShuCaiTuPian),Server.MapPath("Images/s"&SuoYing&".jpg"))
    
    Conn.Execute("INSERT INTO [sys_wap_files]([userid],[username],[book_classid],[book_title],[book_ext],[book_size],[book_file])"_
        &"VALUES('"&siteid&"',N'"&CheckSql(Session("username"))&"','0',N'WEB[�߲�ͼƬ]',N'"&Request2.Form("ShuCaiTuPian_Ext")&"','"&Request2.Form("ShuCaiTuPian_Size")&"',N'/NongChang/Images/s"&SuoYing&".jpg')")

    ShuCaiTuPian=Left(ShuCaiTuPian,InStr(ShuCaiTuPian,".")-1)
    
    Conn.Execute("INSERT INTO [Farm_ShuCai]([ID],[ShuCaiMingChen],[SuoYing],[ZhongZhiJiDu],[ChengShuShiJian],[ZaiCiChengShu],[YuJiChanLiang],[ShuCaiShouJia],[ShouHuoJingYan],[ZhongZhiDenJi],[siteid])"_
        &"VALUES("&SuoYing&",N'"&CheckSql(ShuCaiMingChen)&"',"&SuoYing&","&ZhongZhiJiDu&","&ChengShuShiJian&","&ZaiCiChengShu&","&YuJiChanLiang&","&ShuCaiShouJia&","&ShouHuoJingYan&","&ZhongZhiDenJi&","&SiteID_&")")
    
    LOAD_Str="window.close();opener.location.reload()"
    
End Sub


Sub Page_Load()
    YanZhengDenLu()
    Conn_Open()
    SiteID_=CLng(siteid)
    
    If Request.QueryString("Act")="En" Then
        ZengJiaShuCai()
    End If
    
    
    Conn_Close()


End Sub




Call Page_Load()

 %><html>
 
 <head>
 <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
 <title>����ũ���߲�</title>
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
 
 
 
 <form method="post" action="ShuCai_ZengJia.asp?Act=En" enctype="multipart/form-data">
 
 
 

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
                  <td width="98%" height="24" valign="middle">�����߲�
 
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
                                    
                                    �����߲� 
                                    
                                    </b></TD>
                                </TR>
              
                        <tr class="tdbg">
                        <td style="width:30%;height:25px" class="TD2">
                        
                        <b>�߲�����</b>
                        </td>
                        <td class="TD3">
                        
                        
                        <input type="text" name="ShuCaiMingChen" class="input" maxlength="50" />
                        
                        
                        
                        
                        
                        </td>
                        
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>�߲�ͼƬ(����jpg��ʽ)</b>
                        </td>
                        <td class="TD3">
                        <input type="file" name="ShuCaiTuPian" class="input" />
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>��ֲ����</b>
                        </td>
                        <td class="TD3">
                        
                        <input type="text" name="ZhongZhiJiDu" class="input" value="1" />��
                        
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>����ʱ��</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ChengShuShiJian" class="input" value="1" />Сʱ
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>�ٴγ���</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ZaiCiChengShu" class="input" value="1" />Сʱ
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>�������</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="YuJiChanLiang" class="input" value="1" />��
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>�߲��ۼ�</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ShuCaiShouJia" class="input" value="1" />��� <b>ע�⣺�߲��ۼ۲��������ۼۡ������ۼ�=�߲��ۼ�*��ֲ����*5��</b>
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>�ջ���</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ShouHuoJingYan" class="input" value="1" />��
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        <b>��ֲ�ȼ�</b>
                        </td>
                        <td class="TD3">
                        <input type="text" name="ZhongZhiDenJi" class="input" value="1" />��
                        </td>
                        </tr>
                        <tr class="tdbg">
                        <td class="TD2" style="height:25px">
                        &nbsp;
                        </td>
                        <td class="TD3">
                        <input type="submit" value="�����߲�" class="input3" />
                        <input type="reset" value="������д" class="input3" />
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