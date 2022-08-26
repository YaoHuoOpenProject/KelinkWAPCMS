<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
        
        
        
        
        
        Dim G_Farm_ID,G_ShuCaiID,G_TuDiWeiZhi,CPage
        
        G_Farm_ID=CLng(Request.QueryString("ID"))
        G_ShuCaiID=CLng(Request.QueryString("scid"))
        G_TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        CPage=CLng(Request.QueryString("CPage"))
        
        
        
        
        '============农场数据
        
        
        Dim ShiFouZiJi  '是否自己的农场
        Dim NongChangMingChen   '农场名称
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [MingChen] FROM [Farm] WHERE [ID]="&G_Farm_ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            CuoWu("农场不存在")
        
        Else
        
            NongChangMingChen=Rs("MingChen")
            Rs.Close()
        
        End If
        
        If CLng(G_Farm_ID)=CLng(FarmID) Then
            ShiFouZiJi=true
        Else
            ShiFouZiJi=false
        End If
        
        
        
        
        
        
        '==============结束
        
        
        '============验证菜地
        
        
        Rs.Open "SELECT [ID] FROM [Farm_CaiDi] WHERE [ShiFouKongDi]='1' AND [TuDiWeiZhi]='"&G_TuDiWeiZhi&"' AND [SuoShuNongChang]="&G_Farm_ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            CuoWu("菜地不存在")
        
        
        End If
        Rs.Close()
        
        
        
        
        '============结束
        
        
        '============获取/验证种子数据
        
        Rs.Open "SELECT [ID] FROM [Farm_ZhongZhi] WHERE [ShuCaiID]="&G_ShuCaiID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            CuoWu("种子不存在")
        
        End If
        Rs.Close()
        
        
        
        '==========结束
        
        
        
        
        '==================获取蔬菜数据
        
        
        
        
        Dim SC_ID,SC_MingChen,SC_ZhongZhiJiDu,SC_YuJiChanLiang,SC_ChengShuShiJian,SC_SuoYing
        
        
        
        SC_ID=G_ShuCaiID
        
        Rs.Open "SELECT [ShuCaiMingChen],[SuoYing],[ZhongZhiJiDu],[YuJiChanLiang],[ChengShuShiJian] FROM [Farm_ShuCai] WHERE [ID]="&SC_ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Rs.Close()
            CuoWu("蔬菜不存在")
        Else
            SC_MingChen=Rs("ShuCaiMingChen")
            SC_ZhongZhiJiDu=Rs("ZhongZhiJiDu")
            SC_YuJiChanLiang=Rs("YuJiChanLiang")
            SC_ChengShuShiJian=Rs("ChengShuShiJian")
            SC_SuoYing=CLng(Rs("SuoYing"))
            Rs.Close()
        End If
        
        
        
        '==================结束
        
        
        
        
        
        
        
        '================种菜
        
        
        Dim CD_TuDiWeiZhi,CD_ShiFouKongDi,CD_ShiFouWeiFanDi,CD_ShuCaiID,CD_ShuCaiMingChen,CD_ShengYuShuLiang,CD_ShiFouCunZaiGanHan,CD_ShiFouCunZaiZaCao,CD_ShiFouCunZaiBingChong,CD_ZhongZhiShiJian,CD_ChengShuShiJian,CD_SuoShuNongChang,CD_ZhongZhiJiDu,CD_DangQianJiDu
        
        CD_TuDiWeiZhi=G_TuDiWeiZhi
        CD_ShiFouKongDi=false
        CD_ShiFouWeiFanDi=false
        CD_ShuCaiID=SC_ID
        CD_ShuCaiMingChen=SC_MingChen
        CD_ShengYuShuLiang=SC_YuJiChanLiang
        CD_ShiFouCunZaiGanHan=false
        CD_ShiFouCunZaiZaCao=false
        CD_ShiFouCunZaiBingChong=false
        CD_ZhongZhiShiJian=now()
        Dim DanWei
        Select Case BanBen
            Case 0
                DanWei="h"
            Case 1
                DanWei="n"
            Case Else
                DanWei="s"
        End Select
        CD_ChengShuShiJian=DateAdd(DanWei,CLng(SC_ChengShuShiJian),now())
        CD_SuoShuNongChang=G_Farm_ID
        CD_ZhongZhiJiDu=SC_ZhongZhiJiDu
        CD_DangQianJiDu=1
        
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET "_
            &"[ShiFouKongDi]='0',"_
            &"[ShiFouWeiFanDi]='0',"_
            &"[ShuCaiID]=N'"&CD_ShuCaiID&"',"_
            &"[ShuCaiMingChen]=N'"&CheckSql(SC_MingChen)&"',"_
            &"[ShengYuShuLiang]=N'"&CD_ShengYuShuLiang&"',"_
            &"[ShiFouCunZaiGanHan]='0',"_
            &"[ShiFouCunZaiZaCao]='0',"_
            &"[ShiFouCunZaiBingChong]='0',"_
            &"[ZhongZhiShiJian]=N'"&CD_ZhongZhiShiJian&"',"_
            &"[ChengShuShiJian]=N'"&CD_ChengShuShiJian&"',"_
            &"[SuoShuNongChang]=N'"&CD_SuoShuNongChang&"',"_
            &"[ZhongZhiJiDu]=N'"&CD_ZhongZhiJiDu&"',"_
            &"[DangQianJiDu]=N'"&CD_DangQianJiDu&"',"_
            &"[SuoYing]="&SC_SuoYing&""_
            &" WHERE  [TuDiWeiZhi]='"&G_TuDiWeiZhi&"' AND [SuoShuNongChang]="&G_Farm_ID&" AND [siteid]="&siteid)
        
        
        
        '==================结束
        
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm_ZhongZhi] WHERE [ZhongZhiShuLiang]<'2' AND [SuoShuNongChang]='"&FarmID&"' AND [ShuCaiID]='"&CD_ShuCaiID&"' AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiZhongZhi
        
        If Rs.BOF AND Rs.EOF Then
            ShiFouCunZaiZhongZhi=false
        
        Else
            ShiFouCunZaiZhongZhi=true
        
        End If
        Rs.Close()
        
        
        
        
        
        '==================减少/删除种子
        
        
        
        
        If ShiFouCunZaiZhongZhi Then
            Conn.Execute("DELETE FROM [Farm_ZhongZhi] WHERE [SuoShuNongChang]='"&FarmID&"' AND [ShuCaiID]='"&CD_ShuCaiID&"' AND [siteid]="&siteid)
        Else
            Conn.Execute("UPDATE [Farm_ZhongZhi] SET [ZhongZhiShuLiang]=[ZhongZhiShuLiang]-1 WHERE [SuoShuNongChang]='"&FarmID&"' AND [ShuCaiID]='"&CD_ShuCaiID&"' AND [siteid]="&siteid)
        End If
        
        
        
        
        
        
        
        
        
        '=========================结束
        
        
        Call FaSongXiaoXi(0,FarmID,"您在农场["&NongChangMingChen&"]里种植了作物["&SC_MingChen&"]。")
        If Not ShiFouZiJi Then
            Call FaSongXiaoXi(0,G_Farm_ID,MingChen&"在您的农场里种植了作物["&SC_MingChen&"]。")
        End If
        
        Call ZengJiaJingYan2(3,FarmID)
        
        Call GengXinZhuangTai("种植了蔬菜")
        
        
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=ZhongZhi&ID="&G_Farm_ID&"&scid="&CD_ShuCaiID,sid))
        
        
        
        
        
        Page_End()
    End Sub
    
    
    Call Page_Load()

 %>