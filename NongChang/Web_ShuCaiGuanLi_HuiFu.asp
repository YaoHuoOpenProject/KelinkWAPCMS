<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%



Response.ContentType="text/html"

Dim SiteID_

Sub Page_Load()


    Conn_Open()
    SiteID_=CLng(siteid)
    Call YanZhengDenLu()
    
    Call HuiFu()
    
    Response.Redirect("Web_ShuCaiGuanLi.asp")
    
    
    Conn_Close()

End Sub

Sub HuiFu()

        'Conn.Execute("DELETE FROM [Farm_ShuCai] WHERE [siteid]="&SiteID_)
        
        Dim NeiRong
        NeiRong=Split(ReadTxtFile(Server.MapPath("ShuCai.sql")),Chr(10)&"GO"&Chr(13))
        
        For i=0 To UBound(NeiRong)
        
            Conn.Execute(Replace(Replace(NeiRong(i),"{$siteid$}",SiteID_),"{$id$}",ZuiGaoID("Farm_ShuCai")))
        
        Next

End Sub



Sub YanZhengDenLu()



    



End Sub





Call Page_Load()





 %>