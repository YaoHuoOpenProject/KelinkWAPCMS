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
    
    Dim IDS
    IDS=Split(Request.QueryString("ID"),",")
    
    For i=0 To UBound(IDS)
    
        ShanChu(IDS(i))
    
    Next
    
    
    Conn_Close()
     
     response.redirect Request.QueryString("rurl")

End Sub


Sub ShanChu(ID)

    Conn.Execute("DELETE FROM [Farm_CaiDi] WHERE [ID]="&Clng(ID)&" AND [siteid]="&SiteID_)

End Sub

Call Page_Load()



 %>