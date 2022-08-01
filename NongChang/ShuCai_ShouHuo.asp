<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Function Page_Load()
    
        Page_Start()
    
    
        Dim ID,TuDiWeiZhi,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        If ID<>CLng(FarmID) Then
            CuoWu("您不能收菜")
        
        End If
        
        
        '========菜地数据
        
        Dim ShuCaiID,ShengYuShuLiang,ZhongZhiJiDu,DangQianJiDu,ShuCaiMingChen,ShiFouCunZaiGanHan,ShiFouCunZaiZaCao,ShiFouCunZaiBingChong,SuoYing,ChengShuShiJian,JiaSu
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiID],[ShuCaiMingChen],[SuoYing],[ShengYuShuLiang],[ZhongZhiJiDu],[DangQianJiDu],[ShiFouCunZaiGanHan],[ShiFouCunZaiZaCao],[ShiFouCunZaiBingChong],[ChengShuShiJian],[JiaSu] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            CuoWu("菜地不存在")
        
        Else
        
            ShuCaiID=CLng(Rs("ShuCaiID"))
            ShengYuShuLiang=CLng(Rs("ShengYuShuLiang"))
            ZhongZhiJiDu=CLng(Rs("ZhongZhiJiDu"))
            DangQianJiDu=CLng(Rs("DangQianJiDu"))
            ShuCaiMingChen=Rs("ShuCaiMingChen")
            ShiFouCunZaiGanHan=CBool(Rs("ShiFouCunZaiGanHan"))
            ShiFouCunZaiZaCao=CBool(Rs("ShiFouCunZaiZaCao"))
            ShiFouCunZaiBingChong=CBool(Rs("ShiFouCunZaiBingChong"))
            ChengShuShiJian=CDate(Rs("ChengShuShiJian"))
            JiaSu=CLng(Rs("JiaSu"))
            SuoYing=CLng(Rs("SuoYing"))
            Rs.Close()
        
        End If
        
        If Not DateAdd("n",-JiaSu,ChengShuShiJian)<Now() Then
            CuoWu("作物尚未成熟")
        End If
        
        '========减产
        
        If ShengYuShuLiang>=3 Then
        
        
            If ShiFouCunZaiGanHan Then ShengYuShuLiang=ShengYuShuLiang-1
            If ShiFouCunZaiZaCao Then ShengYuShuLiang=ShengYuShuLiang-1
            If ShiFouCunZaiBingChong Then ShengYuShuLiang=ShengYuShuLiang-1
        
        
        
        End If
        
        '=========结束
        
        '========结束
        
        '========蔬菜数据
        
        Dim ZaiCiChengShu,ShouHuoJingYan,ShuCaiShouJia,YuJiChanLiang
        Rs.Open "SELECT [ZaiCiChengShu],[ShouHuoJingYan],[ShuCaiShouJia],[YuJiChanLiang] FROM [Farm_ShuCai] WHERE [ID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
        	Conn.Execute("UPDATE [Farm_CaiDi] SET "_
                &"[ShiFouKongDi]='1',"_
                &"[XianJingJiLv]=0,"_
                &"[ShiFouWeiFanDi]='1',"_
                &"[ShuCaiID]='0',"_
                &"[ShuCaiMingChen]=N'暂无',"_
                &"[ShengYuShuLiang]='0',"_
                &"[ShiFouCunZaiGanHan]='0',"_
                &"[ShiFouCunZaiZaCao]='0',"_
                &"[ShiFouCunZaiBingChong]='0',"_
                &"[ZhongZhiShiJian]='"&now()&"',"_
                &"[ChengShuShiJian]='"&now()&"',"_
                &"[SuoShuNongChang]='"&ID&"',"_
                &"[ZhongZhiJiDu]='0',"_
                &"[DangQianJiDu]='0'"_
                &" WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
            CuoWu("蔬菜不存在")
        Else
            ZaiCiChengShu=CLng(Rs("ZaiCiChengShu"))
            ShouHuoJingYan=CLng(Rs("ShouHuoJingYan"))
            ShuCaiShouJia=CLng(Rs("ShuCaiShouJia"))
            YuJiChanLiang=CLng(Rs("YuJiChanLiang"))
            Rs.Close()
        
        End If
        
        
        
        
        '如果是最后一季，则将它转为空地
        '如果不是最后一季，则继续种植
        
        If ZhongZhiJiDu=DangQianJiDu Then
        
        
            Conn.Execute("UPDATE [Farm_CaiDi] SET "_
                &"[ShiFouKongDi]='1',"_
                &"[XianJingJiLv]=0,"_
                &"[ShiFouWeiFanDi]='1',"_
                &"[ShuCaiID]='0',"_
                &"[ShuCaiMingChen]='暂无',"_
                &"[ShengYuShuLiang]='0',"_
                &"[ShiFouCunZaiGanHan]='0',"_
                &"[ShiFouCunZaiZaCao]='0',"_
                &"[ShiFouCunZaiBingChong]='0',"_
                &"[ZhongZhiShiJian]='"&now()&"',"_
                &"[ChengShuShiJian]='"&now()&"',"_
                &"[SuoShuNongChang]='"&ID&"',"_
                &"[ZhongZhiJiDu]='0',"_
                &"[DangQianJiDu]='0',"_
                &"[JiaSu]='0'"_
                &" WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        
        Else
        
        Dim DanWei
        Select Case BanBen
            Case 0
                DanWei="h"
            Case 1
                DanWei="n"
            Case Else
                DanWei="s"
        End Select
        
        
            Conn.Execute("UPDATE [Farm_CaiDi] SET "_
                &"[ShengYuShuLiang]="&YuJiChanLiang&","_
                &"[ZhongZhiShiJian]='"&now()&"',"_
                &"[ChengShuShiJian]='"&DateAdd(DanWei,ZaiCiChengShu,now())&"',"_
                &"[DangQianJiDu]=[DangQianJiDu]+1,"_
                &"[JiaSu]='0'"_
                &" WHERE [SuoShuNongChang]="&ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        
        
        
        
        End If
        
        '======================偷菜记录
        
        
        Conn.Execute("DELETE FROM [Farm_TouCaiJiLu] WHERE [MuBiaoNongChangID]="&ID&" AND [MuBiaoCaiDi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        
        
        
        
        
        '==================结束
        
        '======================结束
        
        ZengJiaJingYan(ShouHuoJingYan)
        
        
        
        '==================如果包含物品则更新，无则创建
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_WuPing")
        
        Rs.Open "SELECT [ID] FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&ID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiWuPing
        
        If Rs.BOF AND Rs.EOF Then
            ShiFouCunZaiWuPing=false
        
        Else
            ShiFouCunZaiWuPing=true
        
        End If
        Rs.Close()
        
        
        If ShiFouCunZaiWuPing Then
        
            Conn.Execute("UPDATE [Farm_WuPing] SET [ShuCaiShuLiang]=[ShuCaiShuLiang]+"&ShengYuShuLiang&" WHERE [SuoShuNongChang]="&ID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid)
        
        Else
        
            
            Conn.Execute("INSERT INTO [Farm_WuPing]([ID],[ShuCaiID],[ShuCaiMingChen],[ShuCaiShouJia],[ShuCaiShuLiang],[SuoShuNongChang],[siteid],[SuoYing])"_
                &"VALUES("&ZGID&",N'"&ShuCaiID&"',N'"&CheckSql(ShuCaiMingChen)&"',N'"&ShuCaiShouJia&"',N'"&ShengYuShuLiang&"','"&ID&"',"&siteid&","&SuoYing&")")
        
        End If
        
        Call FaSongXiaoXi(0,FarmID,"您收获了蔬菜["&ShuCaiMingChen&"]，共["&ShengYuShuLiang&"个]。")
        
        Call GengXinZhuangTai("收获了"&ShengYuShuLiang&"个蔬菜["&ShuCaiMingChen&"]")
        
        
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ShouHuo&ID="&ID,sid))
        
        
        '========结束
    
    
        Page_End()
    End Function


    Call Page_Load()
 %>