<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
    
        Page_Start()
    
        Dim ID,TuDiWeiZhi,HuaFeiID,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        HuaFeiID=CLng(Request.QueryString("hfid"))
        CPage=CLng(Request.QueryString("CPage"))
        
        Dim TiGaoSuDu,ShuLiang
        If ShiFeiCiShu>=SZ_ShiFeiCiShu Then
            CuoWu("您今天的施肥次数已经达到上限"&ShiFeiCiShu)
        End If
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [TiGaoSuDu],[ShuLiang] FROM [Farm_WuPing_HuaFei] WHERE [ID]="&HuaFeiID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            Rs.Close()
            CuoWu("该类化肥已经没有了")
        Else
            TiGaoSuDu=CLng(Rs("TiGaoSuDu"))
            ShuLiang=CLng(Rs("ShuLiang"))
        End If
        Rs.Close()
    
        Dim ChengShuShiJian
        Rs.Open "SELECT [ChengShuShiJian] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            CuoWu("菜地不存在")
        Else
            ChengShuShiJian=CDate(Rs("ChengShuShiJian"))
        End If
        Rs.Close()
        Conn.Execute("UPDATE [Farm] SET [ShiFeiCiShu]=[ShiFeiCiShu]+1 WHERE [ID]="&FarmID)
        If ShuLiang=1 Then
            Conn.Execute("DELETE FROM [Farm_WuPing_HuaFei] WHERE [ID]="&HuaFeiID&" AND [SuoShuNongChang]="&FarmID)
        Else
            Conn.Execute("UPDATE [Farm_WuPing_HuaFei] SET [ShuLiang]=[ShuLiang]-1 WHERE [ID]="&HuaFeiID&" AND [SuoShuNongChang]="&FarmID)
        End If
        
        
        //CuoWu(ChengShuShiJian&"->"&DateAdd("n",-TiGaoSuDu,ChengShuShiJian))
        Conn.Execute("UPDATE [Farm_CaiDi] SET [JiaSu]=[JiaSu]+"&TiGaoSuDu&" WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        //CuoWu("UPDATE [Farm_CaiDi] SET [ChengShuShiJian]='"&DateAdd(DanWei,-2,ChengShuShiJian)&"' WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi)
        
        If CLng(FarmID)<>ID Then
        
            Call FaSongXiaoXi(0,ID,MingChen&"帮你的作物施了肥")
        End If
        
        Call GengXinZhuangTai("施肥")

        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=HuaFei&ID="&ID&"&hfid="&HuaFeiID,sid))        
    
        Page_End()
    End Sub
    Call Page_Load()








 %>