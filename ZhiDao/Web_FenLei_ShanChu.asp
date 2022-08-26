<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%





    
Sub YanZhengDenLu()



    



End Sub


    Sub Page_Load()
    
    
        Dim ID,rurl
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
    
    
        Conn.Execute("DELETE FROM [ZhiDao_FenLei] WHERE [ID]="&ID & " AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_XiaoFenLei] WHERE [SuoShuFenLei]="&ID& " AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_WenTi] WHERE [SuoShuFenLei]="&ID& " AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_HuiDa] WHERE [SuoShuFenLei]="&ID& " AND [siteid]="&siteid)
    
        Response.Redirect("Web_FenLei.asp")
    
    End Sub
    Call Page_Load()




 %>