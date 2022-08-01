<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
    
    
    
        Dim ID,TuDiWeiZhi,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        
        
        '========更新菜地
    
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiBingChong]='0' WHERE [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&ID&" AND [siteid]="&siteid)
        '========结束
        
        
        If CLng(FarmID)<>ID Then
            Call FaSongXiaoXi(0,ID,MingChen&"帮你的作物除了虫。")
        End If
        
        GengXinZhuangTai("除虫")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ChuChong&ID="&ID,sid))
    
        Page_End()
    End Sub



    Call Page_Load()

 %>