<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%


Sub YanZhengDenLu()



    



End Sub


    Sub Page_Load()
        
        YanZhengDenLu()
        
    
        Dim NeiRong
        NeiRong=split(ReadTxtFile(Server.MapPath("FenLei.sql")),Chr(10)&"GO"&Chr(13))
        Dim ZGFLID
        ZGFLID=ZuiGaoID("ZhiDao_FenLei")
        For i=0 To UBound(NeiRong)
        
        
            Conn.Execute(Replace(Replace(NeiRong(i),"$siteid$",siteid),"$ID$",ZuiGaoID("ZhiDao_FenLei")))
        
        
        Next
        
        NeiRong=split(ReadTxtFile(Server.MapPath("XiaoFenLei.sql")),Chr(10)&"GO"&Chr(13))
        
        For i=0 To UBound(NeiRong)
        
        
            Dim SQL
            SQL=Replace(Replace(NeiRong(i),"$siteid$",siteid),"$ID$",ZuiGaoID("ZhiDao_XiaoFenLei"))
            For i1=1 To 14
                SQL=Replace(SQL,"$SuoShuFenLei"&(i1)&"$",i1+ZGFLID-1)
            Next
            Conn.Execute(SQL)
        
        
        Next
        
        Response.Redirect("Web_FenLei.asp")
    
    
    End Sub
    Call Page_Load()





 %>