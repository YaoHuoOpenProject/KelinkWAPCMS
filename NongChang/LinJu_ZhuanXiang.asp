<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
    
    
        Select Case Request.QueryString("Act")
        Case "XiaGe"
            XiaGe()
        Case "ShangGe"
            ShangGe()
        End Select
    
    
    
    
    
    
    
    
        Page_End()
    End Sub
    
    
    Sub XiaGe()
    
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        
        If ID=CLng(FarmID) Then
            Rs.Open "SELECT [NongChangID] FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" ORDER BY [NongChangID]",Conn,1,1
        Else
            Rs.Open "SELECT [NongChangID] FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&FarmID&" AND [NongChangID]>"&ID&" AND [siteid]="&siteid&" ORDER BY [NongChangID]",Conn,1,1
        End If
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp",sid))
        Else
            ID=CLng(Rs("NongChangID"))
            Rs.Close()
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?ID="&ID,sid))
        End If
    
    End Sub
    
    Sub ShangGe()
    
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        
        If ID=CLng(FarmID) Then
            Rs.Open "SELECT [NongChangID] FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid&" ORDER BY [NongChangID] DESC",Conn,1,1
        Else
            Rs.Open "SELECT [NongChangID] FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&FarmID&" AND [NongChangID]<"&ID&" AND [siteid]="&siteid&" ORDER BY [NongChangID] DESC",Conn,1,1
        End If
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp",sid))
        Else
            ID=CLng(Rs("NongChangID"))
            Rs.Close()
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?ID="&ID,sid))
        End If
    
    End Sub
    
    Call Page_Load()




 %>