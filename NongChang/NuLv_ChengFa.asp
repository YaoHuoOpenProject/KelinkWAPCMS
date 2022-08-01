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
            CaoZuo="扫大街"
        Case 1
            CaoZuo="守菜地"
        Case 2
            CaoZuo="关黑屋"
        End Select
        
        Dim NuLvID,NuLvMingChen
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [NuLvID],[NuLvMingChen] FROM [Farm_NuLv] WHERE [ChengFaCiShu]<6 AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" AND [ID]="&ID,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            Rs.Close()
            CuoWu("一个奴隶只能惩罚6次")
        Else
            NuLvID=CLng(Rs("NuLvID"))
            NuLvMingChen=Rs("NuLvMingChen")
        End If
        Rs.Close()
        
        Randomize
        Dim SuiJiZhi
        SuiJiZhi=CLng(Rnd*50)+3
        Randomize
        Dim S2
        S2=CLng(Rnd*1)
        Dim DanWei
        If S2=0 Then
            DanWei="金币"
        Else
            DanWei="经验"
        End If
        
        Call FaSongXiaoXi(0,FarmID,"您对"&NuLvMingChen&"实施惩罚["&CaoZuo&"]，获得了"&SuiJiZhi&DanWei)
        Call FaSongXiaoXi(0,NuLvID,MingChen&"对你实施惩罚["&CaoZuo&"]，为他增加了"&SuiJiZhi&DanWei)
        
        
        If S2=0 Then
            Call ZengJiaJinBi2(SuiJiZhi,FarmID)
        Else
            Call ZengJiaJingYan2(SuiJiZhi,FarmID)
        End If
    
        Conn.Execute("UPDATE [Farm_NuLv] SET [ChengFaCiShu]=[ChengFaCiShu]+1 WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" AND [ID]="&ID)

        Response.Redirect(ChuLiDiZhi(DiZhiTou&"WoDeNuLv.asp",sid))    
        Page_End()
    
    End Sub
    Call Page_Load()








 %>