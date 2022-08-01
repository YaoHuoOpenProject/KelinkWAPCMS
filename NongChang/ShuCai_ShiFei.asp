<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
        Page_Start()
        
        
        Dim ID,TuDiWeiZhi
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        
        
        If ShiFeiCiShu<SZ_ShiFeiCiShu Then
            CuoWu("您的施肥次数已经达到上限")
        End If
        
        '菜地数据
        Dim ChengShuShiJian,Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ChengShuShiJian] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND RS.EOF Then
            CuoWu("菜地不存在")
        Else
            ChengShuShiJian=CDate(Rs("ChengShuShiJian"))
            Rs.Close()
        End If
    
    
        '更新农场
        
        Conn.Execute("UPDATE [Farm] SET [ShiFeiCiShu]=[ShiFeiCiShu]-1 WHERE [ID]="&FarmID&" AND [siteid]="&siteid)
        Dim DanWei
        Select Case BanBen
        Case 0
            DanWei="h"
        Case 1
            DanWei="n"
        Case Else
            DanWei="s"
        End Select
        
        '更新菜地
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ChengShuShiJian]='"&DateAdd(DanWei,-2,ChengShuShiJian)&"' WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        //CuoWu("UPDATE [Farm_CaiDi] SET [ChengShuShiJian]='"&DateAdd(DanWei,-2,ChengShuShiJian)&"' WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi)
        
        Call ZengJiaJingYan(2)
        If CLng(FarmID)<>ID Then
        
            Call FaSongXiaoXi(0,ID,MingChen&"帮你的作物施了肥")
        End If
        
        Call GengXinZhuangTai("施肥")

        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?Act=ShiFei&ID="&ID,sid))        
    
        Page_End()
    End Sub
    
    Call Page_Load()
 %>