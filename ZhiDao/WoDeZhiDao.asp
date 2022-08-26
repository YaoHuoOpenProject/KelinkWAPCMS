<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        YanZhengHuiYuan()
        Call WML_Head("我的知道","left")
        
        
        Dim WenTiShu,HuiDaShu,YiCaiNaShu,money
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [money] FROM [user] WHERE [userid]="&userid,Conn,1,1
        money=CLng(Rs("money"))
        Rs.Close()
        
        Rs.Open "SELECT [ID] FROM [ZhiDao_WenTi] WHERE [TiWenZheID]="&userid&" AND [siteid]="&siteid,Conn,1,1
        
        WenTiShu=Rs.RecordCount
        
        Rs.Close()
        
        Rs.Open "SELECT [ID] FROM [ZhiDao_HuiDa] WHERE [HuiDaZheID]="&userid&" AND [siteid]="&siteid,Conn,1,1
        
        HuiDaShu=Rs.RecordCount
        
        Rs.Close()
        
        Rs.Open "SELECT [ID] FROM [ZhiDao_HuiDa] WHERE [ShiFouYiCaiNa]=1 AND [siteid]="&siteid,Conn,1,1
        
        YiCaiNaShu=Rs.RecordCount
        
        Rs.Close()
        
        Response.Write("金币数:"&money&"<br/>")
        Response.Write("采纳率:")
        If HuiDaShu=0 Then
            Response.Write("0")
        Else
            Response.Write(CLng((CDbl(YiCaiNaShu)/CDbl(HuiDaShu))*100))
        End If
        Response.Write("%<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeWenTi.asp"))&""">我的问题("&WenTiShu&")</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeHuiDa.asp"))&""">我的回答("&HuiDaShu&")</a><br/>")
        Response.Write("<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
        Call WML_End()
        Conn.Close()
    End Sub
    Call Page_Load()







 %>