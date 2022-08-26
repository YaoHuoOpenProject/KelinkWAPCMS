<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%





    Sub Page_Load()
    
        Page_Start()
    
        Dim rurl
        rurl=Request.QueryString("rurl")
        
        Dim ID
        ID=CLng(Request.QueryString("ID"))
    
        Dim HuaFeiDanJia,TiGaoSuDu,HuaFeiMingChen
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [HuaFeiDanJia],[TiGaoSuDu],[HuaFeiMingChen],[GouMaiDenJi] FROM [Farm_HuaFei] WHERE [ID]="&ID,Conn,1,1
    
        If Rs.EOF AND Rs.BOF Then
            Response.Write("化肥不存在")
        Else
            HuaFeiDanJia=CLng(Rs("HuaFeiDanJia"))
            TiGaoSuDu=CLng(Rs("TiGaoSuDu"))
            HuaFeiMingChen=Rs("HuaFeiMingChen")
            GouMaiDenJi=CLng(Rs("GouMaiDenJi"))
        End If
        Rs.Close()
        
        If CLng(JinBi)<HuaFeiDanJia Then
            CuoWu("您的金币不足")
        End If
        
        If CLng(DenJi)<GouMaiDenJi Then
            CuoWu("您的等级不够")
        End If
        
        Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]-"&HuaFeiDanJia&" WHERE [ID]="&FarmID)
    
        Rs.Open "SELECT [ID] FROM [Farm_WuPing_HuaFei] WHERE [HuaFeiID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiHuaFei
        If Rs.EOF AND Rs.BOF Then
            ShiFouCunZaiHuaFei=false
        Else
            ShiFouCunZaiHuaFei=true
        End If
        Rs.Close()
        
        If ShiFouCunZaiHuaFei Then
            Conn.Execute("UPDATE [Farm_WuPing_HuaFei] SET [ShuLiang]=[ShuLiang]+1 WHERE [HuaFeiID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
        Else
            Conn.Execute("INSERT INTO [Farm_WuPing_HuaFei]([ID],[HuaFeiID],[HuaFeiMingChen],[TiGaoSuDu],[ShuLiang],[SuoShuNongChang],[siteid])"_
                &"VALUES("&ZuiGaoID("Farm_WuPing_HuaFei")&","&ID&",N'"&CheckSql(HuaFeiMingChen)&"',"&TiGaoSuDu&",1,"&FarmID&","&siteid&")")
        End If
        
        Call GengXinZhuangTai("购买了化肥["&HuaFeiMingChen&"]")
        
        Call FaSongXiaoXi(0,FarmID,"您购买了["&HuaFeiMingChen&"]，花费了"&HuaFeiDanJia&"金币")
        
        Call WML_Head("购买物品","left")
        Response.Write("购买物品成功<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_HuaFei.asp",sid))&""">我的物品</a>.<a href="""&Server.HTMLEncode(Request.QueryString("rurl"))&""">返回</a>")
        Call WML_End()
        Page_End()
    
    End Sub
    Call Page_Load()






 %>