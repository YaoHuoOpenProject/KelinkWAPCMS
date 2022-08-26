<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%


Sub YanZhengDenLu()



    



End Sub




    Sub Page_Load()
        YanZhengDenLu()
    
        Dim ID,rurl
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
    
    	Dim Sql
	Sql="UPDATE [ZhiDao_WenTi] SET [ShiFouTuiJian]="
	If Request.QueryString("Act")="SC" Then
		Sql=Sql&"1"
	Else
		Sql=Sql&"0"
	End If
	Sql=Sql&" WHERE [ID]="&ID&" AND [siteid]="&siteid

	Conn.Execute(Sql)
        
        Response.Redirect(rurl)
    
    
    
    End Sub
    Call Page_Load()









 %>