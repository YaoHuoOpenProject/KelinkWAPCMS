<!--#include file="Config.asp"-->
<%
    Dim ShuCaiTuPian
    ShuCaiTuPian=Request.QueryString("img")
    //Response.Write(Server.URLEncode("杨梅"))
    
    Response.ContentType="image/gif"
    
    Conn_Open()
    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ShuCaiTuPian] FROM [Farm_ShuCai] WHERE [ShuCaiMingChen]='"&CheckSql(ShuCaiTuPian)&"'",Conn,1,1
    
    Dim TuPianMingChen
    If Rs.BOF AND Rs.EOF Then
        TuPianMingChen=""
    Else
        TuPianMingChen=Rs("ShuCaiTuPian")
    End If
    Rs.Close()
    Conn_Close()
    
    
    
    Server.Execute("Images/"+TuPianMingChen+".gif")
 %>