<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%




Response.ContentType="text/html"

Dim SiteID_


Sub YanZhengDenLu()



    



End Sub

Sub Page_Load()
    YanZhengDenLu()
    
    
    Conn_Open()
    
    SiteID_=CLng(siteid)
    Dim ID
    ID=CLng(Request.QueryString("ID"))
    
    Dim Rs,SuoYing
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [SuoYing] FROM [Farm_ShuCai] WHERE [ID]="&ID&" AND [siteid]="&SiteID_,Conn,1,1
    
    If Rs.EOF AND Rs.BOF Then
        Rs.Close()
        Response.Redirect("Web_ShuCaiGuanLi.asp")
    Else
        SuoYing=Rs("SuoYing")
        Rs.Close()
        
        If SuoYing>26 Then
            deleteAFile(Server.MapPath("Images/s"&SuoYing&".jpg"))
        End If
        Conn.Execute("DELETE FROM [Farm_ShuCai] WHERE [ID]="&ID&" AND [siteid]="&SiteID_)
        Response.Redirect("Web_ShuCaiGuanLi.asp")
    End If
    
    
    Conn_Close()



End Sub

Call Page_Load()





 %>