<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="Config_GB.asp"-->
<%



    
Sub YanZhengDenLu()



    



End Sub

    Sub Page_Load()
    
    
        YanZhengDenLu()
        
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        
        Conn.Execute("DELETE FROM [ZhiDao_XiaoFenLei] WHERE [ID]="&ID& " AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_WenTi] WHERE [SuoShuXiaoFenLei]="&ID& " AND [siteid]="&siteid)
        Conn.Execute("DELETE FROM [ZhiDao_HuiDa] WHERE [SuoShuXiaoFenLei]="&ID& " AND [siteid]="&siteid)
    
    
        Response.Redirect("Web_XiaoFenLei.asp?ID="&CLng(Request.QueryString("fid"))&"&page="&CLng(Request.QueryString("page")))
    
    End Sub
    Call Page_Load()







 %>