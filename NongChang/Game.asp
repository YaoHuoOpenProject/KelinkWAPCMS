<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
    
        Page_Start()
        
        
            '===========获取农场数据
            Dim G_Farm_ShiFouZiJi   '是否自己的菜地
            G_Farm_ShiFouZiJi=false
            Dim G_Farm_ID,G_Farm_MingChen,G_Farm_DenJi,G_Farm_JingYan,G_Farm_JinBi,G_Farm_ZuiHouShuaXinShiJian
            
            If CLng(Request.QueryString("ID"))=0 Then
                G_Farm_ID=FarmID
            Else
            
                G_Farm_ID=CLng(Request.QueryString("ID"))
            End If
            
            If CLng(G_Farm_ID)=CLng(FarmID) Then
                G_Farm_ShiFouZiJi=true
            End If
            
            Dim Rs,userid_
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [MingChen],[DenJi],[JingYan],[userid],[JinBi],[ZuiHouShuaXinShiJian] FROM [Farm] WHERE [ID]='"&CheckSql(G_Farm_ID)&"' AND [siteid]="&siteid,Conn,1,1
            
            If Not(Rs.EOF OR Rs.BOF) Then
		userid_=CLng(Rs("userid"))
                G_Farm_MingChen=Rs("MingChen")
                G_Farm_DenJi=Rs("DenJi")
                G_Farm_JingYan=Rs("JingYan")
                G_Farm_JinBi=Rs("JinBi")
                G_Farm_ZuiHouShuaXinShiJian=Rs("ZuiHouShuaXinShiJian")
            Else
                Rs.Close()
                CuoWu("农场不存在")
            End If
		Rs.Close()
	
            Dim NiChen
            Rs.Open "SELECT [userid],[nickname] FROM [user] WHERE [userid]="&userid_,Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
                Rs.Close()
                CuoWu("用户不存在")
            Else
                NiChen=Rs("nickname")
                Rs.Close()
            End If
        
        Call WML_Head(G_Farm_MingChen,"left")
            
            Response.Write("【<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ChaKan.asp?ID="&G_Farm_ID,sid))&""">"&Server.HTMLEncode(G_Farm_MingChen)+"</a>】的农场")
            Response.Write("[")
            If CDate(G_Farm_ZuiHouShuaXinShiJian)>DateAdd("n",-30,now()) Then
                Response.Write("在线")
            Else
                Response.Write("离线")
            End If
            Response.Write("]<br/>农场等级:"&G_Farm_DenJi&"级 农场金币:"&G_Farm_JinBi&"个<br/>")
		

		Response.Write("农场主:<a href=""/bbs/userinfo.aspx?siteid="&siteid&"&amp;touserid="&userid_&"&amp;sid="&SessionID&""">"&Server.HTMLEncode(NiChen)&"(ID:"&userid_&")</a><br/>")
            Response.Write("农场."_
                &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp?ID="&G_Farm_ID,sid))&""">邻居</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp?ID="&G_Farm_ID,sid))&""">留言</a>."_
                &"<a href="""_
                &Server.HTMLEncode(ChuLiDiZhi("Game.asp?Act="&Server.URLEncode(Request.QueryString("Act"))&"&ID="&G_Farm_ID,sid))&""">刷新</a><br/>")
            
        Response.Write("【所有土地】")
        If G_Farm_ID=FarmID Then
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CaiDi_GouMai.asp",sid))&""">购买</a>")
        End If
        Response.Write("<br/>")
            
            '===========获取农场数据结束
            
            '===========获取菜地数据
            
            Dim CaoZuo,ZhuangTai,ShiFouGanHan,ShiFouZaCao,ShiFouBingChong,ShiFouKongDi,ShiFouWeiFanDi,ZhuangTaiWenZi,XianJingJiLv,SuoYing,ChengShuShiJian,JiaSu
            CaoZuo=Request.QueryString("Act")
            
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&G_Farm_ID&" AND [siteid]="&siteid&" ORDER BY [TuDiWeiZhi]",Conn,1,1
            Rs.PageSize=3
            Dim Page
            If Request.QueryString("page")="" Then
                Page=1
            Else
                Page=CLng(Request.QueryString("page"))
            End If
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
                '空地、未翻地、生长中、成熟
                If Rs.EOF Then Exit For
                
                
                ShiFouKongDi=CBool(Rs("ShiFouKongDi"))
                ShiFouWeiFanDi=CBool(Rs("ShiFouWeiFanDi"))
                ShiFouGanHan=CBool(Rs("ShiFouCunZaiGanHan"))
                ShiFouZaCao=CBool(Rs("ShiFouCunZaiZaCao"))
                ShiFouBingChong=CBool(Rs("ShiFouCunZaiBingChong"))
                XianJingJiLv=CInt(Rs("XianJingJiLv"))
                SuoYing=CLng(SuoYing)
                ChengShuShiJian=CDate(Rs("ChengShuShiJian"))
                JiaSu=CLng(Rs("JiaSu"))
                            
                If DateAdd("n",-JiaSu,ChengShuShiJian)<now() Then
                    ZhuangTai=6
                    ZhuangTaiWenZi="已成熟"
                Else
                            Dim FenZhongShu,ZongFenZhongShu
                            FenZhongShu=DateDiff("n",CDate(Rs("ZhongZhiShiJian")),now())+JiaSu
                            ZongFenZhongShu=DateDiff("n",CDate(Rs("ZhongZhiShiJian")),CDate(Rs("ChengShuShiJian")))
                            
                            Dim ZhuangTai_FaYa,ZhuangTai_XiaoYeZhi,ZhuangTai_DaYeZhi,ZhuangTai_KaiHua
                            Dim FenShu
                            FenShu=CDbl(ZongFenZhongShu)/CDbl(20)
                            ZhuangTai_FaYa=CLng(FenShu*2)
                            ZhuangTai_XiaoYeZhi=CLng(FenShu*5)
                            ZhuangTai_DaYeZhi=CLng(FenShu*9)
                            ZhuangTai_KaiHua=CLng(FenShu*15)
                            
                            If FenZhongShu<ZhuangTai_FaYa Then
                                ZhuangTai=1
                                ZhuangTaiWenZi=JiSuanShiJian(ZhuangTai_FaYa-FenZhongShu)&"后发芽"
                            Else
                                If FenZhongShu<ZhuangTai_XiaoYeZhi Then
                                    ZhuangTai=2
                                    ZhuangTaiWenZi=JiSuanShiJian(ZhuangTai_XiaoYeZhi-FenZhongShu)&"后小叶子"
                                Else
                                    If FenZhongShu<ZhuangTai_DaYeZhi Then
                                        ZhuangTai=3
                                        ZhuangTaiWenZi=JiSuanShiJian(ZhuangTai_DaYeZhi-FenZhongShu)&"后大叶子"
                                    Else
                                        If FenZhongShu<ZhuangTai_KaiHua Then
                                            ZhuangTai=4
                                            ZhuangTaiWenZi=JiSuanShiJian(ZhuangTai_KaiHua-FenZhongShu)&"后开花"
                                        Else
                                            ZhuangTai=5
                                            ZhuangTaiWenZi=JiSuanShiJian(ZongFenZhongShu-FenZhongShu)&"后成熟"
                                        End If
                                    End If
                                End If
                            End If
                End If
                
                Response.Write("<img src=""Images/")
                If ShiFouKongDi Then
                    If ShiFouWeiFanDi Then
                        Response.Write("uncultivated.jpeg")
                    Else
                        Response.Write("empty.jpeg")
                    End If
                Else
                    Response.Write(Rs("SuoYing")&"-"&ZhuangTai&"-")
                    If ShiFouBingChong Then
                        Response.Write("1")
                    Else
                        Response.Write("0")
                    End If
                    Response.Write("-")
                    If ShiFouZaCao Then
                        Response.Write("1")
                    Else
                        Response.Write("0")
                    End If
                    Response.Write("-")
                    If ShiFouGanHan Then
                        Response.Write("1")
                    Else
                        Response.Write("0")
                    End If
                    Response.Write(".jpeg")
                End If
                Response.Write(""" alt=""..""/><br/>")
                Response.Write("土地"&Rs("TuDiWeiZhi"))
                
                If ShiFouKongDi Then
                    If ShiFouWeiFanDi Then
                        Response.Write("(未翻地)")
                            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CaiDi_FanDi.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">翻地</a>")
                    Else
                        Response.Write("(空地)")
                        Select Case Request.QueryString("Act")
                        Case "ZhongZhi"
                            Call ZhongZhi(G_Farm_ID,CLng(Request.QueryString("scid")),CLng(Rs("TuDiWeiZhi")),Page)
                        Case Else
                            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin.asp?ID="&G_Farm_ID&"&CPage="&Page,sid))&""">种植</a>")
                        End Select
                    End If
                Else
                        If ZhuangTai=6 Then
                            Response.Write("("&Server.HTMLEncode(Rs("ShuCaiMingChen"))&")剩"&Rs("ShengYuShuLiang")&"个,已成熟")
                            Select Case Request.QueryString("Act")
                            Case "ShouHuo"
                            
                                If G_Farm_ShiFouZiJi Then
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_ShouHuo.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">收获</a>")
                                Else
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_TouCai.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">偷菜</a>")
                                End If
                            Case Else
                                If G_Farm_ShiFouZiJi Then
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_ShouHuo.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">收获</a>")
                                Else
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_TouCai.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">偷菜</a>")
                                End If
                            End Select
                        Else
                            If ZhuangTai>2 Then
                                Call ShengChengZhuangTai(G_Farm_ID,CLng(Rs("TuDiWeiZhi")))
                            End If
                            Response.Write("(<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai.asp?ID="&Rs("ShuCaiID")&"&rurl="&Server.URLEncode(ChuLiDiZhi("Game.asp?page="&Page&"&ID="&FarmID,sid)),sid))&""">"&Server.HTMLEncode(Rs("ShuCaiMingChen"))&"</a>/"_
                            &"第"&Rs("DangQianJiDu")&"季/")
                            Response.Write(ZhuangTaiWenZi&")")
                            If G_Farm_ShiFouZiJi Then
                                If CLng(Rs("XianJingJiLv"))>0 Then
                                    Response.Write("[陷阱:"&Rs("XianJingJiLv")&"%]")
                                Else
                                    If Request.QueryString("Act")="XianJing" Then
                                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_XianJing.asp?CPage="&Page&"&ID="&G_Farm_ID&"&xjid="&CLng(Request.QueryString("xjid"))&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">设置陷阱</a>")
                                    End If
                                End If
                            End If
                            If CBool(Rs("ShiFouCunZaiGanHan")) Then
                                Response.Write("[干旱]")
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_JiaoShui.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">浇水</a>")
                            
                            End If
                            If CBool(Rs("ShiFouCunZaiZaCao")) Then
                                Response.Write("[杂草]")
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_ChuCao.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">除草</a>")
                            End If
                            If CBool(Rs("ShiFouCunZaiBingChong")) Then
                                Response.Write("[病虫]")
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_ChuChong.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">除虫</a>")
                            Else
                            If Request.QueryString("Act")="FangChong" AND( Not G_Farm_ShiFouZiJi) Then
                                If ZhuangTai<3 Then
                                    Response.Write("当前不可放虫")
                                Else
                                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_FangChong.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">放虫</a>")
                                End If
                            End If
                            If Request.QueryString("Act")="HuaFei" Then
                                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_HuaFei.asp?CPage="&Page&"&ID="&G_Farm_ID&"&hfid="&CLng(Request.QueryString("hfid"))&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">施肥</a>")
                            End If
                            End If
                            
                            If Request.QueryString("Act")="ShiFei" Then
                            
                                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_ShiFei.asp?CPage="&Page&"&ID="&G_Farm_ID&"&tdwz="&Rs("TuDiWeiZhi"),sid))&""">施肥</a>")
                            End If
                        End If
                End If
                
                Response.Write("<br/>")
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
                For i=1 To Rs.PageCount
                
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&G_Farm_ID&"&scid="&Request.QueryString("scid")&"&xjid="&Request.QueryString("xjid")&"&hfid="&Request.QueryString("hfid")&"&Act="&Request.QueryString("Act")&"&page="&i,sid))&""">")
                    If i=Page Then
                        Response.Write("["&i&"]")
                    Else
                        Response.Write(i)
                    End If
                    Response.Write("</a> ")
                
                Next
            
            End If
            
            Rs.Close()
            Response.Write("<br/>")
            
            
            '===========获取菜地数据结束
            
            '===========菜地操作开始
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin.asp?CPage="&Page&"&ID="&G_Farm_ID,sid))&""">物品</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_HuaFei.asp?CPage="&Page&"&ID="&G_Farm_ID,sid))&""">施肥</a>.")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?CPage="&Page&"&Act=FangChong&ID="&G_Farm_ID,sid))&""">放虫</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?CPage="&Page&"&Act=ShouHuo&ID="&G_Farm_ID,sid))&""">")
            If G_Farm_ShiFouZiJi Then
                Response.Write("收获")
            Else
                Response.Write("偷菜")
            End If
            Response.Write("</a><br/>")
            
            Response.Write("一键:")
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("YiJian_FanDi.asp?CPage="&Page&"&ID="&G_Farm_ID,sid))&""">翻地</a>.")
            
            Response.Write("<a href=""")
            
            If G_Farm_ShiFouZiJi Then
                Response.Write(Server.HTMLEncode(ChuLiDiZhi("YiJian_ShouCai.asp?CPage="&Page&"&ID="&G_Farm_ID,sid)))
            Else
                Response.Write(Server.HTMLEncode(ChuLiDiZhi("YiJian_TouCai.asp?CPage="&Page&"&ID="&G_Farm_ID,sid)))
            End If
            Response.Write(""">收菜</a>")
            
            'Response.Write(".<a href="""&Server.HTMLEncode(ChuLiDiZhi("YiJian_ZhongZhi.asp?CPage="&Page&"&ID="&G_Farm_ID,sid))&""">种植</a>")
            
            Response.Write("<br/><br/>")
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu_ZhuanXiang.asp?Act=ShangGe&ID="&G_Farm_ID,sid))&""">&lt;左邻</a> <a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">我的农场</a> <a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu_ZhuanXiang.asp?Act=XiaGe&ID="&G_Farm_ID,sid))&""">右舍&gt;</a><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ZaiXian.asp",sid))&""">[在线用户]</a><a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeNuLv.asp",sid))&""">[我的奴隶]</a><br/>")
            
            Call YouXiDiBu(G_Farm_ID)
            
            '===========菜地操作结束
        
        
        Call WML_End()
        
        Page_End()
    
    End Sub
    
    Sub ShengChengZhuangTai(Farm_ID,TuDiWeiZhi)
        Dim SuiJiShu
        
        
        
        Randomize
        SuiJiShu=CInt(100*Rnd)
        If SuiJiShu>2 Then Exit Sub
        
        
        
        
        
        
        Randomize
        
        SuiJiShu=CLng(2*Rnd)
        
        Select Case SuiJiShu
            Case 0
                Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiGanHan]='1' WHERE [SuoShuNongChang]="&Farm_ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
            Case 1
                Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiZaCao]='1' WHERE [SuoShuNongChang]="&Farm_ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
            Case Else
                Conn.Execute("UPDATE [Farm_CaiDi] SET [ShiFouCunZaiBingChong]='1' WHERE [SuoShuNongChang]="&Farm_ID&" AND [TuDiWeiZhi]="&TuDiWeiZhi&" AND [siteid]="&siteid)
        End Select
    
    End Sub
    
    Sub ZhongZhi(Farm_ID,ShuCaiID,TuDiWeiZhi,Page)
        '获取种子数据，判断是否存在种子，然后生成种植链接
        Dim Rs,ShuCaiMingChen
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[ShuCaiMingChen] FROM [Farm_ZhongZhi] WHERE [ShuCaiID]="&ShuCaiID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        Dim ShiFouCunZai
        
        If Rs.BOF OR Rs.EOF Then
        
            ShiFouCunZai=false
        
        Else
        
            ShiFouCunZai=true
            ShuCaiMingChen=Rs("ShuCaiMingChen")
        
        End If
        Rs.Close()
        
        If ShiFouCunZai Then
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhongZhi.asp?CPage="&Page&"&ID="&Farm_ID&"&scid="&ShuCaiID&"&tdwz="&TuDiWeiZhi,sid))&""">种植["&Server.HTMLEncode(ShuCaiMingChen)&"]</a>")
        
        End If
    
    End Sub
    
    Call Page_Load()
 %>