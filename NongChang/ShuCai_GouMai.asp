<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
    
    
        Page_Start()
        
        Dim RURL
        RURL=Request.QueryString("rurl")
        
        
        Dim ShuLiang,ID
        ShuLiang=CLng(Request.Form("ShuLiang"))
        ID=CLng(Request.QueryString("ID"))

	If ShuLiang<1 Then
		CuoWu("请输入蔬菜数量")
	End If
        
        Dim SC_ShuCaiMingChen,SC_ShuCaiShouJia,SC_ZhongZhiDenJi,SC_ZhongZhiJiDu,SC_SuoYing
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiMingChen],[SuoYing],[ShuCaiShouJia],[ZhongZhiDenJi],[ZhongZhiJiDu] FROM [Farm_ShuCai] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            CuoWu("蔬菜不存在")
        Else
        
            SC_ShuCaiMingChen=Rs("ShuCaiMingChen")
            SC_ShuCaiShouJia=CLng(Rs("ShuCaiShouJia"))
            SC_ZhongZhiDenJi=CLng(Rs("ZhongZhiDenJi"))
            SC_ZhongZhiJiDu=CLng(Rs("ZhongZhiJiDu"))
            SC_SuoYing=CLng(Rs("SuoYing"))
            Rs.Close()
        End If
        
        '扣除金币
        Dim KouChuJinBi
        KouChuJinBi=CLng(SC_ShuCaiShouJia)*5*CLng(SC_ZhongZhiJiDu)*ShuLiang
        
        If CLng(JinBi)<KouChuJinBi Then
            CuoWu("您的金币不足")
        End If
        
        If CLng(DenJi)<SC_ZhongZhiDenJi Then
            CuoWu("您的等级不够")
        End If
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_ZhongZhi")
        
        Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]-"&KouChuJinBi&" WHERE [ID]="&FarmID&" AND [siteid]="&siteid)
        
        
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm_ZhongZhi] WHERE [ShuCaiID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiZhongZhi
        If Rs.BOF AND Rs.EOF Then
            ShiFouCunZaiZhongZhi=false
        Else
            ShiFouCunZaiZhongZhi=true
        End If
        Rs.Close()
        
        If ShiFouCunZaiZhongZhi Then
            Conn.Execute("UPDATE [Farm_ZhongZhi] SET [ZhongZhiShuLiang]=[ZhongZhiShuLiang]+"&ShuLiang&" WHERE [ShuCaiID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
        Else
            Conn.Execute("INSERT INTO [Farm_ZhongZhi]([ID],[ShuCaiID],[ShuCaiMingChen],[ZhongZhiShuLiang],[SuoShuNongChang],[siteid],[SuoYing])"_
                &"VALUES(N'"&ZuiGaoID("Farm_ZhongZhi")&"','"&ID&"',N'"&CheckSql(SC_ShuCaiMingChen)&"','"&ShuLiang&"','"&FarmID&"',"&siteid&","&SC_SuoYing&")")
        End If
        
        Call FaSongXiaoXi(0,FarmID,"您购买了"&ShuLiang&"个["&SC_ShuCaiMingChen&"]种子，花费["&KouChuJinBi&"个金币]。")
    
        Call WML_Head("购买物品","left")
        
        Call GengXinZhuangTai("购买了"&ShuLiang&"个["&SC_ShuCaiMingChen&"]种子")
        
        Response.Write("购买物品成功<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin.asp",sid))&""">我的物品</a>.<a href="""&Server.HTMLEncode(RURL)&""">返回</a>")
        
        
        Call WML_End()
    
        Page_End()
    
    End Sub
    
    Call Page_Load()
 %>