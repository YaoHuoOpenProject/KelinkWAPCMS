<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        YanZhengHuiYuan()
        Dim Rs,ID
        ID=CLng(Request.QueryString("ID"))
        Call WML_Head("选择分类","left")
        Response.Write("请选择下级分类:<br/>")
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[FenLeiMingChen],[WenTiShu] FROM [ZhiDao_XiaoFenLei] WHERE [SuoShuFenLei]="&ID&" AND [siteid]="&siteid&" ORDER BY [ID]",Conn,1,1
        
        For i=1 To Rs.RecordCount
        
            If Rs.EOF Then Exit For
        
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen3.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("FenLeiMingChen"))&"("&Rs("WenTiShu")&")</a><br/>")
        
        
            Rs.MoveNext()
        Next
        
        Rs.Close()
        
        Response.Write("----------<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen.asp"))&""">返回选择分类</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回首页</a>")
        
    
        Call WML_End()
    End Sub
    Call Page_Load()







 %>