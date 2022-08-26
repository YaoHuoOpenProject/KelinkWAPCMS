<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
    
        Page_Start()
    
        Dim rurl
        rurl=Request.QueryString("rurl")
        
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        
        Dim XianJingMingChen,XianJingJiLv,XianJingDanJia,GouMaiDenJi
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT * FROM [Farm_XianJing] WHERE [ID]="&ID,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            Rs.Close()
            CuoWu("陷阱不存在")
        Else
            XianJingMingChen=Rs("XianJingMingChen")
            XianJingJiLv=CLng(Rs("XianJingJiLv"))
            XianJingDanJia=CLng(Rs("XianJingDanJia"))
            GouMaiDenJi=CLng(Rs("GouMaiDenJi"))
        End If
        Rs.Close()
    
        If CLng(JinBi)<XianJingDanJia Then
            CuoWu("您的金币不足")
        End If
        
        If CLng(DenJi)<GouMaiDenJi Then
            CuoWu("您的等级不够")
        End If
        
        Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]-"&XianJingDanJia&" WHERE [ID]="&FarmID)
        
        Rs.Open "SELECT [ID] FROM [Farm_WuPing_XianJing] WHERE [XianJingID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZaiXianJing
        If Rs.EOF AND Rs.BOF Then
            ShiFouCunZaiXianJing=false
        Else
            ShiFouCunZaiXianJing=true
        End If
        Rs.Close()

        
        If ShiFouCunZaiXianJing Then
            Conn.Execute("UPDATE [Farm_WuPing_XianJing] SET [ShuLiang]=[ShuLiang]+1 WHERE [XianJingID]="&ID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
        Else
            Conn.Execute("INSERT INTO [Farm_WuPing_XianJing]([ID],[XianJingID],[XianJingMingChen],[XianJingJiLv],[ShuLiang],[SuoShuNongChang],[siteid])"_
                &"VALUES("&ZuiGaoID("Farm_WuPing_XianJing")&","&ID&",N'"&CheckSql(XianJingMingChen)&"',"&XianJingJiLv&",1,"&FarmID&","&siteid&")")
        End If
        
        
            
        Call FaSongXiaoXi(0,FarmID,"您购买了["&XianJingMingChen&"]，花费了"&XianJingDanJia&"金币")
        Call GengXinZhuangTai("购买了["&XianJingMingChen&"]")
        
        Call WML_Head("购买物品","left")
        Response.Write("购买物品成功<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_XianJing.asp",sid))&""">我的物品</a>.<a href="""&Server.HTMLEncode(Request.QueryString("rurl"))&""">返回</a>")
        Call WML_End()
    
        Page_End()
    
    End Sub
    Call Page_Load()




 %>