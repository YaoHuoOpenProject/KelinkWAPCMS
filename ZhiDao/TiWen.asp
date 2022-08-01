<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        YanZhengHuiYuan()
        Call WML_Head("我要提问","left")
    
        Response.Write("请选择您的问题分类:<br/>")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[FenLeiMingChen] FROM [ZhiDao_FenLei] WHERE [siteid]="&siteid&" ORDER BY [ID]",Conn,1,1
    
        For i=1 To Rs.RecordCount
        
            If Rs.EOF Then Exit For
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen2.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("FenLeiMingChen"))&"</a><br/>")
        
            Rs.MoveNext()
        Next
        
        Response.Write("----------<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
    
        Call WML_End()
        Conn.Close()
    
    End Sub
    
    
    Call Page_Load()






 %>