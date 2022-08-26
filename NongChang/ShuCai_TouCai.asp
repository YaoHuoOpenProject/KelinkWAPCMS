<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
        
    
        Dim ID,TuDiWeiZhi,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("page"))
        
        If ID=CLng(FarmID) Then
            CuoWu("您自己的菜地")
        End If
        
        '========菜地数据
        
        Dim ShuCaiID,ShengYuShuLiang,ShuCaiMingChen,XianJingJiLv,ChengShuShiJian,JiaSu
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiID],[XianJingJiLv],[ShengYuShuLiang],[ShuCaiMingChen],[ChengShuShiJian],[JiaSu] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            CuoWu("菜地不存在")
        Else
        
            ShuCaiID=CLng(Rs("ShuCaiID"))
            ShengYuShuLiang=CLng(Rs("ShengYuShuLiang"))
            ShuCaiMingChen=Rs("ShuCaiMingChen")
            ChengShuShiJian=CDate(Rs("ChengShuShiJian"))
            JiaSu=CLng(Rs("JiaSu"))
            XianJingJiLv=CLng(Rs("XianJingJiLv"))
            Rs.Close()
        
        End If
        
        If Not DateAdd("n",-JiaSu,ChengShuShiJian)<Now() Then
            CuoWu("作物尚未成熟")
        End If
        
        Rs.Open "SELECT [ID] FROM [Farm_NuLv] WHERE [SuoShuNongChang]="&ID&" AND [NuLvID]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Not Rs.EOF Then
            CuoWu("您已经成为了对方的奴隶，两天内不能再偷此农场的作物")
        End If
        Rs.Close()
        
        If XianJingJiLv>0 Then
            Call ZhuaXiaoTou(XianJingJiLv,ID,TuDiWeiZhi)
        End If
        
        '========结束
        
        '========是否已偷过
        Rs.Open "SELECT [ID] FROM [Farm_TouCaiJiLu] WHERE [NongChangID]="&CLng(FarmID)&" AND [MuBiaoNongChangID]="&ID&" AND [MuBiaoCaiDi]="&TuDiWeiZhi&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouYiTouGuo
        If Rs.BOF AND Rs.EOF Then
            ShiFouYiTouGuo=false
        Else
            ShiFouYiTouGuo=true
        End If
        Rs.Close()
        
        If ShiFouYiTouGuo Then
            
            CuoWu("已经不多，不能再偷了。")
        
        End If
        
        
        '========结束
        
        '========蔬菜数据
        Dim ShuCaiShouJia,SuoYing
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiShouJia],[SuoYing] FROM [Farm_ShuCai] WHERE [ID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            CuoWu("蔬菜不存在")
        Else
        
            ShuCaiShouJia=CLng(Rs("ShuCaiShouJia"))
            SuoYing=CLng(Rs("SuoYing"))
            Rs.Close()
        
        End If
        
        
        '========结束
        
        If ShengYuShuLiang=1 Then
            CuoWu("最后一个不能偷")
        End If
        
        
        '========更新菜地
        
        
        Dim ShuLiang
        Randomize
        ShuLiang=CLng(1*Rnd)+1
        If ShengYuShuLiang=2 Then
            ShuLiang=1        
        End If
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShengYuShuLiang]=[ShengYuShuLiang]-"&ShuLiang&" WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        
        
        
        
        '=======结束
        
        
        ZengJiaJingYan(ShuLiang)
        
        
        '=======更新物品
        
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_WuPing")
        
        Rs.Open "SELECT [ID] FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&FarmID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiWuPing
        
        If Rs.BOF AND Rs.EOF Then
            ShiFouCunZaiWuPing=false
        Else
            ShiFouCunZaiWuPing=true
        End If
        Rs.Close()
        
        If ShiFouCunZaiWuPing Then
        
        
            Conn.Execute("UPDATE [Farm_WuPing] SET [ShuCaiShuLiang]=[ShuCaiShuLiang]+"&ShuLiang&" WHERE [SuoShuNongChang]="&FarmID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid)
        
        Else
        
            
            Conn.Execute("INSERT INTO [Farm_WuPing]([ID],[ShuCaiID],[ShuCaiMingChen],[ShuCaiShouJia],[ShuCaiShuLiang],[SuoShuNongChang],[siteid],[SuoYing])"_
                &"VALUES("&ZGID&",'"&ShuCaiID&"',N'"&CheckSql(ShuCaiMingChen)&"','"&ShuCaiShouJia&"','"&ShuLiang&"','"&FarmID&"',"&siteid&","&SuoYing&")")
        
        
        End If
        
        
        '========结束
        
        '========偷菜记录
            ZGID=ZuiGaoID("Farm_TouCaiJiLu")
            Conn.Execute("INSERT INTO [Farm_TouCaiJiLu]([ID],[NongChangID],[MuBiaoNongChangID],[MuBiaoCaiDi],[siteid])"_
                &"VALUES("&ZGID&",'"&FarmID&"','"&ID&"',N'"&TuDiWeiZhi&"',"&siteid&")")
        
        '========结束
        
        '========更新偷菜次数
            Conn.Execute("UPDATE [Farm] SET [TouCaiCiShu]=[TouCaiCiShu]+1 WHERE [ID]="&FarmID)
        '========结束
        
        '=======偷菜消息
        Call FaSongXiaoXi(0,ID,MingChen&"(ID:"&FarmID&")在你家摘了["&ShuLiang&"个"&ShuCaiMingChen&"]。")
        '========结束
        
        Call FaSongXiaoXi(0,FarmID,"您成功偷取了["&ShuCaiMingChen&"]，共["&ShuLiang&"个]。")
        
        Call GengXinZhuangTai("偷到了"&ShuLiang&"个["&ShuCaiMingChen&"]。")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ShouHuo&ID="&ID,sid))
        
    
        Page_End()
    End Sub
    
    Sub ZhuaXiaoTou(XianJingJiLv,ID,TuDiWeiZhi)
        Randomize
        Dim SuiJiShu
        SuiJiShu=CInt(100*Rnd)
        If SuiJiShu>(XianJingJiLv-1) Then Exit Sub
        
        Randomize
        SuiJiShu=CInt(3&Rnd)+3
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET [ShengYuShuLiang]=[ShengYuShuLiang]+"&SuiJiShu&",[XianJingJiLv]=0 WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_NuLv")
        Conn.Execute("INSERT INTO [Farm_NuLv]([ID],[NuLvID],[NuLvMingChen],[ChengFaCiShu],[AnFuCiShu],[ZhuaHuoShiJian],[SuoShuNongChang],[siteid])"_
            &"VALUES("&ZGID&","&FarmID&",N'"&CheckSql(MingChen)&"',0,0,'"&Year(now())&"-"&Right("0"&Month(now()),2)&"-"&Right("0"&Day(now()),2)&" 00:00:00"&"',"&ID&","&siteid&")")
            
        Call FaSongXiaoXi(0,FarmID,"您掉入陷阱，成为了奴隶，两天内不能在此农场偷菜。")
        Call FaSongXiaoXi(0,ID,MingChen&"掉入了您的陷阱，成为了您的奴隶，同时您的作物获得增产。")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ShouHuo&ID="&ID,sid))
    End Sub
    
    
    Call Page_Load()





 %>