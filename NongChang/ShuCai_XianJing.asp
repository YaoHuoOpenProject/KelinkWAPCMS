<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%





    Sub Page_Load()
    
        Page_Start()
        Dim ID,TuDiWeiZhi,XianJingID,CPage
        ID=CLng(Request.QueryString("ID"))
        TuDiWeiZhi=CLng(Request.QueryString("tdwz"))
        XianJingID=CLng(Request.QueryString("xjid"))
        CPage=CLng(Request.QueryString("CPage"))
        
        Dim XianJingJiLv,ShuLiang
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [XianJingJiLv],[ShuLiang] FROM [Farm_WuPing_XianJing] WHERE [ID]="&XianJingID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF Then
            Rs.Close()
            CuoWu("陷阱不存在")
        Else
            XianJingJiLv=CLng(Rs("XianJingJiLv"))
            ShuLiang=CLng(Rs("ShuLiang"))
        End If
        Rs.Close()
        
        If ShuLiang=1 Then
            Conn.Execute("DELETE FROM [Farm_WuPing_XianJing] WHERE [ID]="&XianJingID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
        Else
            Conn.Execute("UPDATE [Farm_WuPing_XianJing] SET [ShuLiang]=[ShuLiang]-1 WHERE [ID]="&XianJingID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
        End If
        
        Conn.Execute("UPDATE [Farm_CaiDi] SET [XianJingJiLv]="&XianJingJiLv&" WHERE [TuDiWeiZhi]="&TuDiWeiZhi&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid)
    
        Call FaSongXiaoXi(0,FarmID,"您在菜地"&TuDiWeiZhi&"设置了陷阱")
        Call GengXinZhuangTai("在菜地"&TuDiWeiZhi&"设置了陷阱")
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"Game.asp?page="&CPage&"&Act=XianJing&ID="&ID&"&xjid="&XianJingID,sid))
    
        Page_End()
    End Sub
    Call Page_Load()








 %>