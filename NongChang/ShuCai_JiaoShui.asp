﻿<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
    
    
    
        Dim ID,TuDiWeiZhi,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm_CaiDi] WHERE [ShiFouCunZaiGanHan]='0' AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid,Conn,1,1
	Dim ShiFouCunZai
        If Rs.EOF AND Rs.BOF Then
            ShiFouCunZai=false
	Else
            ShiFouCunZai=true
	End If
	Rs.Close()

	If ShiFouCunZai Then
		CuoWu("您已经浇过水了")
	End If
        '========更新菜地
    
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiGanHan]='0' WHERE [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid)
        '========结束
        
        Call ZengJiaJingYan(2)
        If CLng(FarmID)<>ID Then
            Call FaSongXiaoXi(0,ID,MingChen&"帮你的作物浇了水。")
        End If
        
        Call GengXinZhuangTai("浇水")
        
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=JiaoShui&ID="&ID,sid))
    
        Page_End()
    End Sub



    Call Page_Load()

 %>