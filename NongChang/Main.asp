<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
        
        Call WML_Head("开心农场","left")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        'Rs.Open "SELECT * FROM [Farm_ShuCai] ORDER BY [ID]",Conn,1,1
        
        'Do While(Not Rs.EOF)
        
        '    Response.Write("INSERT INTO [Farm_ShuCai]([ID],[ShuCaiMingChen],[SuoYing],[ZhongZhiJiDu],[ChengShuShiJian],[ZaiCiChengShu],[YuJiChanLiang],[ShuCaiShouJia],[ShouHuoJingYan],[ZhongZhiDenJi],[siteid])"_
        '        &"VALUES({$id$},N'"&Rs("ShuCaiMingChen")&"',"&Rs("SuoYing")&","&Rs("ZhongZhiJiDu")&","&Rs("ChengShuShiJian")&","&Rs("ZaiCiChengShu")&","&Rs("YuJiChanLiang")&","&Rs("ShuCaiShouJia")&","&Rs("ShouHuoJingYan")&","&Rs("ZhongZhiJiDu")&",{$siteid$})"&Chr(13)&Chr(10)&"GO"&Chr(13)&Chr(10))
        
        
        
        
        '    Rs.MoveNext()
        'Loop
        'Rs.Close()
        
        'Rs.Open "SELECT * FROM [Farm_HuaFei] ORDER BY [ID]",Conn,1,1
        
        'Do While(Not Rs.EOF)
        
        '    Response.Write("INSERT INTO [Farm_HuaFei]([ID],[HuaFeiMingChen],[HuaFeiDanJia],[TiGaoSuDu],[GouMaiDenJi])"_
        '        &"VALUES("&Rs("ID")&",'"&Rs("HuaFeiMingChen")&"',"&Rs("HuaFeiDanJia")&","&Rs("TiGaoSuDu")&","&Rs("GouMaiDenJi")&")"&Chr(13)&Chr(10)&"GO"&Chr(13)&Chr(10))
            
        '    Rs.MoveNext()
        
        'Loop
        'Rs.Close()
        
        'Rs.Open "SELECT * FROM [Farm_XianJing] ORDER BY [ID]",Conn,1,1
        
        'Do While(Not Rs.EOF)
        
        '    Response.Write("INSERT INTO [Farm_XianJing]([ID],[XianJingMingChen],[XianJingJiLv],[XianJingDanJia],[GouMaiDenJi])"_
        '        &"VALUES("&Rs("ID")&",N'"&Rs("XianJingMingChen")&"',"&Rs("XianJingJiLv")&","&Rs("XianJingDanJia")&","&Rs("GouMaiDenJi")&")"&Chr(13)&Chr(10)&"GO"&Chr(13)&Chr(10))
        
        '    Rs.MoveNext()
        'Loop
        'Rs.Close()
        
        Response.Write("欢迎您来到开心农场<br/>"_
            &"<img src=""Images/logo.jpg"" alt=""..""/><br/>"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">快速进入农场</a>|"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_BangZhu.asp",sid))&""">新手帮助</a><br/>"_
            &"----------<br/>"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1",sid))&""">等级排名</a>|"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp",sid))&""">财富排名</a><br/>"_
            &"农场名称:"&Server.HTMLEncode(MingChen)&"<a href="""&Server.HtmlEncode(ChuLiDiZhi("NongChang_XiuGai.asp",sid))&""">修改</a><br/>"_
            &"农场等级:"&DenJi&"级<br/>"_
            &"农场金币:"&JinBi&"个<br/>"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ZaiXian.asp",sid))&""">看谁在线</a> "_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("JinBi_DuiHuan.asp",sid))&""">金币兑换</a><br/>"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp",sid))&""">我的仓库</a> "_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeNuLv.asp",sid))&""">我的奴隶</a><br/>"_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp",sid))&""">我的邻居</a> "_
            &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp",sid))&""">我的商店</a><br/>"_
            &"----------<br/>")
            
        Rs.Open "SELECT [MingChen],[ZhuangTai],[GengXinShiJian] FROM [Farm] WHERE [siteid]="&siteid&" AND [ZuiHouShuaXinShiJian]>'"&DateAdd("n",-30,now())&"' ORDER BY [GengXinShiJian] DESC",Conn,1,1
        
        For i=1 To 5
        
            If Rs.EOF Then Exit For
            
            Response.Write(Server.HTMLEncode(Rs("MingChen"))&"["&JiSuanShiJian2(CLng(DateDiff("s",CDate(Rs("GengXinShiJian")),now())))&"前]"&Rs("ZhuangTai")&"<br/>")
            
            Rs.MoveNext()
        
        Next
        Rs.Close()
            
        
        Rs.Open "SELECT [managerlvl] FROM [user] WHERE [userid]="&userid,Conn,1,1
        
        Dim ShiFouCunZai
        If Rs.BOF AND Rs.EOF Then
            CuoWu("错误")
        Else
            If Rs("managerlvl")="00" OR Rs("managerlvl")="01" Then
                Response.Write("----------<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_GuanLi.asp",sid))&""">==农场站长后台配置==</a><br/>")
            End If
        End If
        Rs.Close()
        
        Response.Write("----------<br/>")
        Response.Write("<a href=""/wapindex.aspx?siteid="&siteid&"&amp;sid="&SessionID&""">返回首页</a>")
        
        WML_End()
        
        Page_End()
    End Sub
    
    Call Page_Load()

%>