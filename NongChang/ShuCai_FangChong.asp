<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
        Dim ID,TuDiWeiZhi,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShIFouCunZaiBingChong]='1' WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        If CLng(FarmID)<>ID Then
            Call FaSongXiaoXi(0,ID,MingChen&"在你的作物里放了一条虫。")
        End If
        
        GengXinZhuangTai("放虫")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=FangChong&ID="&ID,sid))
    
        Page_End()
    End Sub



    Call Page_Load()

 %>