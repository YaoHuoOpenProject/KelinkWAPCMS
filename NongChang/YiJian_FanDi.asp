<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
    
        Page_Start()
    
        Dim ID,Rs
        
        ID=CLng(Request.QueryString("ID"))
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm_CaiDi] WHERE [ShiFouKongDi]=1 AND [ShiFouWeiFanDi]=1 AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        For i=1 To Rs.RecordCount
        
            Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouWeiFanDi]=0 WHERE [ID]="&Rs("ID"))
            
            Rs.MoveNext()
        Next
        
        Call GengXinZhuangTai("翻地")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?ID="&ID,sid))
    
        Page_End()
    End Sub
    
    Call Page_Load()


%>