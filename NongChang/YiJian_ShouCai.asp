<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
    
        Page_Start()
    
        Dim ID,Rs,CaiDiID,ShuCaiID,TuDiWeiZhi,ShengYuShuLiang,ZhongZhiJiDu,DangQianJiDu,ShuCaiMingChen,ShiFouCunZaiGanHan,ShiFouCunZaiZaCao,ShiFouCunZaiBingChong,SuoYing,ChengShuShiJian,JiaSu
        
        ID=CLng(Request.QueryString("ID"))
        
        If ID<>CLng(FarmID) Then
            CuoWu("您不能收菜")
        End If
        
        Dim Rs2
        
        Set Rs2=Server.CreateObject("ADODB.RecordSet")
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[ShuCaiID],[ShuCaiMingChen],[TuDiWeiZhi],[SuoYing],[ShengYuShuLiang],[ZhongZhiJiDu],[DangQianJiDu],[ShiFouCunZaiGanHan],[ShiFouCunZaiZaCao],[ShiFouCunZaiBingChong],[ChengShuShiJian],[JiaSu] FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        For i=1 To Rs.RecordCount
        
        
            CaiDiID=CLng(Rs("ID"))
            TuDiWeiZhi=CLng(Rs("TuDiWeiZhi"))
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
        
        If DateAdd("n",-JiaSu,ChengShuShiJian)<Now() AND ShuCaiID<>0 Then
        
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
        Rs2.Open "SELECT [ZaiCiChengShu],[ShouHuoJingYan],[ShuCaiShouJia],[YuJiChanLiang] FROM [Farm_ShuCai] WHERE [ID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs2.BOF AND Rs2.EOF Then
            Rs2.Close()
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
                &" WHERE [SuoShuNongChang]="&ID&" AND [ID]="&CaiDiID)
            CuoWu("蔬菜不存在")
        Else
            ZaiCiChengShu=CLng(Rs2("ZaiCiChengShu"))
            ShouHuoJingYan=CLng(Rs2("ShouHuoJingYan"))
            ShuCaiShouJia=CLng(Rs2("ShuCaiShouJia"))
            YuJiChanLiang=CLng(Rs2("YuJiChanLiang"))
            Rs2.Close()
        
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
                &" WHERE [SuoShuNongChang]="&ID&" AND [ID]="&CaiDiID)
        
        
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
                &" WHERE [SuoShuNongChang]="&ID&" AND [ID]="&CaiDiID)
        
        
        
        
        
        End If
        
        '======================偷菜记录
        
        
        Conn.Execute("DELETE FROM [Farm_TouCaiJiLu] WHERE [MuBiaoNongChangID]="&ID&" AND [MuBiaoCaiDi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        
        
        
        
        
        
        '==================结束
        
        '======================结束
        
        ZengJiaJingYan(ShouHuoJingYan)
        
        
        
        '==================如果包含物品则更新，无则创建
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_WuPing")
        
        Rs2.Open "SELECT [ID] FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&ID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiWuPing
        
        If Rs2.BOF AND Rs2.EOF Then
            ShiFouCunZaiWuPing=false
        
        Else
            ShiFouCunZaiWuPing=true
        
        End If
        Rs2.Close()
        
        
        If ShiFouCunZaiWuPing Then
        
            Conn.Execute("UPDATE [Farm_WuPing] SET [ShuCaiShuLiang]=[ShuCaiShuLiang]+"&ShengYuShuLiang&" WHERE [SuoShuNongChang]="&ID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid)
        
        Else
        
            
            Conn.Execute("INSERT INTO [Farm_WuPing]([ID],[ShuCaiID],[ShuCaiMingChen],[ShuCaiShouJia],[ShuCaiShuLiang],[SuoShuNongChang],[siteid],[SuoYing])"_
                &"VALUES("&ZGID&",N'"&ShuCaiID&"',N'"&CheckSql(ShuCaiMingChen)&"',N'"&ShuCaiShouJia&"',N'"&ShengYuShuLiang&"','"&ID&"',"&siteid&","&SuoYing&")")
        
        End If
        End If
            
            Rs.MoveNext()
        Next
        Rs.Close()
        
        Call GengXinZhuangTai("收菜")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?ID="&ID,sid))
    
        Page_End()
    End Sub
    
    Call Page_Load()


%>