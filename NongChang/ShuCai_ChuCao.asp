<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
    
    
    
        Dim ID,TuDiWeiZhi,CPage,Rs
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm_CaiDi] WHERE [ShiFouCunZaiZaCao]='0' AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid,Conn,1,1
	Dim ShiFouCunZaiCaiDi
	If Rs.EOF AND Rs.BOF Then
		ShiFouCunZaiCaiDi=false
	Else
		ShiFouCunZaiCaiDi=true
	End If
	Rs.Close()

	If ShiFouCunZaiCaiDi Then
		CuoWu("你已经除过草了")
	End If
        
        '========更新菜地
    
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiZaCao]='0' WHERE [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid)
        '========结束
        
        Call ZengJiaJingYan(2)
        
        If CLng(FarmID)<> ID Then
            Call FaSongXiaoXi(0,ID,MingChen&"帮你的作物除了草。")
        End If
        
        Call GengXinZhuangTai("除草")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ChuCao&ID="&ID,sid))
    
        Page_End()
    End Sub



    Call Page_Load()

 %>