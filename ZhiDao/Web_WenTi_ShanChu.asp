<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%



Sub YanZhengDenLu()



    



End Sub


    Sub Page_Load()
        YanZhengDenLu()
    
        Dim ID,rurl
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
        
        Conn.Execute("DELETE FROM [ZhiDao_WenTi] WHERE [ID]="&ID&" AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_HuiDa] WHERE [HuiDaWenTiID]="&ID&" AND [siteid]="&siteid)
    
        Response.Redirect(rurl)
    
    
    End Sub
    Call Page_Load()





 %>