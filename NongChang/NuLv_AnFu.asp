<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%





    Sub Page_Load()
    
        Page_Start()
    
        Dim Act,ID
        Act=CLng(Request.QueryString("Act"))
        ID=CLng(Request.QueryString("ID"))
        
        Dim CaoZuo
        
        Select Case Act
        Case 0
            CaoZuo="逛商场"
        Case 1
            CaoZuo="住酒店"
        Case 2
            CaoZuo="泡温泉"
        End Select
    
        Dim NuLvID,NuLvMingChen
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [NuLvID],[NuLvMingChen] FROM [Farm_NuLv] WHERE [AnFuCiShu]<6 AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" AND [ID]="&ID,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            Rs.Close()
            CuoWu("一个奴隶只能安抚6次")
        Else
        
            NuLvID=CLng(Rs("NuLvID"))
            NuLvMingChen=Rs("NuLvMingChen")
        
        End If
        Rs.Close()
        
        Randomize
        Dim SuiJiZhi
        SuiJiZhi=CLng(Rnd*5)+3
        Randomize
        Dim S2
        S2=CLng(Rnd*1)
        Dim DanWei
        If S2=0 Then
            DanWei="金币"
        Else
            DanWei="经验"
        End If
        
        Call FaSongXiaoXi(0,FarmID,"您对"&NuLvMingChen&"实施安抚["&CaoZuo&"]，对方获得了"&SuiJiZhi&DanWei)
        Call FaSongXiaoXi(0,NuLvID,MingChen&"对你实施安抚["&CaoZuo&"]，您获得了"&SuiJiZhi&DanWei)
        
        If S2=0 Then
            Call ZengJiaJinBi2(SuiJiZhi,NuLvID)
        Else
            Call ZengJiaJingYan2(SuiJiZhi,NuLvID)
        End If
    
        Conn.Execute("UPDATE [Farm_NuLv] SET [AnFuCiShu]=[AnFuCiShu]+1 WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" AND [ID]="&ID)

        Response.Redirect(ChuLiDiZhi(DiZhiTou&"WoDeNuLv.asp",sid))    
        Page_End()
    
    End Sub
    Call Page_Load()







 %>